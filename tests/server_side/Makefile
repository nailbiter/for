all: jsmn.o test.cpp callbacks.o
	g++  -I ../../../include/  -L ../../../lib -static -o /u/cs/98/9822058/public_html/tests/FC.cgi jsmn.o callbacks.o test.cpp -ljansson 
callbacks.o: callbacks.c callbacks.h
	g++ -I ../../../include/ -c -fpermissive -o $@ $<
jsmn.o: jsmn.c jsmn.h
	g++ -c -fpermissive -o $@ $<
