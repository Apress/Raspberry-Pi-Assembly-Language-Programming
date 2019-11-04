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

.syntax unified

.global toupper	     @ Allow other files to call this routine

.thumb_func
toupper:	PUSH	{R4-R7}	@ Save the registers we use.
	MOV	R4, R1
	MOVS	R7, #'a'
@ The loop is until byte pointed to by R1 is non-zero
loop:	LDRB	R5, [R0]	@ load character 
	ADDS	R0, #1		@ increment pointer
@ Want to know if 'a' <= R5 <= 'z'
@ First subtract 'a'
	SUBS	R6, R5, R7
@ Now want to know if R6 <= 25
	CMP	R6, #25	    @ chars are 0-25 after shift
@ if we got here then the letter is lowercase, so convert it.
	IT	LS
	SUBLS	R5, #('a'-'A')

	STRB	R5, [R1]	@ store character to output str
	ADDS	R1, #1		@ increment ouput pointer
	CMP	R5, #0		@ stop on hitting a null character
	BNE	loop		@ loop if character isn't null
	SUBS	R0, R1, R4  @ get the length by subtracting the pointers
	POP	{R4-R7}		@ Restore the register we use.
	BX	LR		@ Return to caller
