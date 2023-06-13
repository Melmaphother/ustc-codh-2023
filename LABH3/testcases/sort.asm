.data
array: .word 5, 5, 3, 8, 4, 2   # initial array
.text
SORT:
    la a0 , array   
    lw a0, 0(a0)# a0 is the length
    la a1, array  
    addi a1, a1, 4  #a1 is &array[1]
    li a2, 4
    addi a3, a0, -1 # a3 = n - 1 
    mul a3, a3, a2  # a3 = 4 * (n - 1)
    add a3, a3, a1  # a3 = array + 4 * (n - 1)
    addi a4, a3, 4   # a4 = array + 4 * n
    mv t0, a1
Outer_SORT:
    beq t0, a3, End   # i = array + 4 * (n - 1) finish
    mv t1, t0
    addi t1, t1, 4   # j = i + 4
Inner_SORT:
    beq t1, a4, Next_Outer  # j = n 
    lw t2, 0(t0)  # t2 = array[i]
    lw t3, 0(t1)  # t3 = array[j]
    blt t2, t3, Next_Inner  # array[i] < array[j] not need to swap
    sw t2, 0(t1) 
    sw t3, 0(t0)
Next_Inner:
    addi t1, t1, 4  # j = j + 4
    j Inner_SORT
Next_Outer:
    addi t0, t0, 4  # i = i + 1
    j Outer_SORT

End:
    li a7, 10
    ecall

