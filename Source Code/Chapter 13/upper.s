@
@ Assembler program to convert a string to
@ all upper case.
@
@ R1 - address of output string
@ R0 - address of input string
@ R4 - original output string for length calc.
@ R5 - current character being processed
@ R6 - minus 'a' to compare < 26.
@

.global toupper	     @ Allow other files to call this routine

toupper:	PUSH	{R4-R6}	@ Save the registers we use.
	MOV	R4, R1
@ The loop is until byte pointed to by R1 is non-zero
loop:	LDRB	R5, [R0], #1	@ load character and increment pointer
@ Want to know if 'a' <= R5 <= 'z'
@ First subtract 'a'
	SUB	R6, R5, #'a'
@ Now want to know if R6 <= 25
	CMP	R6, #25	    @ chars are 0-25 after shift
	BHI	cont
@ if we got here then the letter is lowercase, so convert it.
	SUB	R5, #('a'-'A')
cont:	@ end if
	STRB	R5, [R1], #1	@ store character to output str
	CMP	R5, #0		@ stop on hitting a null character
	BNE	loop		@ loop if character isn't null
	SUB	R0, R1, R4  @ get the length by subtracting the pointers
	POP	{R4-R6}		@ Restore the register we use.
	BX	LR		@ Return to caller
