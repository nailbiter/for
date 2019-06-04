.PHONY: all

all: hello
	./hello

hello: hello.c
	cc $< `pkg-config --cflags --libs glib-2.0` -o $@
