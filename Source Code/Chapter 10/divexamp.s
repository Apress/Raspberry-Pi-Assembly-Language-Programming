@
@ Examples of 32-Bit Integer Division
@

.include "debug.s"

.global main @ Provide program starting address to linker

@ Load the registers with some data
@ Perform various division instructions
main:	
	push	{R4-R12, LR}
	MOV	R2, #100
	MOV	R3, #4

	printStr "Inputs:"
	printReg 2
	printReg 3

	SDIV	R4, R2, R3
	printStr "Outputs:"
	printReg 4

	UDIV	R4, R2, R3
	printStr "Outputs:"
	printReg 4

	mov	r0, #0		@ return code
	pop	{R4-R12, PC}

