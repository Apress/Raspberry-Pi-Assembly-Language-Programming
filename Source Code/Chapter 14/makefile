
all: upper div

upper: upper.c
	gcc -O3 -g  -o upper upper.c
	gcc -O3 -S -fverbose-asm -g  -o upper.s upper.c
	objdump -d upper >od.txt

div:  div.c
	gcc -march="armv8-a" -o div div.c