# Include the common makefile variables
#include ../common.mk

# Include the module-specific variables
include module.mk

# Define the phony targets
.PHONY: all clean

# The default target is to build the module
all:
	$(MAKE) -C $(OBJ_DIR) all

# Rule to clean the module
clean:
	$(MAKE) -C $(OBJ_DIR) clean
