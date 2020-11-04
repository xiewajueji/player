//
// Created by CrabExcavator on 2020/11/1.
// Copyright (c) 2020 Studio F.L.A. All rights reserved.
//

#ifndef PLAYER_VIDEOOUTPUT_H
#define PLAYER_VIDEOOUTPUT_H

#include <memory>
#include <chrono>
#include <folly/MPMCQueue.h>

#include "image_format.h"
#include "video/driver/VideoDriver.h"
#include "misc/Thread.h"
#include "misc/typeptr.h"
#include "common/error.h"
#include "core/Output.h"

namespace video {

    /**
     * @brief video output
     */
    class VideoOutput: public core::Output, public std::enable_shared_from_this<VideoOutput> {
    public:
        /**
         * @brief default
         */
        VideoOutput();

        /**
         * @brief delete
         * @param rhs
         */
        VideoOutput(const VideoOutput& rhs) = delete;

        /**
         * @brief default
         * @param rhs
         */
        VideoOutput(VideoOutput&& rhs) = default;

        /**
         * @brief delete
         * @param rhs
         * @return
         */
        VideoOutput& operator = (const VideoOutput& rhs) = delete;

        /**
         * @brief delete
         * @param rhs
         * @return
         */
        VideoOutput& operator = (VideoOutput&& rhs) = delete;

        /**
         * @brief default
         */
        ~VideoOutput() = default;

        /**
         * @brief setNumOfStream video output
         * @param [in] player_ctx
         * @return error code
         */
        common::error init(const core::player_ctx_sptr& player_ctx);

        /**
         * @brief get input context
         * @return input context
         */
        input::input_ctx_sptr getInputCtx();

        /**
         * @brief some function in video output must loop in main thread
         * @return error code
         */
        common::error loopInMainThread();

        /**
         * @brief stop video output thread
         * @return error code
         */
        common::error stopRunning();

    public:
        /**
         * @brief image format of video output
         */
        image_format imgfmt = image_format::unknown;

        /**
         * @brief window width
         */
        int window_width = 1920;

        /**
         * @brief window height
         */
        int window_height = 1080;

        /**
         * @brief image pitch
         */
        int img_pitch = 1920;

        /**
         * @brief image height
         */
        int img_height = 1080;

        /**
         * @brief input queue
         */
        std::shared_ptr<folly::MPMCQueue<demux::frame_sptr>> queue;

        /**
         * @brief rendering frame
         */
        demux::frame_sptr frame_rendering = nullptr;

        /**
         * @brief flag to mark force reConfig
         */
        bool need_reConfig = false;

    private:
        /**
         * @brief loop in tick
         * @return running
         */
        bool loop();

    private:
        /**
         * @brief flag to mark running
         */
        bool _running = false;

        /**
         * @brief video driver
         */
        driver::video_driver_uptr _driver = nullptr;

        /**
         * @brief last tick
         */
        std::chrono::steady_clock::time_point _last_tick{};

        /**
         * @brief time base
         */
        std::chrono::steady_clock::duration _time_base{};

        /**
         * @brief last pts
         */
        int64_t _last_pts = 0;

        /**
         * @brief internal frame
         */
        demux::frame_sptr _frame = nullptr;

        /**
         * @brief input context
         */
        input::input_ctx_sptr _input_ctx;

        /**
         * @brief thread
         */
        misc::Thread _thread;
    };

}

#endif //PLAYER_VIDEOOUTPUT_H
