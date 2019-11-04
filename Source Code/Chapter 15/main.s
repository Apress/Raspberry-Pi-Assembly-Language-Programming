@
@ Assembler program to convert a string to
@ all upper case by calling a function.
@
@ R0-R2 - parameters to linux function services
@ R1 - address of output string
@ R0 - address of input string
@ R5 - current character being processed
@ R7 - linux function number
@

.global _start	            @ Provide program starting address to linker

_start: LDR	R0, =instr @ start of input string
	LDR	R1, =outstr @ address of output string
	MOV	R4, #12
	MOV	R5, #13

	BLX	toupper

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
instr:  .asciz  "This is our Test String that we will convert. AaZz@[`{\n"
	.align 4
outstr:	.fill	255, 1, 0

