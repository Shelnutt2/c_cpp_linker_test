/* Hello World cpp example */

#ifndef __hello_world
#define __hello_world

extern "C" {
#include "hello.h"
}

#include "world.hpp"
#include <string>

std::string hello_world();

#endif /* __hello_world */
