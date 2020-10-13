//
// Created by weihan on 2020/10/11.
//

#ifndef PLAYER_DEMUXCONTEXT_H
#define PLAYER_DEMUXCONTEXT_H

#include <memory>
#include <folly/MPMCQueue.h>

#include "Demuxer.h"
#include "core/PlayList.h"
#include "misc/Thread.h"
#include "misc/typeptr.h"

namespace demux {

    class DemuxContext: public std::enable_shared_from_this<DemuxContext> {
    public:
        friend class core::PlayerContext;
        DemuxContext() = default;
        void init(const core::player_ctx_sptr& player_ctx);
        bool loop();

    public:
        std::shared_ptr<folly::MPMCQueue<demux::frame_sptr>> queue;

    private:
        demuxer_sptr _demuxer;
        core::play_list_sptr _play_list;
        bool running = false;
        misc::Thread _thread;
    };

    using demux_ctx_sptr = std::shared_ptr<DemuxContext>;

}

#endif //PLAYER_DEMUXCONTEXT_H
