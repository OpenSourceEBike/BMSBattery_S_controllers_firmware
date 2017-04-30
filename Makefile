NAME=main
SDCC=sdcc

#CCFLAGS=-DSTM8S105 -I../  -I/usr/share/sdcc/include -mstm8 --out-fmt-elf --all-callee-saves --debug --verbose --stack-auto --fverbose-asm  --float-reent --no-peep
CCFLAGS=-DSTM8S105 -I../  -I/usr/share/sdcc/include -mstm8 --out-fmt-ihx
LDFLAGS= -mstm8 --out-fmt-ihx
FLASHFLAGS=-cstlinkv2 -pstm8s105

SRC=$(wildcard *.c)
# ATTENTION: FIRST in list should be file with main()
OBJ=$(SRC:%.c=%.rel)
TRASH=$(OBJ) $(SRC:%.c=%.rst) $(SRC:%.c=%.asm) $(SRC:%.c=%.lst)
TRASH+=$(SRC:%.c=%.sym) $(NAME).ihx $(NAME).lk $(NAME).map
TRASH+=main.cdb
INDEPENDENT_HEADERS=../stm8l.h Makefile

all: $(NAME).ihx

$(SRC) : %.c : %.h $(INDEPENDENT_HEADERS)
	@touch $@
	@echo $@

%.h: ;

clean:
	rm -f $(TRASH)

load: $(NAME).ihx
	stm8flash $(FLASHFLAGS) -wf $(NAME).bin

%.rel: %.c
	$(SDCC) $(CCFLAGS) -c $<

$(NAME).ihx: $(OBJ)
	$(SDCC) $(LDFLAGS) $(OBJ) -o $(NAME).ihx

.PHONY: all
