# Compiler settings
CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -g

# Directories
SRCDIR := .
OBJDIR := obj
BINDIR := bin

# Targets
MODULES := stringModule mainModule printModule
TARGET := my_program

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(addprefix $(OBJDIR)/,$(MODULES))
	$(CC) $(CFLAGS) $^ -o $(BINDIR)/$(TARGET)

$(OBJDIR)/%:
	$(MAKE) -C $* OBJDIR=../$(OBJDIR)/$*

clean:
	rm -rf $(OBJDIR)/*
	rm -rf $(BINDIR)/*
