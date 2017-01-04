CXX=g++
CXXFLAGS=-W -Wall -std=c++17 -pedantic
LDXXFLAGS=
EXEC=a.exe
SRC= $(wildcard *.cpp)
OBJ= $(SRC:.cpp=.o)

all: $(EXEC) push

a.exe: $(OBJ)
	$(CXX) $^ -o $@ $(LDXXFLAGS)

%.o: %.cpp
	$(CXX) -c $< $(CXXFLAGS)

clean:
	rm -rf *.o *.exe *.gch

push : commit
	git push

commit : add
	git commit -m "auto added to github"

add : 
	git add -A

pull :
	git pull
