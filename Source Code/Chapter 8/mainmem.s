@
@ Assembler program to flash three LEDs connnected to the
@ Raspberry Pi GPIO port using direct memory access.
@
@ r6 - loop variable to flash lights 10 times
@
.include "gpiomem.s"

.global _start	            @ Provide program starting address to linker
_start: mapMem
        nanoSleep

        GPIODirectionOut pin17
        GPIODirectionOut pin27
        GPIODirectionOut pin22
        @ setup a loop counter for 10 iterations
        mov         r6, #10

loop:   GPIOTurnOn   pin17
        nanoSleep
        GPIOTurnOff   pin17
        GPIOTurnOn    pin27
        nanoSleep
        GPIOTurnOff   pin27
        GPIOTurnOn    pin22
        nanoSleep
brk1:
        GPIOTurnOff   pin22
        @decrement loop counter and see if we loop
        subs    r6, #1      @ Subtract 1 from loop register setting status register
        bne     loop        @ If we haven't counted down to 0 then loop

_end:   mov     R0, #0      @ Use 0 return code
        mov     R7, #1      @ Service command code 1 terminates this program
        svc     0           @ Linus command to terminate program
