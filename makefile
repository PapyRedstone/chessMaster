CXX=g++
CXXFLAGS=-W -Wall -std=c++17 -pedantic
LDXXFLAGS=
EXEC=a.out
SRC= $(wildcard *.cpp)
OBJ= $(SRC:.cpp=.o)

all: $(EXEC) push

a.out: $(OBJ)
	$(CXX) $^ -o $@ $(LDXXFLAGS)

%.o: %.cpp
	$(CXX) -c $< $(CXXFLAGS)

clean:
	rm -rf *.o *.out *.gch

push : commit
	git push

commit : add
	git commit -m "auto"

add : 
	git add -A

pull :
	git pull
