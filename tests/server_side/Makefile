all: jsmn.o test.cpp
	g++  -I ../../../include/  -L ../../../lib -static -o /u/cs/98/9822058/public_html/tests/FC.cgi jsmn.o test.cpp -ljansson 
jsmn.o: jsmn.c jsmn.h
	g++ -c -fpermissive -o $@ $<
