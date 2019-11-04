@
@ This file contains the various code
@ snippets from Chapter 2. This ensures
@ they compile and gives you a chance
@ to single step through them.
@ They are labeled, so you can set a
@ breakpoint at the one you are interested in.

.global _start

_start: 

l1:	MOV	R2, #0x6E3A
	MOVT	R2, #0x4F5D

l2:	MOV	R1, R2, LSL #1	@ Logical shift left

l3:	MOV	R1, R2, LSR #1	@ Logical shift right
	MOV	R1, R2, ASR #1	@Arithmetic shift right
	MOV	R1, R2, ROR #1	@ Rotate right
	MOV	R1, R2, RRX	@ Rotate extended right

l4:	LSL	R1, R2, #1	@ Logical shift left
	LSR	R1, R2, #1	@ Logical shift right
	ASR	R1, R2, #1	@Arithmetic shift right
	ROR	R1, R2,  #1	@ Rotate right
	RRX	R1, R2		@ Rotate extended right

l5:	MOV	R1, #0xAB000000 @ Too big for #imm16
@ Uncomment the next line if you want to see the 
@ Assembler error for a constant that can't be
@ represented.
	@ MOV	R1, #0xABCDEF11 @ Too big for #imm16 and can’t  be represented.

l6:	ADD R1, #1

l7:	ADD R1, R1, #1 

l8:	ADDS	R0, #1

l9:	ADDS	R1, R3, R5	@ Lower order word
	ADC	R0, R2, R4	@ Higher order word


@ Setup the parameters to exit the program
@ and then call Linux to do it.
	MOV     R0, #0      @ Use 0 return code
        MOV     R7, #1      @ Service command code 1 terminates this program
        SVC     0           @ Call linux to terminate the program

.data
helloworld:	.ascii "Hello World!"
