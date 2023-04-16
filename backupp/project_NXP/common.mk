# Top-level directory
TOP_DIR := .

# Object file directory
OBJ_DIR := $(TOP_DIR)/obj

# Bin file directory
BIN_DIR := $(TOP_DIR)/bin

# List of source files
SRC_FILES := $(wildcard */src/*.c)

# List of object files
OBJ_FILES := $(patsubst %.c,$(OBJ_DIR)/%.o,$(notdir $(SRC_FILES)))

# Compiler flags
CFLAGS += -Wall -Werror -Wextra -pedantic -g

# Include paths
INCLUDE_DIRS := $(wildcard */inc)

# Include paths for each module
MODULE_INCLUDE_DIRS := $(patsubst %,-I%,$(INCLUDE_DIRS))

# Rule for compiling object files
$(OBJ_DIR)/%.o: */src/%.c */inc/%.h
	$(CC) $(CFLAGS) $(MODULE_INCLUDE_DIRS) -c -o $@ $<

# Rule for linking object files to create the binary
$(BIN_DIR)/my_program: $(OBJ_FILES)
	$(CC) $(CFLAGS) $(MODULE_INCLUDE_DIRS) $^ -o $@

.PHONY: all clean

# Default target
all: $(BIN_DIR)/my_program

# Clean target
clean:
	rm -f $(OBJ_FILES) $(BIN_DIR)/my_program
