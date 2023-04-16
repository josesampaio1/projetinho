# Define variables
SRCDIR := src
INCDIR := inc
OBJDIR := ../obj/stringModule
CC := gcc
CFLAGS := -Wall -Werror -Wextra -pedantic -g

# Define source and object files
SRCS := $(wildcard $(SRCDIR)/*.c)
OBJS := $(SRCS:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

# Define include paths
INCLUDES := -I$(INCDIR)

# Define target
TARGET := $(OBJDIR)/libstringutil.a

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	ar -rcs $@ $^

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $@ $<

clean:
	rm -f $(TARGET) $(OBJS)
