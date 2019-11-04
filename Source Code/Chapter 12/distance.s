
@
@ Example function to calculate the distance
@ between 4D two points in single precision
@ floating point using the NEON Processor
@
@ Inputs:
@	R0 - pointer to the 8 FP numbers
@		they are (x1, x2, x3, x4),
@			 (y1, y2, y3, y4)
@ Outputs:
@	R0 - the length (as single precision FP)

.global distance @ Allow function to be called by others

@ 
distance:	
	@ push all registers to be safe, we don't really
	@ need to push so many.
	push	{R4-R12, LR}
	vpush	{S16-S31}

	@ load all 4 numbers at once
	vldm	R0, {Q2-Q3}

	@ calc q1 = q2 - q3
	vsub.f32	Q1, Q2, Q3
	@ calc Q1 = Q1 * Q1 (xi-yi)^2
	vmul.f32	Q1, Q1, Q1
	@ calc S0 = S0 + S1 + S2 + S3
	vpadd.f32	D0, D2, D3
	vadd.f32	S0, S1
	@ calc sqrt(S4)
	vsqrt.f32	S4, S0 
	@ move result to R0 to be returned
	vmov	R0, S4

	@ restore what we preserved.
	vpop	{S16-S31}
	pop	{R4-R12, PC}

