CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c11
LDFLAGS = -lSDL2
EXEC=golly

all: compile

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

compile: main.o peripherals.o
	$(CC) $^ -o $(EXEC) $(CFLAGS) $(LDFLAGS)

run: compile
	./$(EXEC)

clean:
	rm -f *.o $(EXEC)

.PHONY: compile run clean