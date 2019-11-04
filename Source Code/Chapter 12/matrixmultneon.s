
@
@ Multiply 2 3x3 integer matrices
@ Uses the NEON Coprocessor to do
@ some operations in parallel.
@
@ Registers:
@	D0 - first column of matrix A
@	D1 - second column of matrix A
@	D2 - third column of matrix A
@	D3 - first column of matrix B
@	D4 - second column of matrix B
@	D5 - third column of matrix B
@	D6 - first column of matrix C
@	D7 - second column of matrix C
@	D8 - third column of matrix C

.global main @ Provide program starting address to linker

main:	
	push	{R4-R12, LR}	@ Save required regs

@ load matrix A into Neon registers D0, D1, D2
	LDR	R0, =A		@ Address of A
	VLDM	R0, {D0-D2}	@ bulk load the three columns

@ load matrix B into Neon registers D3, D4, D5
	LDR	R0, =B		@ Address of B
	VLDM	R0, {D3-D5}	@ bulk load the three columns

.macro mulcol ccol bcol
	VMUL.I16	\ccol, D0, \bcol[0]
	VMLA.I16	\ccol, D1, \bcol[1]
	VMLA.I16	\ccol, D2, \bcol[2]
.endm

	mulcol	D6, D3	@ process first column
	mulcol	D7, D4	@ process second column
	mulcol	D8, D5	@ process third column

	LDR	R1, =C		@ Address of C
	VSTM	R1, {D6-D8}	@ buld store the three columns

@ Print out matrix C
@ Loop through 3 rows printing 3 cols each time.
	MOV	R5, #3		@ Print 3 rows
	LDR	R11, =C		@ Addr of results matrix
printloop:
		
	LDR	R0, =prtstr	@ printf format string
@ print transpose so matrix is in usual row column order.
@ first ldrh post-indexes by 2 for next row
@ so second ldrh adds 6, so is ahead by 2+6=8=row size
@ simlarly for third ldh ahead by 2+14=16 = 2 x row size
	LDRH	R1, [R11], #2 	@ first element in current row
	LDRH	R2, [R11,#6]	@ second element in current row
	LDRH	R3, [R11,#14]	@ third element in curent row
	BL	printf		@ Call printf
	SUBS	R5, #1		@ Dec loop counter
	BNE	printloop	@ If not zero loop

	mov	r0, #0		@ return code
	pop	{R4-R12, PC}	@ Restore regs and return

.data
@ First matrix in column major order
A:	.short	1, 4, 7, 0
	.short	2, 5, 8, 0
	.short	3, 6, 9, 0
@ Second matrix in column major order
B:	.short	9, 6, 3, 0
	.short	8, 5, 2, 0
	.short	7, 4, 1, 0
@ Result matix in column major order
C:	.fill	12, 2, 0

prtstr: .asciz  "%3d  %3d  %3d\n"
