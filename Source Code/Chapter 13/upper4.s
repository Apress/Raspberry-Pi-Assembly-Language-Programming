@
@ Assembler program to convert a string to
@ all upper case.
@
@ R0 - address of input string
@ R1 - address of output string
@ Q0 - 8 characters to be processed
@ Q1 - contains all a's for comparison
@ Q2 - result of comparison with 'a's
@ Q3 - all 25's for comp
@ Q8 - spaces for bic operation

.global toupper	     @ Allow other files to call this routine

	.EQU	N, 4
toupper:
	LDR	R3, =aaas
	VLDM    R3, {Q1}	@ Load Q1 with all a's
	LDR	R3, =endch
	VLDM	R3, {Q3}	@ Load Q3 with all 25's
	LDR	R3, =spaces
	VLDM	R3, {Q8}	@ Load Q8 with all spaces
	MOV	R3, #N
@ The loop is until byte pointed to by R1 is non-zero
loop:	VLDM	R0!, {Q0}	@ load 16 characters and increment pointer
	VSUB.U8	Q2, Q0, Q1	@ Subtract 'a's
	VCLE.U8	Q2, Q2, Q3	@ compare chars to 25's
	VAND.U8	Q2, Q2,Q8 	@ and result with spaces
	VBIC.U8	Q0, Q0, Q2	@ kill the bit that makes it lowercase
	VSTM	R1!, {Q0}	@ store character to output str
	SUBS	R3, #1		@ decrement loop counter and set flags
	BNE	loop		@ loop if character isn't null
	MOV	R0, #(N*16)	@ get the length by subtracting the pointers
	BX	LR		@ Return to caller
.data
aaas:    .fill  16, 1, 'a'	@ 16 a's
endch:  .fill	16, 1, 25  	@ after shift, chars are 0-25
spaces:	.fill	16, 1, 0x20     @ spaces for bic
.align 4
