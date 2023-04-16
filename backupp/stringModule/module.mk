# Define the object directory for this module
OBJ_DIR := ../obj/stringModule

# Define the header files directory for this module
INC_DIR := inc

# Define the source files for this module
SRC_FILES := src/string_util.c

# Define the object files for this module
OBJ_FILES := $(addprefix $(OBJ_DIR)/, $(notdir $(SRC_FILES:.c=.o)))

# Define the flags for this module
CFLAGS += -I$(INC_DIR) -Wall -Werror -Wextra -pedantic

# Define the target for this module (the library)
TARGET := $(OBJ_DIR)/libstringutil.a

# Define the phony targets
.PHONY: all clean

# The default target is to build the library
all: $(TARGET)

# Rule to build the library
$(TARGET): $(OBJ_FILES)
	ar rcs $@ $^

# Rule to build the object files
$(OBJ_DIR)%.o: src/%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c -o $@ $<

# Rule to create the object directory
$(OBJ_DIR):
	mkdir -p $@

# Rule to clean the object files and the library
clean:
	$(RM) -r $(OBJ_DIR) $(TARGET)
