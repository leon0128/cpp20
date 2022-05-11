CXX = g++-10
CXXFLAGS = -std=c++20 -w -g3
PROGRAM = test
DIR = src
OBJS = $(patsubst %.cpp, %.o, $(wildcard $(DIR)/*.cpp))

$(PROGRAM): $(OBJS)
	$(CXX) $(OBJS) $(CXXFLAGS) -o $(PROGRAM)

clean:
	rm -f $(DIR)/*.o $(PROGRAM)