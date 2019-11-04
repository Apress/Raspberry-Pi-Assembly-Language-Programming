@
@ This file contains the various code
@ snippets from Chapter 5. This ensures
@ they compile and gives you a chance
@ to single step through them.
@ They are labeled, so you can set a
@ breakpoint at the one you are interested in.

.global _start

.data
l1: .byte 74, 0112, 0b00101010, 0x4A, 0X4a, 'J', 'H' + 2
	.word	0x1234ABCD, -1434
	.ascii	"Hello World\n"

l2:	.byte -0x45, -33, ~0b00111001

l3:	.fill	10, 4, 0

l4:	.rept 3
	.byte	0, 1, 2
	.endr

.text

_start: 
l5:	LDR	R1, =helloworld

l6:	LDR	R1, =0x1234ABCDF

l7:
@ load the address of mynumber into R1
	LDR	R1, =mynumber
@ load the word stored at mynumber into R2
	LDR	R2, [R1]

l8:	LDR	R1, =arr1

l9:	@ Load the first element
	LDR	R2, [R1]
	@ Load element 3
	@ The elements count from 0, so 2 is
@ the third one. Each word is 4 bytes,
@ so we need to multiply by 4
	LDR	R2, [R1, #(2 * 4)]

l10:	@ The 3rd element is still number 2
	MOV	R3, #(2 * 4)
@ Add the offset in R3 to R1 to get our element.
	LDR	R2, [R1, R3]

l11:	LDR	R2, [R1, #-(2 * 4)]
	LDR	R2, [R1, -R3]

l12: 	@ Suppose our array is of WORDs but we only want the
	@ low order byte.
	MOV	R3, #2
	@ Shift R3 left by 2 positions to multiply
@ by 4 to get the correct address.
	LDR	R2, [R1, R3, LSL #2]

l13:	LDR R2, [R1, R3, LSL #2]!

	LDR R2, =arr1
l14:	@ Load R1 with the memory pointed to by R2
	@ Then do R2 = R2 + R3
	LDR	R1, [R2], R3
	@ Load R1 with the memory pointed to by R2
	@ Then do R2 = R2 + 2
	LDR	R1, [R2], #2
	@ Load R1 with the memory pointed to by R2
	@ Then do R2 = R2 + (R3 shifted 2 left)
	LDR	R1, [R2], R3, LSL #2

l15: 	LDR	R1, =mydword
	LDRD	R2, R3, [R1]
	STRD	R2, R3, [R1]

@ Setup the parameters to exit the program
@ and then call Linux to do it.
	MOV     R0, #0      @ Use 0 return code
        MOV     R7, #1      @ Service command code 1 terminates this program
        SVC     0           @ Call linux to terminate the program

.data
helloworld:	.ascii "Hello World!"
mynumber:	.WORD	0x1234ABCD
arr1:	.FILL	10, 4, 0
@ As of this writing there is a bug in AS that causes the next
@ statement to spit out a warning. You can disregard this
@ and check with objdump that the generated data is correct.
mydword:	.QUAD 0x1234567887654321
