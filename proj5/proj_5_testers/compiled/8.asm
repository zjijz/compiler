.data
a:	.word	0	# x in original
b:	.word	0	# y in original
c:	.word	0	# z in original
d:	.word	0	# temp_a in original
.text
li $v0, 5
syscall
la $t3, a
lw $t1, 0($t3)
move $t1, $v0
li $v0, 5
syscall
la $t6, b
lw $t0, 0($t6)
move $t0, $v0
li $v0, 5
syscall
la $t2, c
lw $t7, 0($t2)
move $t7, $v0
move $t8, $t1
la $t4, d
sw $t8, 0($t4)
la $t4, d
lw $t8, 0($t4)
addi $t8, $t8, 3
la $t4, d
sw $t8, 0($t4)
la $t4, d
lw $t8, 0($t4)
add $t8, $t8, $t0
la $t4, d
sw $t8, 0($t4)
la $t4, d
lw $t8, 0($t4)
addi $t8, $t8, 4
la $t4, d
sw $t8, 0($t4)
la $t4, d
lw $t8, 0($t4)
add $t8, $t8, $t7
la $t4, d
sw $t8, 0($t4)
la $t4, d
lw $t8, 0($t4)
move $t0, $t8
li $v0, 1
move $a0, $t0
syscall
