#Makefile for STM8 Examples with SDCC compiler
#Author:	Saeid Yazdani
#Website:	WWW.EMBEDONIX.COM
#Copyright 2016
#LICENSE:	GNU-LGPL


# We're assuming POSIX conformance
.POSIX:

#Compiler
CC = /home/cas/software/stm8-binutils/bin/sdcc

#Platform
PLATFORM = stm8

#Product name
PNAME = main

SIZE = size
HEX2BIN = hex2bin

#Folders **** MAKE SURE TO CHANGE ACCORDING TO YOUR STRUCTURE!!! ****
#Output directory for intermediate and final compiled file(s)
ODIR = bin
#Directory for helpers
IDIR = StdPeriphLib/inc
SDIR = StdPeriphLib/src

# In case you ever want a different name for the main source file
MAINSRC = $(PNAME).c

# These are the sources that must be compiled to .rel files:
EXTRASRCS = \
	$(SDIR)/stm8s_itc.c \
	$(SDIR)/stm8s_clk.c \
	$(SDIR)/stm8s_gpio.c \
	$(SDIR)/stm8s_exti.c \
	$(SDIR)/stm8s_uart2.c \
	gpio.c \
	uart.c \
	hall_sensors.c \
	motor.c \

# The list of .rel files can be derived from the list of their source files
RELS = $(EXTRASRCS:.c=.rel)

INCLUDES = -I$(IDIR) -I. 
CFLAGS   = -m$(PLATFORM) -I/usr/local/share/sdcc/include -I/usr/local/share/sdcc/lib/ --all-callee-saves --stack-auto --fverbose-asm  --float-reent --no-peep
IHX_FLAGS = --out-fmt-ihx --debug
ELF_FLAGS = --out-fmt-elf --debug
LIBS     = -l$(PLATFORM)

# This just provides the conventional target name "all"; it is optional
# Note: I assume you set PNAME via some means not exhibited in your original file
all: $(PNAME)

# How to build the overall program
$(PNAME): $(MAINSRC) $(RELS)
	@mkdir -p $(ODIR)
	$(CC) $(INCLUDES) $(CFLAGS) $(IHX_FLAGS) $(LIBS) -L/usr/local/share/sdcc/lib/stm8/stm8.lib -I/usr/local/share/sdcc/include $(MAINSRC) $(wildcard $(ODIR)/*.rel) -o$(ODIR)/
	$(HEX2BIN) -p 00 $(ODIR)/$(PNAME).ihx
	$(CC) $(INCLUDES) $(CFLAGS) $(ELF_FLAGS) $(LIBS) $(MAINSRC) $(wildcard $(ODIR)/*.rel) -o$(ODIR)/
	$(SIZE) $(ODIR)/$(PNAME).elf

# How to build any .rel file from its corresponding .c file
# GNU would have you use a pattern rule for this, but that's GNU-specific
.c.rel:
	@mkdir -p $(ODIR)
	$(CC) -c $(INCLUDES) $(CFLAGS) $(IHX_FLAGS) $(LIBS) $< -o$(ODIR)/

# Suffixes appearing in suffix rules we care about.
# Necessary because .rel is not one of the standard suffixes.
.SUFFIXES: .c .rel


#phonies

.PHONY:	clean flash

clean:
	@echo "Removing $(ODIR)..."
	@rm -rf $(ODIR)
	@echo "Done."
flash:
	stm8flash -cstlinkv2 -pstm8s105?6 -w$(ODIR)/$(PNAME).ihx

