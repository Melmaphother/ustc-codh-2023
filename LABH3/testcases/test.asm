.data 
array: .word 1
temp: .word 0x0000015c
.text
beq x0, x0, Next1
jal, ERROR
Next1: # addi
    addi t0, x0, 1
    addi t1, x0, 2
    beq t0, t1, ERROR
    addi t1, x0, 1
    beq t0, t1, Next3
    jal t4, ERROR
Next3: # add
    addi s0, x0, 3  #s0 = 3
    addi t1, x0, -1  # t1 = -1
    add t1, t1, t0  # t1 = 1 - 1 = 0
    beq t1, x0, Next4
    jal t4, ERROR
Next4: # sub
    
    addi t1, x0, 1
    sub t1, t1, t0
    beq t1, x0, Next5
    jal t4, ERROR
Next5: # and
    
    addi t0, x0, 0x7
    addi t1, x0, 0x70
    and t0, t1, t0
    beq t0, x0, Next6
    jal t4, ERROR
Next6: # or
    
    addi t0, x0, 0x77
    addi t1, x0, 0x70
    addi t2, x0, 0x77
    or t0, t1, t0
    beq t0, t2, Next7
   jal t4, ERROR
Next7:  # xor
    
    addi t0, x0, 0x77
    addi t1, x0, 0x70
    addi t2, x0, 0x07
    xor t0, t1, t0
    beq t0, t2, Next8
    jal t4, ERROR
Next8: # blt
    
    addi t0, x0, 1
    addi t1, x0, 2
    blt t0, t1, Next9
    jal t4, ERROR
Next9: # slli
    
    addi t0, x0, 1
    addi t2, x0, 0x10
    slli t1, t0, 4
    beq t1, t2, Next10
    jal t4, ERROR
Next10: # srli
    
    addi t0, x0, 0x10
    addi t2, x0, 1
    srli t1, t0, 4
    beq t1, t2, Next11
    jal t4, ERROR
Next11: # srai
    
    addi t0, x0, -1     #t0 = 0xffff_ffff
    srai t1, t0, 3      #t1 = 0xffff_ffff
    beq t1, t0, Next12
    jal t4, ERROR
Next12:  # lui
    
    addi t0, x0, 0
    lui t0, 1
    addi t1, x0, 1
    slli t1, t1, 12   # t1 = 0x1000
    beq t0, t1, Next13
    jal t4, ERROR
Next13: # bltu
    
    addi t0, x0, 2
    slli t0, t0, 15
    slli t0, t0, 15  # t0 = 0x8000_0000
    srli t1, t0, 1   # t1 = 0x4000_0000
    bltu t1, t0, Next14 # 0x4000_0000 < 0x8000_0000  unsigned
    jal t4, ERROR
Next14: # jal
    
    jal t0, Next15
    jal t4, ERROR
Next15:
    
    beq t0, t0, Next16
    jal t4, ERROR
Next16: # jalr
    
    #add t1, x0, pc  #t1 is the pc of `addi t1, t1, 4`
    #addi t1, t1, 8  #t1 is t2
    auipc t1, 0
    jalr t2, 12(t1)
    jal t4, ERROR
Next17: # lw
    
    la t0, array
    lw t1, 0(t0)
    addi t2, x0, 1
    beq t1, t2, Next18
    jal t4, ERROR
Next18: # sw
    
    la t0, array
    addi t1, x0, 2
    sw t1, 0(t0)
    lw t2, 0(t0)
    beq t1, t2, Next19
    jal t4, ERROR
Next19:  # auipc
    
    la t0, temp
    lw t1, 0(t0)
    auipc t2, 0
    beq t1, t2, True
    jal t4, ERROR
    
    
True:
    addi t5, x0 ,1
    jal t4, True
    
ERROR:
    addi t5, x0, 0
    jal t4, ERROR

