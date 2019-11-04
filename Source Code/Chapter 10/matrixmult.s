
@
@ Multiply 2 3x3 integer matrices
@
@ Registers:
@	R1 - Row index
@	R2 - Column index
@	R4 - Address of row
@	R5 - Address of column
@	R7 - 64 bit accumulated sum 
@	R8 - 64 bit accumulated sum
@	R9 - Cell of A
@	R10 - Cell of B
@	R11 - Position in C
@	R12 - row in dotloop
@	R6 - col in dotloop

.global main @ Provide program starting address to linker

	.equ	N, 3	@ Matrix dimensions
	.equ	WDSIZE, 4 @ Size of element
main:	
	push	{R4-R12, LR}	@ Save required regs

	MOV	R1, #N		@ Row index
	LDR	R4, =A		@ Address of current row
	LDR	R11, =C		@ Address of results matrix
rowloop:
	LDR	R5, =B		@ first column in B
	MOV	R2, #N		@ Column index (will count down to 0)

colloop:	
	@ Zero accumulator registers
	MOV	R7, #0
	MOV	R8, #0

	MOV	R0, #N		@ dot product loop counter
	MOV	R12, R4		@ row for dot product
	MOV	R6, R5		@ column for dot product
dotloop:
	@ Do dot product of a row of A with column of B
	LDR	R9, [R12], #WDSIZE	@ load A[row, i] and incr
	LDR	R10, [R6], #(N*WDSIZE)	@ load B[i, col]
	SMLAL	R7, R8, R9, R10 @ Do multiply and accumulate
	SUBS	R0, #1		@ Dec loop counter
	BNE	dotloop		@ If not zero loop

	STR	R7, [R11], #4	@ C[row, col] = dotprod
	ADD	R5, #WDSIZE	@ Increment current col
	SUBS	R2, #1		@ Dec col loop counter
	BNE	colloop		@ If not zero loop
	
	ADD	R4, #(N*WDSIZE)	@ Increment to next row
	SUBS	R1, #1		@ Dec row loop counter
	BNE	rowloop		@ If not zero loop

@ Print out matrix C
@ Loop through 3 rows printing 3 cols each time.
	MOV	R5, #3		@ Print 3 rows
	LDR	R11, =C		@ Addr of results matrix
printloop:
		
	LDR	R0, =prtstr	@ printf format string
	LDR	R1, [R11], #WDSIZE 	@ first element in current row
	LDR	R2, [R11], #WDSIZE	@ second element in current row
	LDR	R3, [R11], #WDSIZE	@ third element in curent row
	BL	printf		@ Call printf
	SUBS	R5, #1		@ Dec loop counter
	BNE	printloop	@ If not zero loop

	mov	r0, #0		@ return code
	pop	{R4-R12, PC}	@ Restore regs and return

.data
@ First matrix
A:	.word	1, 2, 3
	.word	4, 5, 6
	.word	7, 8, 9
@ Second matrix
B:	.word	9, 8, 7
	.word	6, 5, 4
	.word	3, 2, 1
@ Result matix
C:	.fill	9, 4, 0

prtstr: .asciz  "%3d  %3d  %3d\n"
