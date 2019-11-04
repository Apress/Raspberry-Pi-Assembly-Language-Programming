
@
@ Main program to test our distance function
@
@ r7 - loop counter
@ r8 - address to current set of points

.global main @ Provide program starting address to linker

@

	.equ	N, 100	@ Number of additions.
 
main:	
	push	{R4-R12, LR}
	
@ Add up one hundred cents and test if they equal $1.00

	mov	r7, #N		@ number of loop iterations

@ load cents, running sum and real sum to FPU
	ldr	r0, =cent
	vldm	r0, {S0-S2}
loop:
	@ add cent to running sum
	vadd.f32	s1, s0
	subs	r7, #1		@ decrement loop counter
	bne	loop		@ loop if more points

	@ compare running sum to real sum
	vcmp.f32 s1, s2
	@ copy FPSCR to CSPR
	vmrs		APSR_nzcv, FPSCR
	@ print if the numbers are equal or not
	beq	equal
	ldr	r0, =notequalstr
	bl 	printf
	b	next
equal:  ldr	r0, =equalstr
	bl	printf	

next:
@ load pointer to running sum, real sum and epsilon
	ldr	r0, =runsum
	vldm	r0, {S0-S2}
@ call comparison function
	bl	fpcomp 		@ call comparison function
@ compare return code to 1 and print if the numbers
@ are equal or not (within epsilon).
	cmp	r0, #1
	beq	equal2
	ldr	r0, =notequalstr
	bl 	printf
	b	done
equal2:  ldr	r0, =equalstr
	bl	printf	

done:	mov	r0, #0		@ return code
	pop	{R4-R12, PC}

.data
cent:	.single	0.01
runsum: .single 0.0
sum:	.single 1.00
epsilon:.single 0.00001
equalstr:	.asciz "equal\n"
notequalstr: .asciz "not equal\n"


