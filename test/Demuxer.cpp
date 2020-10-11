//
// Created by weihan on 2020/10/11.
//

#include <gtest/gtest.h>
#include <memory>

#include "demux/Demuxer.h"
#include "core/PlayList.h"
#include "misc/util.h"

TEST(DEMUXER, INIT) {
    int num_of_entries = 1000;
    auto play_list = std::make_shared<core::PlayList>();
    for (int i = 0 ; i < num_of_entries ; i++) {
        play_list->addLast(std::make_shared<core::PlayEntry>(core::entry_type::file, "small_bunny_1080p_60fps.mp4", 0))
                ->addLast(std::make_shared<core::PlayEntry>(core::entry_type::file, "small_bunny_1080p_60fps.mp4", 0));
    }
    auto demuxer = std::make_shared<demux::Demuxer>(play_list->current());
    demuxer->init();
    for (int i = 0 ; i < 100 ; i++) {
        demuxer->epoch();
    }
}