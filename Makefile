all: sum

sum: sum.o main.o
	g++ -o sum sum.o main.o

sum.o: sum.h sum.cpp
	g++ -c sum.o sum.cpp
main.o: sum.h main.cpp
	g++ -o main.o main.cpp

clean: 
	rm -fsum.o nain.o
	rm -f sum
