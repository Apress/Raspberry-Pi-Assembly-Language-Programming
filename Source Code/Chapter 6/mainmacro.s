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

.include "uppermacro.s"

.global _start	            @ Provide program starting address to linker

_start:	toupper tststr, buffer

@ Setup the parameters to print our hex number
@ and then call Linux to do it.
	MOV	R2,R0	@ return code is the length of the string

	MOV	R0, #1	    @ 1 = StdOut
	LDR	R1, =buffer @ string to print
	MOV	R7, #4	    @ linux write system call
	SVC	0 	    @ Call linux to output the string

	toupper tststr2, buffer

@ Setup the parameters to print our hex number
@ and then call Linux to do it.
	MOV	R2,R0	@ return code is the length of the string

	MOV	R0, #1	    @ 1 = StdOut
	LDR	R1, =buffer @ string to print
	MOV	R7, #4	    @ linux write system call
	SVC	0 	    @ Call linux to output the string

@ Setup the parameters to exit the program
@ and then call Linux to do it.
	MOV     R0, #0      @ Use 0 return code
        MOV     R7, #1      @ Service command code 1 terminates this program
        SVC     0           @ Call linux to terminate the program

.data
tststr:  .asciz  "This is our Test String that we will convert.\n"
tststr2: .asciz	 "A second string to upper case!!\n"
buffer:	.fill	255, 1, 0

