# Define variables
SRCDIR := src
INCDIR := inc
OBJDIR := ../obj/module2
CC := gcc
CFLAGS := -Wall -Werror -Wextra -pedantic -g

# Define source and object files
SRCS := $(wildcard $(SRCDIR)/*.c)
OBJS := $(SRCS:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

# Define include paths
INCLUDES := -I$(INCDIR) -I../../stringModule/inc

# Define target
TARGET := $(OBJDIR)/main.o

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $@ $(SRCDIR)/main.c

$(OBJ_DIR)/%.o: src/%.c
	$(CC) $(CFLAGS) $(INCLUDE_DIRS) -c $< -o $@

