//
// Created by CrabExcavator on 2020/11/8.
// Copyright (c) 2020 Studio F.L.A. All rights reserved.
//

#include <glog/logging.h>

#include "FFDemuxer.h"
#include "player/PlayEntry.h"

namespace demux::demuxer {

static void avformat_close_input_wrapper(AVFormatContext *ctx) {
  avformat_close_input(&ctx);
}

static void av_packet_free_wrapper(AVPacket *pkt) {
  av_packet_free(&pkt);
}

common::Error FFDemuxer::Open(const player::play_entry_sptr &entry, misc::vector_sptr<stream::stream_sptr> &streams) {
  /** @attention all [out] pointer parm should be nullptr */
  assert(streams == nullptr);
  streams = std::make_shared<std::vector<stream::stream_sptr>>();
  streams_ = std::make_shared<std::vector<stream::ffstream_sptr>>();
  av_format_ctx_.reset(avformat_alloc_context(), avformat_close_input_wrapper);
  av_packet_.reset(av_packet_alloc(), av_packet_free_wrapper);
  if (av_format_ctx_ == nullptr) {
    LOG(ERROR) << "create av format context fail";
    return common::Error::demuxerInitFail;
  } else if (av_packet_ == nullptr) {
    LOG(ERROR) << "create av packet fail";
    return common::Error::demuxerInitFail;
  }
  auto raw_av_format_ctx = av_format_ctx_.get();
  if (avformat_open_input(&raw_av_format_ctx, entry->uri.c_str(), nullptr, nullptr) < 0) {
    LOG(ERROR) << "open av format context fail";
    return common::Error::demuxerInitFail;
  } else if (avformat_find_stream_info(raw_av_format_ctx, nullptr) < 0) {
    LOG(ERROR) << "can't find all stream info";
    return common::Error::demuxerInitFail;
  }
  for (int stream_index = 0; stream_index < av_format_ctx_->nb_streams; stream_index++) {
    auto stream = std::make_shared<stream::FFStream>();
    stream->Init(av_format_ctx_->streams[stream_index]);
    streams_->emplace_back(stream);
    streams->emplace_back(stream);
  }
  return common::Error::SUCCESS;
}

common::Error FFDemuxer::Epoch() {
  if (av_read_frame(av_format_ctx_.get(), av_packet_.get()) < 0) {
    return common::Error::END;
  }
  streams_->at(av_packet_->stream_index)->Feed(av_packet_);
  av_packet_unref(av_packet_.get());
  return common::Error::SUCCESS;
}

common::Error FFDemuxer::Close() {
  for (int stream_index = 0; stream_index < streams_->size(); stream_index++) {
    av_packet_unref(av_packet_.get());
    av_packet_.get()->stream_index = stream_index;
    auto stream = streams_->at(stream_index);
    stream->Feed(av_packet_);
    stream->Close();
  }
  return common::Error::SUCCESS;
}

}
