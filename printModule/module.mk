# Module.mk for printModule

# Directories
INC_DIR := inc
SRC_DIR := src
OBJ_DIR := ../obj/printModule

# Source files
SRC := $(wildcard $(SRC_DIR)/*.c)

# Object files
OBJ := $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRC))

# Include flags
INC := -I $(INC_DIR)

# Compilation flags
CFLAGS := $(INC) -Wall -Wextra -Werror -pedantic -g -c

# Targets
all: $(OBJ)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJ)
