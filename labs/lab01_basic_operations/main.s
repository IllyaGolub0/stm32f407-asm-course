        .syntax unified
        .cpu cortex-m4
        .thumb

        .section .text
        .global main
        .type main, %function
        .thumb_func

main:
        mov r0, #100      @ R0 = A
        mov r1,   #37     @ R1 = B

        add r2, r0, r1    @ R2 = A + B
        sub r3, r0, r1    @ R3 = A - B    

stop:
        nop
        b       stop

.size main, .-main