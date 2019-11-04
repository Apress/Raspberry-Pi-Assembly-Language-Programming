@
@ Assembler program to convert a string to
@ all upper case. Assumes only alphabetic
@ characters. Uses bit clear blindly without
@ checking if character is alphabetic or not.
@
@ R0 - address of input string
@ R1 - address of output string
@ R2 - original output string for length calc.
@ R3 - current character being processed
@

.global _start	            @ Provide program starting address to linker

.MACRO toupper inputstr, outputstr
	LDR	R0, =\inputstr	@ start of input string
	LDR	R1, =\outputstr	@ address of output string
	MOV	R2, R1
@ The loop is until byte pointed to by R1 is non-zero
loop:	LDRB	R3, [R0], #1	@ load character and increment pointer
	BIC	R3, #0x20	@ kill the bit that makes it lower case
	STRB	R3, [R1], #1	@ store character to output str
	CMP	R3, #0		@ stop on hitting a null charactser
	BNE	loop		@ loop if character isn't null
	SUB	R0, R1, R2	@ get the length by subtracting the pointers
.ENDM

_start:
	toupper	instr, outstr

@ Setup the parameters to print our hex number
@ and then call Linux to do it.
	MOV	R2,R0	@ return code is the length of the string

	MOV	R0, #1	    @ 1 = StdOut
	LDR	R1, =outstr @ string to print
	MOV	R7, #4	    @ linux write system call
	SVC	0 	    @ Call linux to output the string

@ Setup the parameters to exit the program
@ and then call Linux to do it.
	MOV     R0, #0      @ Use 0 return code
        MOV     R7, #1      @ Service command code 1 terminates this program
        SVC     0           @ Call linux to terminate the program

.data
instr:  .asciz  "ThisIsRatherALargeVariableNameAaZz@[`{\n"
	.align 4
outstr:	.fill	255, 1, 0
