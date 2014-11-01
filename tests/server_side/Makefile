all: jsmn.o jsmn.h
	g++ -o ../FC.cgi jsmn.o test.cpp
jsmn.o: jsmn.c jsmn.h
	g++ -c -fpermissive -o $@ $<
