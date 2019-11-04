@ Various macros to perform file I/O

@ The fd parameter needs to be a register.
@ Uses R0, R1, R7.
@ Return code is in R0.

.include "unistd.s"

.equ	O_RDONLY, 0
.equ	O_WRONLY, 1
.equ	O_CREAT,  0100
.equ	O_RDWR,   2
.equ	O_SYNC,   04010000
.equ	O_CLOEXEC, 02000000
.equ	S_RDWR,   0666

.macro  openFile    fileName
        ldr         r0, =\fileName
        ldr         r1, =flags
	ldr 	    r1, [r1]
	mov	    r2, #S_RDWR		@ RW access rights
        mov	    r7, #sys_open
        svc         0
.endm
.macro  readFile   fd, buffer, length
        mov         r0, \fd      @ file descriptor
        ldr         r1, =\buffer
        mov         r2, #\length
        mov         r7, #sys_read
        svc         0
.endm
.macro  writeFile   fd, buffer, length
        mov         r0, \fd      @ file descriptor
        ldr         r1, =\buffer
        mov         r2, \length
        mov         r7, #sys_write
        svc         0
.endm
.macro  flushClose  fd
@fsync syscall
        mov         r0, \fd
        mov         r7, #sys_fsync
        svc         0

@close syscall
        mov         r0, \fd
        mov         r7, #sys_close
        svc         0
.endm

.data
flags: .word O_RDWR+O_SYNC+O_CLOEXEC
.text
