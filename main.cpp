/* hello world c / c++ example */

#ifdef C_LINK_TEST
extern "C" {
#include "hello.h"
}
#endif

#include "helloworld.hpp"

#include <iostream>

int main() {
#ifdef C_LINK_TEST
  std::cout << "c gives us: " << hello() << std::endl;
#endif
  std::cout << "cpp gives us: " << hello_world() << std::endl;
  return 1;
}
