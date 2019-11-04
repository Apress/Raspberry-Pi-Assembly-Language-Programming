@
@ This file contains the various code
@ snippets from Chapter 15. This ensures
@ they compile and gives you a chance
@ to single step through them.
@ They are labeled, so you can set a
@ breakpoint at the one you are interested in.

.syntax unified

.global _start

@ ARM Code
_start: 
l1:	LDR	R0, =myfunc
	BLX	R0

@ Setup the parameters to exit the program
@ and then call Linux to do it.
	MOV     R0, #0      @ Use 0 return code
        MOV     R7, #1      @ Service command code 1 terminates this program
        SVC     0           @ Call linux to terminate the program

.thumb_func
myfunc: 
L2:	ADDS	R2, R1, #2
	ADDS	R2, #153
	ADDS	R2, R0, R1
	
L3:	IT	EQ
	ADDEQ	R2, R1

L4:	SUBS	r3, #32
	UXTB	r3, r3

	BX	LR
