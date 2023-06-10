.data
n: .word 0x7

.text

#test data hazards
addi x1, x0, 1      # x1=1
addi x2, x1, 1      # x2=2
add x3, x1, x2      # x3=3
add x4, x1, x3      # x4=4
add x5, x1, x4      # x5=5

add x6, x1, x5      # x6=6
add x6, x6, x5      # x6=11
add x6, x6, x5      # x6=16
add x6, x6, x5      # x6=21

#test load-use hazard
la x15, n
lw x7, (x15)        # x7=7
addi x8, x7, 1      # x8=8
addi x9, x8, -8     # x9=0
sw x9, (x15)        # n=0

#test control hazard
beq x9, x0, branch  # br
add x10, x9, x5     # x10=5 do not execute
add x10, x10, x6    # x10=20 do not execute
branch:
jal x11, next       # x11=PC+4
next:
add x12, x11, x0    # x12=x11
stop: 
jal x0, stop

#do not execute
add x13, x11, x12
add x14, x13, x12
add x15, x14, x13


