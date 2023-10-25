

CXX ?= g++
CXXFLAGS=-std=c++14 -O3 -fopenmp
LDFLAGS=-fopenmp

OBJECTS=stockast.o

stockast: $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o stockast $(LDFLAGS)

stockast.o: stockast.cpp

.PHONY: clean

clean:
			rm -f *.o stockast
