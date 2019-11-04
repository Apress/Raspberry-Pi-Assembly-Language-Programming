
UPPER2OBJS = main.o upper2.o
UPPER3OBJS = main.o upper3.o

ifdef DEBUG
DEBUGFLGS = -g
else
DEBUGFLGS =
endif
LSTFLGS =

all: upper2 upper3 codesnippets

%.o : %.s
	as -march="armv8-a" -mfpu=neon-vfpv4 $(DEBUGFLGS) $(LSTFLGS) $< -o $@

upper2: $(UPPER2OBJS)
	ld -o upper2 $(UPPER2OBJS)

upper3: $(UPPER3OBJS)
	ld -o upper3 $(UPPER3OBJS)

codesnippets: codesnippets.o
	ld -o codesnippets codesnippets.o