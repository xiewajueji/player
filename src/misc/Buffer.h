//
// Created by CrabExcavator on 2020/11/1.
// Copyright (c) 2020 Studio F.L.A. All rights reserved.
//

#ifndef PLAYER_BUFFER_H
#define PLAYER_BUFFER_H

#include <algorithm>
#include <glog/logging.h>
#include <mutex>
#include <condition_variable>
#include <chrono>

#include "misc/util.h"
#include "typeptr.h"

namespace misc {

/**
 * @brief a templated data structure to buffer data
 *
 * @tparam T element of Buffer
 * @tparam Size size of Buffer
 */
template<typename T, size_t Size>
class Buffer {
 public:
  /**
   * @brief default
   */
  Buffer() = default;

  /**
   * @brief copy array
   * @param rhs
   */
  Buffer(const Buffer &rhs) {
    array_ = rhs.array_;
  }

  /**
   * @brief move array
   * @param rhs
   */
  Buffer(Buffer &&rhs) noexcept {
    array_ = std::move(rhs.array_);
  }

  /**
   * @brief copy array
   * @param rhs
   * @return
   */
  Buffer &operator=(const Buffer &rhs) {
    array_ = rhs.array_;
  }

  /**
   * @brief move array
   * @param rhs
   * @return
   */
  Buffer &operator=(Buffer &&rhs) noexcept {
    array_ = std::move(rhs.array_);
  }

  /**
   * @brief put ele in array with copy fashion
   * @param [in] src head of src
   * @param [in] beginOfEle begin of ele to copy
   * @param [in] numOfEle number of ele to copy
   */
  template<typename INT1, typename INT2>
  void put(const T *src, INT1 beginOfEle, INT2 numOfEle) {
    std::unique_lock<std::mutex> lock(mutex_);
    cond_.wait(lock, [&](){
      return close_ || PutCond(numOfEle);
    });
    int nxt_tail = tail_ + numOfEle;
    for (INT2 i = 0; i < numOfEle; i++) {
      array_[(tail_ + i) % Size] = src[beginOfEle + i];
    }
    tail_ = nxt_tail % Size;
    buffered_ele_ += numOfEle;
    lock.unlock();
    cond_.notify_one();
  }

  /**
   * @brief put ele in array with copy fashion
   * @tparam oSize the size of src array
   * @param [in] src src array to copy
   * @param [in] beginOfEle begin of ele to copy
   * @param [in] numOfEle number of ele to copy
   */
  template<typename INT1, typename INT2, size_t oSize>
  void put(const std::array<T, oSize> &src, INT1 beginOfEle, INT2 numOfEle) {
    std::unique_lock<std::mutex> lock(mutex_);
    cond_.wait(lock, [&](){
      return close_ || PutCond(numOfEle);
    });
    int nxt_tail = tail_ + numOfEle;
    for (INT2 i = 0; i < numOfEle; i++) {
      array_[(tail_ + i) % Size] = src[(beginOfEle + i) % oSize];
    }
    tail_ = nxt_tail % Size;
    buffered_ele_ += numOfEle;
    lock.unlock();
    cond_.notify_one();
  }

  /**
   * @brief get ele from array to dst
   * @param [out] dst pointer to dst
   * @param [in] beginOfEle begin of ele to put
   * @param [in] numOfEle number of ele to put
   */
  template<typename INT1, typename INT2>
  void get(T *dst, INT1 beginOfEle, INT2 numOfEle) {
    std::unique_lock<std::mutex> lock(mutex_);
    cond_.wait(lock, [&](){
      return close_ || GetCond(numOfEle);
    });
    int nxt_head = head_ + numOfEle;
    for (INT2 i = 0; i < numOfEle; i++) {
      dst[beginOfEle + i] = array_[(head_ + i) % Size];
    }
    head_ = nxt_head % Size;
    buffered_ele_ -= numOfEle;
    lock.unlock();
    cond_.notify_one();
  }

  /**
   * @brief get ele from array to dst
   * @tparam oSize size of dst array
   * @param [out] dst pointer to dst
   * @param [in] beginOfEle begin of ele to put
   * @param [in] numOfEle number of ele to put
   */
  template<typename INT1, typename INT2, size_t oSize>
  void get(std::array<T, oSize> &dst, INT1 beginOfEle, INT2 numOfEle) {
    std::unique_lock<std::mutex> lock(mutex_);
    cond_.wait(lock, [&](){
      return close_ || GetCond(numOfEle);
    });
    int nxt_head = head_ + numOfEle;
    for (INT2 i = 0; i < numOfEle; i++) {
      dst[(beginOfEle + i) % oSize] = array_[(head_ + i) % Size];
    }
    head_ = nxt_head % Size;
    buffered_ele_ -= numOfEle;
    lock.unlock();
    cond_.notify_one();
  }

  /**
   * @brief clear all ele
   */
  void clear() {
    mutex_.lock();
    DEFER([&]() { mutex_.unlock(); });
    close_ = false;
    head_ = 0;
    tail_ = 0;
    buffered_ele_ = 0;
  }

  /**
   * @brief close buffer and release all choke thread
   */
  void close() {
    close_ = true;
    cond_.notify_all();
  }

  /**
   * @brief size of buffer
   * @return size of buffer
   */
  int size() {
    return buffered_ele_;
  }

 private:
  /**
   * @brief internal cond
   * @param numOfEle
   * @return
   */
  inline bool GetCond(int numOfEle) {
    return buffered_ele_ >= numOfEle;
  }

  /**
   * @brief internal cond
   * @param numOfEle
   * @return
   */
  inline bool PutCond(int numOfEle) {
    return numOfEle + buffered_ele_ <= Size;
  }

 private:
  /**
   * @brief is buffer close
   */
  std::atomic<bool> close_ = false;

  /**
   * @brief mutex
   */
  std::mutex mutex_;

  /**
   * @brief cond
   */
  std::condition_variable cond_;

  /**
   * @brief head of ele
   */
  int head_ = 0;

  /**
   * @brief tail of ele
   */
  int tail_ = 0;

  /**
   * @brief size of buffered ele
   */
  int buffered_ele_ = 0;

  /**
   * @brief ele array
   */
  std::array<T, Size> array_;
};

}

#endif //PLAYER_BUFFER_H
