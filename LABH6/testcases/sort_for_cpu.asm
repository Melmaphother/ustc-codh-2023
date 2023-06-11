.text
Start:
    addi t2, x0, 200
    addi t2, t2, 200
    addi t2, t2, 200
    addi t2, t2, 200
    addi t2, t2, 200 

    addi t3, x0, 2

    addi t1, x0, 2
    slli t1, t1, 12    # t1 = 0x0000_2000 (the addr of the initial number)
    sw  t3, 0(t1)      # store the initial number

    add a0, x0, t2     # store the size

    Loop:
        addi t2, t2, -1
        beq  t2, x0, PRINT        # if t2 == 0,jump to end
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
	jal x1, PRINT

