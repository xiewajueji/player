//
// Created by CrabExcavator on 2020/11/1.
// Copyright (c) 2020 Studio F.L.A. All rights reserved.
//

#include <memory>
#include <glog/logging.h>

#include "PlayerContext.h"
#include "common/Config.h"
#include "input/InputContext.h"
#include "output/audio/AudioOutput.h"
#include "output/video/VideoOutput.h"
#include "demux/DemuxContext.h"
#include "common/SyncContext.h"

namespace player {

static std::string audio_sample = "sample.mp3";
static std::string video_sample = "small_bunny_1080p_60fps.mp4";

common::Error PlayerContext::init() {
  this->play_list = std::make_shared<PlayList>();
  this->play_list->addLast(std::make_shared<player::PlayEntry>
                               (player::entry_type::file, audio_sample, 0));
  this->sync_ctx = std::make_shared<common::SyncContext>();
  this->input_ctx = std::make_shared<input::InputContext>();
  this->_demux_ctx = std::make_shared<demux::DemuxContext>();
  this->_ao = std::make_shared<audio::AudioOutput>();
  this->_vo = std::make_shared<video::VideoOutput>();

  auto err = common::Error::SUCCESS;
  if ((err = this->input_ctx->init(shared_from_this())) != common::Error::SUCCESS) {
    LOG(ERROR) << "init input context fail";
    return err;
  } else if ((err = this->sync_ctx->init(shared_from_this())) != common::Error::SUCCESS) {
    LOG(ERROR) << "init sync context fail";
    return err;
  } else if ((err = this->_demux_ctx->init(shared_from_this())) != common::Error::SUCCESS) {
    LOG(ERROR) << "init demux context fail";
    return err;
  } else if ((err = this->_ao->Init(shared_from_this())) != common::Error::SUCCESS) {
    LOG(ERROR) << "init ao fail";
    return err;
  } else if ((err = this->_vo->Init(shared_from_this())) != common::Error::SUCCESS) {
    LOG(ERROR) << "init vo fail";
    return err;
  }
  this->input_ctx->receiveEvent(input::event::nextEntry);
  return err;
}

void PlayerContext::run() {
  do {} while (this->loop());
}

bool PlayerContext::loop() {
  auto err = common::Error::SUCCESS;
  if ((err = this->input_ctx->handleEvent()) != common::Error::SUCCESS) {
    if (err != common::Error::exit) {
      LOG(WARNING) << "exit with err code " << static_cast<int64_t>(err);
    }
    return false;
  }

  /// some vo function must be called in main loop
  this->_vo->LoopInMainThread();

  return true;
}

common::Error PlayerContext::stopRunning() {
  this->_demux_ctx->stopRunning();
  this->_ao->StopRunning();
  this->_vo->StopRunning();
  return common::Error::SUCCESS;
}

}