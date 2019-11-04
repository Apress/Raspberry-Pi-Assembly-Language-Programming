@
@ This file contains the various code
@ snippets from Chapter 11. This ensures
@ they compile and gives you a chance
@ to single step through them.
@ They are labeled, so you can set a
@ breakpoint at the one you are interested in.

.global _start

_start: 
l1:	VPUSH	{S16-S31}
	VPOP	{S16-S31}

l2:	LDR	R1, =fp1
	VLDR	S4, [R1]
	VLDR	S4, [R1, #4]
	VSTR	S4, [R1]
	VSTR	S4, [R1, #4]

l3:	VADD.F32	S4, S1

l4:	VMRS	APSR_nzcv, FPSCR

@ Setup the parameters to exit the program
@ and then call Linux to do it.
	MOV     R0, #0      @ Use 0 return code
        MOV     R7, #1      @ Service command code 1 terminates this program
        SVC     0           @ Call linux to terminate the program

.data
.single	1.343, 4.343e20, -0.4343, -0.4444e-10
.double	-4.24322322332e-10, 3.141592653589793
fp1:	.single	3.14159
fp2:	.single	4.3341
fp3:	.single 0.0
