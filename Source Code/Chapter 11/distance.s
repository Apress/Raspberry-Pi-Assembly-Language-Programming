
@
@ Example function to calculate the distance
@ between two points in single precision
@ floating point.
@
@ Inputs:
@	R0 - pointer to the 4 FP numbers
@		they are x1, y1, x2, y2
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
	vldm	R0, {S0-S3}

	@ calc s4 = x2 - x1
	vsub.f32	S4, S2, S0
	@ calc s5 = y2 - y1
	vsub.f32	S5, S3, S1
	@ calc s4 = S4 * S4 (x2-X1)^2
	vmul.f32	S4, S4
	@ calc s5 = s5 * s5 (Y2-Y1)^2
	vmul.f32	S5, S5
	@ calc S4 = S4 + S5
	vadd.f32	S4, S5
	@ calc sqrt(S4)
	vsqrt.f32	S4, S4 
	@ move result to R0 to be returned
	vmov	R0, S4

	@ restore what we preserved.
	vpop	{S16-S31}
	pop	{R4-R12, PC}

