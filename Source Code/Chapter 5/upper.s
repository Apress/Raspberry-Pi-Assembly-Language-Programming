@
@ Assembler program to convert a string to
@ all upper case.
@
@ R0-R2 - parameters to linux function services
@ R3 - address of output string
@ R4 - address of input string
@ R5 - current character being processed
@ R7 - linux function number
@

.global _start	            @ Provide program starting address to linker

_start: LDR	R4, =instr @ start of input string
	LDR	R3, =outstr @ address of output string
@ The loop is until byte pointed to by R1 is non-zero
loop:	LDRB	R5, [R4], #1	@ load character and increment pointer
@ If R5 > 'z' then goto cont
	CMP	R5, #'z'	    @ is letter > 'z'?
	BGT	cont
@ Else if R5 < 'a' then goto end if
	CMP	R5, #'a'
	BLT	cont	@ goto to end if
@ if we got here then the letter is lower case, so convert it.
	SUB	R5, #('a'-'A')
cont:	@ end if
	STRB	R5, [R3], #1	@ store character to output str
	CMP	R5, #0		@ stop on hitting a null character
	BNE	loop		@ loop if character isn't null

@ Setup the parameters to print our hex number
@ and then call Linux to do it.
	MOV	R0, #1	    @ 1 = StdOut
	LDR	R1, =outstr @ string to print
	SUB	R2, R3, R1  @ get the length by subtracting the pointers
	MOV	R7, #4	    @ linux write system call
	SVC	0 	    @ Call linux to output the string

@ Setup the parameters to exit the program
@ and then call Linux to do it.
	MOV     R0, #0      @ Use 0 return code
        MOV     R7, #1      @ Service command code 1 terminates this program
        SVC     0           @ Call linux to terminate the program

.data
instr:  .asciz  "This is our Test String that we will convert.\n"
outstr:	.fill	255, 1, 0

