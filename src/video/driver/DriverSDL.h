//
// Created by weihan on 2020/10/7.
//

#ifndef PLAYER_DRIVERSDL_H
#define PLAYER_DRIVERSDL_H

#include <memory>
#include <functional>
#include <SDL2/SDL.h>

#include "VideoDriver.h"
#include "misc/typeptr.h"

namespace video::driver {

    class DriverSDL: public VideoDriver {
    public:
        DriverSDL() = default;
        ~DriverSDL() override;
        void init(vo_sptr vo) override;
        void drawImage(vo_sptr vo) override;
        void waitEvents(vo_sptr vo) override;
        // reconfig objects:
        // 1. texture
        void reConfig(vo_sptr vo) override;
    private:
        using window_uptr = std::unique_ptr<SDL_Window, std::function<void(SDL_Window*)>>;
        using renderer_uptr = std::unique_ptr<SDL_Renderer, std::function<void(SDL_Renderer*)>>;
        using texture_uptr = std::unique_ptr<SDL_Texture, std::function<void(SDL_Texture*)>>;
        window_uptr _window;
        renderer_uptr _renderer;
        texture_uptr _texture;
    };

}

#endif //PLAYER_DRIVERSDL_H
