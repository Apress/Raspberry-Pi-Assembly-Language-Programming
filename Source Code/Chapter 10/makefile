
ifdef DEBUG
DEBUGFLGS = -g
else
DEBUGFLGS =
endif
LSTFLGS =

all: divexamp mulexamp matrixmult matrixmult2

%.o : %.s
	as $(DEBUGFLGS) $(LSTFLGS) $< -o $@

divexamp: divexamp.s debug.s
	gcc -march="armv8-a" -o divexamp divexamp.s

mulexamp: mulexamp.s debug.s
	gcc -o mulexamp mulexamp.s

matrixmult: matrixmult.s
	gcc -g -o matrixmult matrixmult.s

matrixmult2: matrixmult2.s
	gcc -g -o matrixmult2 matrixmult2.s

