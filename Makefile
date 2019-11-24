CXX := g++

# Build flags
CXXFLAGS += -std=c++11 -Wall -g

INCLUDES += -Iinclude
# Linker Flags
LDFLAGS += 


# Searches for all CPP files
SRCDIR = src/
OBJDIR = obj/

# Uses source files to creat objs
SOURCES := $(wildcard $(SRCDIR)*.cpp)
OBJECTS := $(patsubst $(SRCDIR)%.cpp,$(OBJDIR)%.o,$(SOURCES))

$(OBJDIR)%.o: $(SRCDIR)%.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $^ -o $@

all:
	make clean
	make GameEngine
	make run

GameEngine: $(OBJECTS)
	$(CXX) $(CXXFLAGS) $^ -o $@ 

clean:
	rm obj/*.o GameEngine

run:
	./GameEngine
