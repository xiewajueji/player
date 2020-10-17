//
// Created by weihan on 2020/10/7.
//

#include <memory>

#include "DriverFactory.h"
#include "DriverSDL.h"

namespace video::driver {

    driver_uptr DriverFactory::create(std::string driver_name) { //todo driver register
        return std::make_unique<DriverSDL>();
    }

}
