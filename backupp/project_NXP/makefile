CC = gcc
CFLAGS = -Wall -Wextra

TOP_DIR := .

# Targets
all:
	$(MAKE) -C stringModule
	$(MAKE) -C mainModule
	$(MAKE) -C printModule
	$(MAKE) -f $(TOP_DIR)/common.mk

clean:
	$(MAKE) -C stringModule clean
	$(MAKE) -C mainModule clean
	$(MAKE) -C printModule clean
	$(MAKE) -f $(TOP_DIR)/common.mk clean
