all: jsmn.o
	g++ -o ../FC.cgi jsmn.o test.cpp
jsmn.o: jsmn.c
	g++ -c -fpermissive -o $@ $<
