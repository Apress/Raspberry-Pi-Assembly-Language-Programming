
@
@ Main program to test our distance function
@
@ r7 - loop counter
@ r8 - address to current set of points

.global main @ Provide program starting address to linker

@

	.equ	N, 3	@ Number of points.
 
main:	
	push	{R4-R12, LR}

	ldr	r8, =points	@ pointer to current points
	
	mov	r7, #N		@ number of loop iterations

loop:	mov	r0, r8		@ move pointer to parameter 1 (r0)

	bl	distance	@ call distance function

@ need to take the single precision return value
@ and convert it to a double, because the C printf
@ function can only print doubles.
	vmov	s2, r0		@ move back to fpu for conversion
	vcvt.f64.f32 d0, s2	@ convert single to double
	vmov	r2, r3, d0	@ return double to r2, r3
	ldr	r0, =prtstr	@ load print string
	bl	printf		@ print the distance

	add	r8, #(8*4) 	@ 8 elements each 4 bytes
	subs	r7, #1		@ decrement loop counter
	bne	loop		@ loop if more points

	mov	r0, #0		@ return code
	pop	{R4-R12, PC}

.data
points:	.single	0.0, 0.0, 0.0, 0.0, 17.0, 4.0, 2.0, 1.0
	.single	1.3, 5.4, 3.1, -1.5, -2.4, 0.323, 3.4, -0.232
	.single 1.323e10, -1.2e-4, 34.55, 5454.234, 10.9, -3.6, 4.2, 1.3
prtstr:	.asciz "Distance = %f\n"


