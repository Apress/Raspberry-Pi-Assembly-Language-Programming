
ifdef DEBUG
DEBUGFLGS = -g
else
DEBUGFLGS =
endif
LSTFLGS =

all: matrixmultneon distance

%.o : %.s
	as $(DEBUGFLGS) $(LSTFLGS) $< -o $@

matrixmultneon: matrixmultneon.s
	gcc -mfpu=neon-vfpv4 -g -o matrixmultneon matrixmultneon.s

distance: distance.s main.s
	gcc -mfpu=neon-vfpv4 -g -o distance distance.s main.s
