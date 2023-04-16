# Common variables
CC := gcc
CFLAGS := -Wall -Werror -Wextra -pedantic -g

# Include common.mk for common rules
include common.mk

# Define subdirectories
SUBDIRS := stringModule mainModule printModule

# Define object and binary directories
OBJDIR := obj
BINDIR := bin

# Define targets
.PHONY: all $(SUBDIRS)

all: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

clean:
	rm -rf $(OBJDIR) $(BINDIR)
