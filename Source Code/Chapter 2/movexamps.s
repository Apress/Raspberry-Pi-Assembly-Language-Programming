
@
@ Examples of the MOV instruction.
@
.global _start	            @ Provide program starting address to linker

@ Load R2 with 0x4F5D6E3A first using MOV and MOVT
_start:	MOV	R2, #0x6E3A
	MOVT	R2, #0x4F5D

@ Just move R2 into R1
	MOV	R1, R2

@ Now lets see all the shift versions of MOV
	MOV	R1, R2, LSL #1	@ Logical shift left
	MOV	R1, R2, LSR #1	@ Logical shift right
	MOV	R1, R2, ASR #1	@Arithmetic shift right
	MOV	R1, R2, ROR #1	@ Rotate right
	MOV	R1, R2, RRX	@ Rotate extended right

@ Repeat the above shifts using the Assembler mnemonics.

	LSL	R1, R2, #1	@ Logical shift left
	LSR	R1, R2, #1	@ Logical shift right
	ASR	R1, R2, #1	@Arithmetic shift right
	ROR	R1, R2, #1	@ Rotate right
	RRX	R1, R2		@ Rotate extended right

@ Example that works with 8 bit immediate and shift
	MOV	R1, #0xAB000000	@ Too big for #imm16

@ Example that can't be represented and results in an error
@ Uncomment the instruction if you want to see the error
@	MOV	R1, #0xABCDEF11	@ Too big for #imm16 and can’t  be represented.

@ Example of MVN
	MVN	R1, #45
	
@ Example of a MOV that the Assembler will change to MVN
	MOV	R1, #0xFFFFFFFE	@ (-2)

@ Setup the parameters to exit the program
@ and then call Linux to do it.
	mov     R0, #0      @ Use 0 return code
        mov     R7, #1      @ Service command code 1 terminates this program
        svc     0           @ Call linux to terminate the program


