# This example shows an implementation of the mathematical
# factorial function (! function) to find the factorial value of !7 = 5040.

.data
argument: .word   7
str1:     .string "Factorial value of "
str2:     .string " is "

.text
main:
        lw  a0, argument   # Load argument from static data
        jal ra, fact       # Jump-and-link to the 'fact' label

        # Print the result to console
        mv  a1, a0
        lw  a0, argument
        jal ra, printResult

        # Exit program
        li a7, 10
        ecall

fact:
        addi sp, sp, -16
        sw   ra, 8(sp)
        sw   a0, 0(sp)
        addi t0, a0, -1
        bge  t0, zero, nfact

        addi a0, zero, 1
        addi sp, sp, 16
        jr x1

nfact:
        addi a0, a0, -1
        jal  ra, fact
        addi t1, a0, 0
        lw   a0, 0(sp)
        lw   ra, 8(sp)
        addi sp, sp, 16
        mul a0, a0, t1
        ret

# --- printResult ---
# a0: Value which factorial number was computed from
# a1: Factorial result
printResult:
        mv t0, a0
        mv t1, a1
        la a0, str1
        li a7, 4
        ecall
        mv a0, t0
        li a7, 1
        ecall
        la a0, str2
        li a7, 4
        ecall
        mv a0, t1
        li a7, 1
        ecall
        ret
