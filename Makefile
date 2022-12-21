CC   = gcc
CXX  = g++
RASM = rasm
ECHO = echo

BIN_NAME = UP-22

CCFLAGS = -W -Wall
RASMFLAGS =

ALL = convert key_test.bin key_test.m12

all: $(ALL)

convert: tools/convert.c
	@$(ECHO) "CC    $@"
	@$(CC) $(CCFLAGS) -o $@ $^

bin2m12: tools/bin2m12.c
	@$(ECHO) "CC    $@"
	@$(CC) $(CCFLAGS) -o $@ $^

bitmap.data:
	@$(ECHO) "GEN	BITMAP"
	@./convert ./data/elfo.png ./out/elfo 2> /dev/null

%.bin: %.asm bitmap.data
	@$(ECHO) "RASM	$@"
	@$(RASM) $(RASMFLAGS) $< -o $(basename $@)

%.m12: %.bin bin2m12
	@$(ECHO) "M12	$@"
	@./bin2m12 $< $@ $(BIN_NAME)

clean:
	@$(ECHO) "CLEANING UP..."
	@rm -f bin2m12 *.m12 *.bin
#	@find . -name "*.o" -exec rm -f {} \;
