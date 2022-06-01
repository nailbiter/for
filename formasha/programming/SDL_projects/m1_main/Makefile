CXX = clang++
SDL = -L/Library/Frameworks -framework SDL2 -v
# If your compiler is a bit older you may need to change -std=c++11 to -std=c++0x
CXXFLAGS = $(SDL) -Wall -c -std=c++11
LDFLAGS = $(SDL)
EXE = SDL_Lesson0

all: $(EXE)


$(EXE): main.o

	$(CXX) $(LDFLAGS) $< -o $@

main.o: main.cpp

	$(CXX) $(CXXFLAGS) $< -o $@

clean:

	rm *.o && rm $(EXE)
