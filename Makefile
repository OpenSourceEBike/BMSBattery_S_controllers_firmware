NAME=main
SDCC=sdcc
HEX2BIN=hex2bin

CCFLAGS= -DSTM8S003 -I../  -I/usr/local/share/sdcc/include/ -mstm8 --out-fmt-ihx
LDFLAGS= -mstm8 --out-fmt-ihx
FLASHFLAGS= -c stlinkv2 -p stm8s003f3

SRC=$(wildcard *.c)
# ATTENTION: FIRST in list should be file with main()
OBJ=$(SRC:%.c=%.rel)
TRASH=$(OBJ) $(SRC:%.c=%.rst) $(SRC:%.c=%.asm) $(SRC:%.c=%.lst)
TRASH+=$(SRC:%.c=%.sym) $(NAME).ihx $(NAME).lk $(NAME).map
INDEPENDENT_HEADERS= Makefile

all: $(NAME).bin

$(SRC) : %.c : %.h $(INDEPENDENT_HEADERS)
	@touch $@
	@echo $@

%.h: ;

clean:
	rm -f $(TRASH)

load: $(NAME).bin
	stm8flash $(FLASHFLAGS) -w $(NAME).bin

%.rel: %.c
	$(SDCC) $(CCFLAGS) -c $<

$(NAME).ihx: $(OBJ)
	$(SDCC) $(LDFLAGS) $(OBJ) -o $(NAME).ihx

$(NAME).bin: $(NAME).ihx
	$(HEX2BIN) -p 00 $<

.PHONY: all
