OBJS = printword.o
CSOBJS = codesnippets.o

ifdef DEBUG
DEBUGFLGS = -g
else
DEBUGFLGS =
endif

%.o : %.s
	as $(DEBUGFLGS) $< -o $@

all: printword codesnippets

printword: $(OBJS)
	ld -o printword $(OBJS)

codesnippets: $(CSOBJS)
	ld -o codesnippets $(CSOBJS)