# Assembler using main symbol

AS=nasm
ASFLAGS=-f elf64 -g
LD=gcc
LDFLAGS=-m64 -no-pie
SOURCES=$(wildcard *.asm)
OBJECTS=$(SOURCES:.asm=.o)
EXECUTABLE=Servus

#
all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(LD) $(LDFLAGS) $(OBJECTS) -o $@

$(OBJECTS): $(SOURCES)
	$(AS) $(ASFLAGS) $(SOURCES)

clean:
	rm -rf *.o $(EXECUTABLE)
