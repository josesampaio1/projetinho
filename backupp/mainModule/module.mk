# Module-specific compilation flags
MODULE_CFLAGS += -I./inc

# List of object files for this module
MODULE_OBJECTS := $(OBJ_DIR)/mainModule/main.o

# Include common.mk to get the rules for compiling object files
include $(TOP_DIR)/common.mk

# Rule for compiling main.o
$(OBJ_DIR)/mainModule/main.o: src/main.c inc/main.h
	$(CC) $(CFLAGS) $(MODULE_CFLAGS) -c -o $@ $<
