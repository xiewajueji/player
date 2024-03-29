//
// Created by CrabExcavator on 2020/11/9.
// Copyright (c) 2020 Studio F.L.A. All rights reserved.
//

#ifndef PLAYER_ISTREAM_H
#define PLAYER_ISTREAM_H

#include <chrono>

#include "misc/typeptr.h"
#include "common/Error.h"
#include "output/OutputPort.h"

namespace demux::stream {

/**
 * @brief interface of stream
 */
class IStream {
 public:
  /**
   * @brief default
   */
  virtual ~IStream() = default;

  /**
   * @brief read a frame
   * @param [out] frame
   * @return error code
   */
  virtual common::Error Read(frame::frame_sptr &frame) = 0;

  /**
   * @brief Close stream
   * @return error code
   */
  virtual common::Error Close() = 0;

  /**
   * @brief get time base of stream
   * @return time base
   */
  virtual std::chrono::nanoseconds GetTimeBase() = 0;

  /**
   * @brief what type of output should this stream bind to
   * @return output port
   */
  virtual output::OutputPort GetOutputPort() = 0;
};

}

#endif //PLAYER_ISTREAM_H
