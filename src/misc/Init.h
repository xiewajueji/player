//
// Created by CrabExcavator on 2020/11/1.
// Copyright (c) 2020 Studio F.L.A. All rights reserved.
//

#ifndef PLAYER_INIT_H
#define PLAYER_INIT_H

#include <glog/logging.h>
#include <gflags/gflags.h>

#include "common/GlobalInstanceManager.h"

namespace misc {

class Init {
 public:
  Init() = delete;

  Init(int argc, char *argv[]) {
    google::InitGoogleLogging(argv[0]);
    FLAGS_logtostderr = true;
    gflags::ParseCommandLineFlags(&argc, &argv, true);
    common::GlobalInstanceManager::Init();
  }

  ~Init() {
    google::ShutdownGoogleLogging();
    common::GlobalInstanceManager::Destroy();
  }
};

}

#endif //PLAYER_INIT_H
