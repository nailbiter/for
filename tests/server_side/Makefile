all: jsmn.o jsmn.h
	g++ -static -L ~/lib -I ~/include/ -o ../FC.cgi jsmn.o test.cpp -ljansson 
jsmn.o: jsmn.c jsmn.h
	g++ -c -fpermissive -o $@ $<
