# Compiler and flags
CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -g

# Directories
INC_DIR = ./inc
SRC_DIR = ./src
OBJ_DIR = ../obj/printModule

# Source files and object files
SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRC))

# Include directories
INC = -I$(INC_DIR)

# Targets
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<

.PHONY: clean

clean:
	rm -f $(OBJ)
