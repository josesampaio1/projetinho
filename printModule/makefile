# Makefile for printModule

# Define the compiler
CC := gcc

# Define compiler flags
CFLAGS := -Wall -Werror -Wextra -pedantic -g

# Define the library name
LIBRARY := libprintutil.a

# Define directories
SRC_DIR := /printModule/src
INC_DIR := /printModule/inc
OBJ_DIR := ../printModule

# Define source and object files
SRC_FILES := $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES := $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC_FILES))

# Define header files
INC_FILES := $(wildcard $(INC_DIR)/*.h)

# Define the build target
.PHONY: all
all: $(LIBRARY)

# Define how to build the library
$(LIBRARY): $(OBJ_FILES)
	ar rcs $@ $^

# Define how to build object files
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c $(INC_FILES)
	$(CC) $(CFLAGS) -c -o $@ $< -I $(INC_DIR)

# Define the clean target
.PHONY: clean

clean:
	rm -f $(OBJ_DIR)/*.o $(LIBRARY)
