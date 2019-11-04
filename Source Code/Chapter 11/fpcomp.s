
@
@ Function to compare to floating point numbers
@ the parameters are a pointer to the two numbers
@ and an error epsilon.
@
@ Inputs:
@	R0 - pointer to the 3 FP numbers
@		they are x1, x2, e
@ Outputs:
@	R0 - 1 if they are equal, else 0

.global fpcomp @ Allow function to be called by others

@ 
fpcomp:	
	@ push all registers to be safe, we don't really
	@ need to push so many.
	push	{R4-R12, LR}
	vpush	{S16-S31}

	@ load all 3 numbers at once
	vldm	R0, {S0-S2}

	@ calc s3 = x2 - x1
	vsub.f32	S3, S1, S0
	vabs.f32	S3, S3
	vcmp.f32	S3, S2
	vmrs		APSR_nzcv, FPSCR
	BLE		notequal
	MOV		R0, #1
	B		done	
	
notequal:MOV		R0, #0
 	
	@ restore what we preserved.
done:	vpop	{S16-S31}
	pop	{R4-R12, PC}

