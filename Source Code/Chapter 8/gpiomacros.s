@ Various macros to access the GPIO pins
@ on the Raspberry Pi.
@
@ R8 - file descriptor.
@

.include "fileio.s"

@ Macro nanoSleep to sleep .1 second
@ Calls Linux nanosleep entry point which is function 162.
@ Pass a reference to a timespec in both r0 and r1
@ First is input time to sleep in seconds and nanoseconds.
@ Second is time left to sleep if interrupted (which we ignore)
.macro  nanoSleep
        ldr         r0, =timespecsec
        ldr         r1, =timespecsec
        mov         r7, #sys_nanosleep
        svc         0
.endm
.macro  GPIOExport  pin
        openFile    gpioexp
        mov         r8, r0      @ save the file descriptor
        writeFile   r8, \pin, #2

        flushClose  r8
.endm
.macro  GPIODirectionOut   pin
        @ copy pin into filename pattern
        ldr         r1, =\pin
        ldr         r2, =gpiopinfile
        add         r2, #20
        ldrb        r3, [r1], #1 @ load pin and post increment
        strb        r3, [r2], #1 @ store to filename and post increment
        ldrb        r3, [r1]
        strb        r3, [r2]
        openFile    gpiopinfile
        mov         r8, r0      @ save the file descriptor
        writeFile   r8, outstr, #3
        flushClose  r8
.endm
.macro  GPIOWrite   pin, value
        @ copy pin into filename pattern
        ldr         r1, =\pin
        ldr         r2, =gpiovaluefile
        add         r2, #20
        ldrb        r3, [r1], #1    @ load pin and post increment
        strb        r3, [r2], #1    @ store to filename and post increment
        ldrb        r3, [r1]
        strb        r3, [r2]
        openFile    gpiovaluefile
        mov         r8, r0      @ save the file descriptor
        writeFile   r8, \value, #1
        flushClose  r8
.endm

.data
timespecsec:   .word   0
timespecnano:  .word   100000000
gpioexp:    .asciz  "/sys/class/gpio/export"
gpiopinfile: .asciz "/sys/class/gpio/gpioxx/direction"
gpiovaluefile: .asciz "/sys/class/gpio/gpioxx/value"
outstr:     .asciz  "out"
            .align  2          @ save users of this file having to do this.
.text
