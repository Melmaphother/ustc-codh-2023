.text
Start:
    addi t0, x0, 0xff
    slli t0, t0, 8     # t0 = 0xff00
    addi t1, x0, 1     # t1 = 1
    addi a0, x0, 1     # a0 = 1

    sw  t1, 0x00(t0)   # LED show 1 and can input the size of array

Check_In1:
    lw  t2, 0x10(t0)   # swx_vld
    beq t2, a0, In1    # if swx_vld == 1 jump to In1
    jal a1, Check_In1
In1:
    lw  t2, 0x14(t0)   # t2 is the size of the array

    addi t1, x0, 2     # t1 = 2;

    sw  t1, 0x00(t0)   # LED show 2 and can input the initial number

Check_In2:
    lw  t3, 0x10(t0)
    beq t3, a0, In2
    jal a1, Check_In2
In2:
    lw  t3, 0x14(t0)   # t3 is the initial number

    addi t1, x0, 2
    slli t1, t1, 12    # t1 = 0x0000_2000 (the addr of the initial number)
    sw  t3, 0(t1)      # store the initial number


    add a0, x0, t2     # store the size

    Loop:
        addi t2, t2, -1
        beq  t2, x0, SORT         # if t2 == 0,jump to end
        addi t4, x0, 0x1          # t4 = 0x1

        slli t4, t4, 7            # t4 = 0x0000_0080
        and  t5, t3, t4           # 7bit
        slli t5, t5, 2            # 7 to 9

        addi t4, x0, 0x1          # t4 = 0x1
        and  t6, t3, t4           # 0bit
        slli t6, t6, 9            # 0 to 9

        xor  t5, t5, t6

        srli t3, t3, 1
        add  t3, t3, t5           # t3 = {t5, t3 >> 1}

        addi t1, t1, 4
        sw   t3, 0(t1)
        jal  t5, Loop


    
SORT:
    addi t5, x0, 4
    sw t5, 0x00(t0)   # a mark means finish generating initial array, LED[2] is lighting

    lw a5, 0x18(t0)  # read the counter

    addi a1, x0, 2
    slli a1, a1, 12  # a1 = 0x0000_2000 (the addr of the first number)
    li a2, 4
    addi a3, a0, -1  # a3 = n - 1 
    add a3, a3, a3   # a3 = 2 * (n - 1)
    add a3, a3, a3   # a3 = 4 * (n - 1)
    add a3, a3, a1   # a3 = array + 4 * (n - 1)
    addi a4, a3, 4   # a4 = array + 4 * n
    mv t0, a1
Outer_SORT:
    beq t0, a3, Clean_Dirty   # i = array + 4 * (n - 1) finish
    mv t1, t0
    addi t1, t1, 4    # j = i + 4
Inner_SORT:
    beq t1, a4, Next_Outer  # j = n 
    lw t2, 0(t0)            # t2 = array[i]
    lw t3, 0(t1)            # t3 = array[j]
    blt t2, t3, Next_Inner  # array[i] < array[j] not need to swap
    sw t2, 0(t1) 
    sw t3, 0(t0)
Next_Inner:
    addi t1, t1, 4  # j = j + 4
    jal t4, Inner_SORT
Next_Outer:
    addi t0, t0, 4  # i = i + 1
    jal t4, Outer_SORT


Clean_Dirty:
    addi t0, x0, 0xff
    slli t0, t0, 8     # t0 = 0xff00
    
    lw a6, 0x18(t0)   # read the counter
    addi t5, x0, 8
    sw t5, 0x00(t0)   # a mark means finish sorting all numbers, LED[3] is lighting

    addi a0, x0, 64  # cache has 64 lines
    addi t1, x0, 2
    slli t1, t1, 12  # t1 = 0x0000_2000 (the addr of the first number)
    Loop2:    
        lw t2, 0(t1)
        addi t1, t1, 0x10   # t1 = 0x0000_2010
        addi a0, a0, -1
        beq  a0, x0, PRINT
        jal  a1, Loop2


PRINT:
    sub a4, a6, a5

    addi a0, x0, 1     # a0 = 1
Check_Out1:
    lw  t1, 0x08(t0)
    beq t1, a0, Out1   # if seg_rdy == 1 jump to Out1
    jal a1, Check_Out1
Out1:
    sw  a4, 0x0C(t0)        # DISP output

End: 
    jal x1, End
