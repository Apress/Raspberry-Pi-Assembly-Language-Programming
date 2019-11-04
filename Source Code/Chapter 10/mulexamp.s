
@
@ Example of 16 & 32-Bit Multiplication
@

.include "debug.s"

.global main @ Provide program starting address to linker

@ Load the registers with some data
@ Use small positive numbers that will work for all
@ multiply instructions.
main:	
	push	{R4-R12, LR}
	MOV	R2, #25
	MOV	R3, #4


	printStr "Inputs:"
	printReg 2
	printReg 3

	MUL	R4, R2, R3
	printStr "MUL R4=R2*R3:"
	printReg 4

	SMULL	R4, R5, R2, R3
	printStr "SMULL R5, R4=R2*R3:"
	printReg 4
	printReg 5

	UMULL	R4, R5, R2, R3
	printStr "UMULL R5, R4=R2*R3:"
	printReg 4
	printReg 5

	SMMUL	R4, R2, R3
	printStr "SMMUL R4 = top 32 bits of R2*R3:"
	printReg 4

	SMULBB	R4, R2, R3
	printStr "SMULBB R4 = R2*R3:"
	printReg 4

	SMULWB	R4, R2, R3
	printStr "SMULWB R4 = upper 32 bits of R2*R3:"
	printReg 4

	mov	r0, #0		@ return code
	pop	{R4-R12, PC}

