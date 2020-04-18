.PHONY: all

GCCKEYS=-L/usr/local/lib -I/usr/local/include/SDL2 -lSDL2_gfx -lSDL2-2.0.0

all: example
	./example

#main
example: example.cpp
	g++  $< -o $@K $(GCCKEYS)
