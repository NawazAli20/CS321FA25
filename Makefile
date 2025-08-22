CC=gcc
CFLAGS=-std=c11 -Wall -Wextra -Werror -O2
TARGET=hello

all: $(TARGET)

$(TARGET): HelloWorld.c
	$(CC) $(CFLAGS) -o $(TARGET) HelloWorld.c

clean:
	rm -f $(TARGET)
