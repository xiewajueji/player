//
// Created by CrabExcavator on 2020/11/1.
// Copyright (c) 2020 Studio F.L.A. All rights reserved.
//

#ifndef PLAYER_CHAIN_H
#define PLAYER_CHAIN_H

#include <deque>
#include <memory>

#include "ChainNode.h"

namespace misc {

    /**
     * @brief templated responsibility chain
     * @todo add error code in filter
     * @tparam T type to filter
     */
    template <typename T>
    class Chain: public std::enable_shared_from_this<Chain<T>> {
    public:
        /**
         * @brief default
         */
        Chain(): _queue() {}

        /**
         * @brief default
         * @param rhs
         */
        Chain(const Chain<T>& rhs) = default;

        /**
         * @brief default
         * @param rhs
         */
        Chain(Chain<T>&& rhs) noexcept = default;

        /**
         * @brief default
         * @param rhs
         * @return
         */
        Chain& operator = (const Chain<T>& rhs) = default;

        /**
         * @brief default
         * @param rhs
         * @return
         */
        Chain& operator = (Chain<T>&& rhs) noexcept = default;

        /**
         * @brief add chain node last
         * @param [in] node
         * @return pointer to *this
         */
        chain_sptr<T> addLast(chain_node_sptr<T> node) {
            this->_queue.emplace_back(std::move(node));
            return this->shared_from_this();
        }

        /**
         * @brief add chain node first
         * @param [in] node
         * @return pointer to *this
         */
        chain_sptr<T> addFirst(chain_node_sptr<T> node) {
            this->_queue.emplace_front(std::move(node));
            return this->shared_from_this();
        }

        /**
         * @brief filter list of typename T with list of chain node
         * @param [in] in list of typename T
         * @return
         */
        vector_sptr<T> filter(vector_sptr<T> in) {
            auto param = in;
            for (auto& node : this->_queue) {
                param = node->filter(param);
            }
            return param;
        }

        /**
         * @brief flush list of typename T in list of chain node
         * @return list of typename T
         */
        vector_sptr<T> flush() {
            vector_sptr<T> param{};
            for (auto& node : this->_queue) {
                param = node->flush(param);
            }
            return param;
        }

        /**
         * @brief close chain
         */
        void close() {
            for (auto& node : this->_queue) {
                node->close();
            }
        }

    private:
        /**
         * @brief list of chain node
         */
        std::deque<chain_node_sptr<T>> _queue;
    };

}

#endif //PLAYER_CHAIN_H
