CC=gcc
CXX=g++
CFLAGS= -Wall -g -O -fPIC -DC_LINK_TEST=1
CXXFLAGS = $(CFLAGS)
RM= rm -f
.PHONY: all clean

all: libhelloworld.so main
clean:
		 $(RM) *.o *.so

main: main.o libhelloworld.so
	#$(CXX) $^ -o $@
	$(CXX) $< -L'$(CURDIR)' -lhelloworld -o $@
main.o: main.cpp

libwords.so: hello.o world.o
			 $(LINK.cpp) -shared $^ -o $@

libhelloworld.so: helloworld.o libwords.so
		 $(LINK.cpp) -L'$(CURDIR)' -lwords -shared $^ -o $@

hello.o: hello.c

world.o: world.cpp

helloworld.o: helloworld.cpp
