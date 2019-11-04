@
@ Assembler program to print a register in hex
@ to stdout.
@
@ R0-R2 - parameters to linux function services
@ R1 - is also address of byte we are writing
@ R4 - register to print
@ R5 - loop index
@ R6 - current character
@ R7 - linux function number
@

.global _start	            @ Provide program starting address to linker

_start: MOV	R4, #0x12AB @ number to print
	MOVT	R4, #0xDE65 @ high bits of number to print
	LDR	R1, =hexstr @ start of string
	ADD	R1, #9	    @ start at least sig digit
@ The loop is FOR r5 = 8 TO 1 STEP -1
	MOV	R5, #8	    @ 8 digits to print
loop:	AND	R6, r4, #0xf @ mask of least sig digit
@ If R6 >= 10 then goto letter
	CMP	R6, #10	    @ is 0-9 or A-F
	BGE	letter
@ Else its a number so convert to an ASCII digit
	ADD	R6, #'0'
	B	cont	@ goto to end if
letter: @ handle the digits A to F
	ADD	R6, #('A'-10)
cont:	@ end if
	STRB	R6, [R1]	@ store ascii digit
	SUB	R1, #1		@ decrement address for next digit
	LSR	R4, #4	@ shift off the digit we just processed

	@ next R5
	SUBS	R5, #1		@ step R5 by -2
	BNE	loop		@ another for loop if not done

@ Setup the parameters to print our hex number
@ and then call Linux to do it.
mov	R0, #1	    @ 1 = StdOut
	ldr	R1, =hexstr @ string to print
	mov	R2, #11	    @ length of our string
	mov	R7, #4	    @ linux write system call
	svc	0 	    @ Call linux to output the string

@ Setup the parameters to exit the program
@ and then call Linux to do it.
	mov     R0, #0      @ Use 0 return code
        mov     R7, #1      @ Service command code 1 terminates this program
        svc     0           @ Call linux to terminate the program

.data
hexstr:      .ascii  "0x12345678\n"

