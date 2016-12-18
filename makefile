CXX=g++
CXXFLAGS=-W -Wall -ansi -pedantic
LDXXFLAGS=
EXEC=a.out
SRC= $(wildcart *.c)
OBJ= $(SRC:.c=.o)

all: $(EXEC) push

a.out: $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)

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
