@
@ Assembler program to convert a string to
@ all upper case by calling a function.
@
@ R0-R2, R7 - used by macros to call linux
@ R8 - input file descriptor
@ R9 - output file descriptor
@ R10 - number of characters read
@

.include "fileio.s"

.equ	BUFFERLEN, 250

.global _start	            @ Provide program starting address to linker

_start:	openFile	inFile, O_RDONLY
	MOVS		R8, R0	@ save file descriptor
	BPL		nxtfil  @ pos number file opened ok
	MOV		R1, #1  @ stdout
	LDR		R2, =inpErrsz	@ Error msg
	LDR		R2, [R2]
	writeFile	R1, inpErr, R2 @ print the error
	B		exit

nxtfil: openFile	outFile, O_CREAT+O_WRONLY
	MOVS		R9, R0	@ save file descriptor
	BPL		loop    @ pos number file opened ok
	MOV		R1, #1
	LDR		R2, =outErrsz
	LDR		R2, [R2]
	writeFile	R1, outErr, R2
	B		exit

@ loop through file until done.
loop:	readFile	R8, buffer, BUFFERLEN
	MOV		R10, R0	@ Keep the length read
	MOV		R1, #0	@ Null terminator for string

	@ setup call to toupper and call function
	LDR		R0, =buffer	@ first param for toupper
	STRB		R1, [R0, R10]	@ put null at end of string.
	LDR		R1, =outBuf
	BL		toupper		

	writeFile	R9, outBuf, R10

	CMP		R10, #BUFFERLEN
	BEQ		loop

	flushClose	R8
	flushClose	R9

@ Setup the parameters to exit the program
@ and then call Linux to do it.
exit:	MOV     R0, #0      @ Use 0 return code
        MOV     R7, #1      @ Service command code 1 terminates this program
        SVC     0           @ Call linux to terminate the program

.data
inFile:  .asciz  "main.s"
outFile: .asciz	 "upper.txt"
buffer:	.fill	BUFFERLEN + 1, 1, 0
outBuf:	.fill	BUFFERLEN + 1, 1, 0
inpErr: .asciz	"Failed to open input file.\n"
inpErrsz: .word  .-inpErr 
outErr:	.asciz	"Failed to open output file.\n"
outErrsz: .word	.-outErr

