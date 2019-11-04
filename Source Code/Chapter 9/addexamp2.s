
@
@ Example of 64-Bit addition with the ADD/ADC instructions.
@

.include "debug.s"

.global main	            @ Provide program starting address to linker

@ Load the registers with some data
@ First 64-bit number is 0x00000003FFFFFFFF
main:	
	push	{R4-R12, LR}
	MOV	R2, #0x00000003
	MOV	R3, #0xFFFFFFFF	@Assembler will change to MVN
@ Second 64-bit number is 0x0000000500000001
	MOV	R4, #0x00000005
	MOV	R5, #0x00000001

	printStr "Inputs:"
	printReg 2
	printReg 3
	printReg 4
	printReg 5
	ADDS	R1, R3, R5	@ Lower order word
	ADC	R0, R2, R4	@ Higher order word

	printStr "Outputs:"
	printReg 1
	printReg 0
	mov	r0, #0		@ return code
	pop	{R4-R12, PC}

