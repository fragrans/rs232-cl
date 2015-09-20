all:rs232.o
	gcc -shared rs232.o -o librs232.so

rs232.o:rs232.h rs232.c
	gcc	-fPIC -Wall -ansi -c rs232.c
