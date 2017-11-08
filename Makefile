CC = gcc
CFLAGS = -W -WALL
TARGET = test
PRINT = print
OBJECTS = first.o second.o main.o


print : test
	./test
$(TARGET) : first.o second.o main.o
	gcc -o $(TARGET) $(OBJECTS)

first.o : first.c
	gcc -c -o first.o first.c

second.o : second.c
	gcc -c -o second.o second.c

main.o : main.c
	gcc -c -o main.o main.c

clean : 
		rm *.o test	
