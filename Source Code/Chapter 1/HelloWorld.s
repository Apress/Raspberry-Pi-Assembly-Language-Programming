@
@ Assembler program to print "Hello World!"
@ to stdout.
@
@ R0-R2 - parameters to linux function services
@ R7 - linux function number
@

.global _start	            @ Provide program starting address to linker

@ Setup the parameters to print hello world
@ and then call Linux to do it.
_start: mov	R0, #1	    @ 1 = StdOut
	ldr	R1, =helloworld @ string to print
	mov	R2, #13	    @ length of our string
	mov	R7, #4	    @ linux write system call
	svc	0 	    @ Call linux to output the string

@ Setup the parameters to exit the program
@ and then call Linux to do it.
	mov     R0, #0      @ Use 0 return code
        mov     R7, #1      @ Service command code 1 terminates this program
        svc     0           @ Call linux to terminate the program

.data
helloworld:      .ascii  "Hello World!\n"

