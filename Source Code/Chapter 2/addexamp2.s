
@
@ Example of 64-Bit addition with the ADD/ADC instructions.
@
.global _start	            @ Provide program starting address to linker

@ Load the registers with some data
@ First 64-bit number is 0x00000003FFFFFFFF
_start:	MOV	R2, #0x00000003
	MOV	R3, #0xFFFFFFFF	@Assembler will change to MVN
@ Second 64-bit number is 0x0000000500000001
	MOV	R4, #0x00000005
	MOV	R5, #0x00000001

	ADDS	R1, R3, R5	@ Lower order word
	ADC	R0, R2, R4	@ Higher order word

@ Setup the parameters to exit the programc
@ and then call Linux to do it.
@ R0 is the return code and will be what we
@ calculated above.
        mov     R7, #1      @ Service command code 1 terminates this program
        svc     0           @ Call linux to terminate the program


