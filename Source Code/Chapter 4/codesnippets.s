@
@ This file contains the various code
@ snippets from Chapter 4. This ensures
@ they compile and gives you a chance
@ to single step through them.
@ They are labeled, so you can set a
@ breakpoint at the one you are interested in.

.global _start

_start: 
@ uncomment the next 2 lines if you want to see
@ an infinite loop
l1:	@ MOV R1, #1
	@B _start

l2:	CMP R4, #45
	BEQ _start

l3:	MOV R2, #1 @ R2 holds I
loop:	@ body of the loop goes here.
	@ Most of the logic is at the end
	ADD R2, #1 @ I = I + 1
	CMP R2, #10
	BLE loop @ IF I &lt;= 10 goto loop

l4:	MOV R2, #10 @R2 holds I
loop2:	@ body of the loop goes here.
	@ The CMP is redundant since we
	@ are doing SUBS.
	SUBS R2, #1 @ I = I -1
	BNE loop2 @ branch until I = 0

l5:	@ R4 is X and has been initialized
	MOV R4, #5
loop3:	CMP R4, #5
	BGE loopdone
	@ … other statements in the loop body …
	MOV r4, #6
	B loop3
loopdone: @program continues

l6:	CMP R5, #10
	BGE elseclause
	@ … if statements …
	B endif
elseclause:
	@ … else statements …
endif: @ continue on after the /then/else …

l7:	@ mask off the high order byte
	AND R6, #0xFF000000
	@ shift the byte down to the
	@ low order position.
	LSR R6, #24

l8:	ORR R6, #0xFF

l9:	BIC R6, #0xFF

@ Setup the parameters to exit the program
@ and then call Linux to do it.
	MOV     R0, #0      @ Use 0 return code
        MOV     R7, #1      @ Service command code 1 terminates this program
        SVC     0           @ Call linux to terminate the program

.data
helloworld:	.ascii "Hello World!"
