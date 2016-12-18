CXX=g++
CXXFLAGS=-W -Wall -std=c++17 -pedantic
LDXXFLAGS=
EXEC=a.out
SRC= $(wildcart *.cpp)
OBJ= $(SRC:.cpp=.o)

all: $(EXEC) 

a.out: $(OBJ)
	$(CXX) $^ -o $@ $(LDXXFLAGS)

main.cpp : Piece.hpp

Piece.cpp : Piece.hpp

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
