NAME=main
SDCC=sdcc
HEX2BIN=hex2bin

CCFLAGS= -I../  -I/usr/local/share/sdcc/include/ -mstm8 --all-callee-saves --debug --verbose --stack-auto --fverbose-asm  --float-reent --no-peep
LDFLAGS= -mstm8 --all-callee-saves --debug --verbose --stack-auto --fverbose-asm  --float-reent --no-peep
FLASHFLAGS= -c stlinkv2 -p stm8s003f3
IHXFLAGS = --out-fmt-ihx
ELFFLAGS = --out-fmt-elf

SRC=$(wildcard *.c)
# ATTENTION: FIRST in list should be file with main()
OBJ=$(SRC:%.c=%.rel)
TRASH=$(OBJ) $(SRC:%.c=%.rst) $(SRC:%.c=%.asm) $(SRC:%.c=%.lst)
TRASH+=$(SRC:%.c=%.sym) $(NAME).ihx $(NAME).adb $(NAME).bin $(NAME).cdb $(NAME).elf $(NAME).lk $(NAME).map
INDEPENDENT_HEADERS= Makefile

all: $(NAME).bin elf 

$(SRC) : %.c : %.h $(INDEPENDENT_HEADERS)
	@touch $@
	@echo $@

%.h: ;

clean:
	rm -f $(TRASH)

load: $(NAME).bin
	stm8flash $(FLASHFLAGS) -w $(NAME).bin

%.rel: %.c
	$(SDCC) $(CCFLAGS) $(IHXFLAGS) -c $<

$(NAME).ihx: $(OBJ)
	$(SDCC) $(LDFLAGS) $(IHXFLAGS) $(OBJ) -o $(NAME).ihx

$(NAME).bin: $(NAME).ihx
	$(HEX2BIN) -p 00 $<

elf:
	$(SDCC) $(CCFLAGS) $(ELFFLAGS) $(SRC)
	size $(NAME).elf

.PHONY: all


