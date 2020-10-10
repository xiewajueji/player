//
// Created by weihan on 2020/10/9.
//

#ifndef PLAYER_PLAYLIST_H
#define PLAYER_PLAYLIST_H

#include <list>
#include <set>
#include <memory>

#include "PlayerContext.h"
#include "PlayEntry.h"

namespace core {

    class PlayList;
    using play_list_sptr = std::shared_ptr<PlayList>;

    class PlayList: public std::enable_shared_from_this<PlayList> {
    public:
        PlayList() = default;
        PlayList(const PlayList& rhs) = default;
        PlayList(PlayList&& rhs) noexcept = default;
        PlayList& operator = (const PlayList& rhs) = default;
        PlayList& operator = (PlayList&& rhs) noexcept = default;
        ~PlayList() = default;
        play_list_sptr addLast(play_entry_sptr entry);
        play_list_sptr addFirst(play_entry_sptr entry);
        play_list_sptr addIndex(int index, play_entry_sptr entry); // index start from 0
        play_list_sptr removeLast();
        play_list_sptr removeFirst();
        play_list_sptr removeIndex(int index);
        play_list_sptr clear();
        play_entry_sptr current();
        void next(); // todo support random & loop
        size_t size();

    private:
        inline void _check_first_entry() {
            if (this->_entries.size() == 1) {
                this->_current = this->_entries.begin();
            }
        }

        inline void _check_empty_entry() {
            if (this->_entries.empty()) {
                this->_current = this->_entries.end();
            }
        }

        inline void _check_is_current(std::list<play_entry_sptr>::iterator entry) {
            if (this->_current == entry) {
                this->_current = this->_entries.end();
            }
        }

    private:
        std::set<PlayEntry> _set;
        std::list<play_entry_sptr> _entries;
        std::list<play_entry_sptr>::iterator _current;
    };
}

#endif //PLAYER_PLAYLIST_H