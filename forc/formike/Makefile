.PHONY: all zip

all: test2.out test1.out
	./test1.out
	./test2.out
zip: formike.zip

%.out: %.cpp
	g++ $< -o $@
formike.zip: test2.cpp test1.cpp example2.txt example1.txt
	zip formike $^
