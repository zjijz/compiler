.data
c:	.word	0	# z in original
a:	.word	0	# x in original
b:	.word	0	# y in original
d:	.word	0	# temp_a in original
.text
li $v0, 5
syscall
la $t9, a
lw $t6, 0($t9)
move $t6, $v0
li $v0, 5
syscall
la $t2, b
lw $t5, 0($t2)
move $t5, $v0
li $v0, 5
syscall
la $t1, c
lw $t4, 0($t1)
move $t4, $v0
move $t0, $t6
la $t8, d
sw $t0, 0($t8)
la $t8, d
lw $t0, 0($t8)
addi $t0, $t0, 3
la $t8, d
sw $t0, 0($t8)
la $t8, d
lw $t0, 0($t8)
add $t0, $t0, $t5
la $t8, d
sw $t0, 0($t8)
la $t8, d
lw $t0, 0($t8)
addi $t0, $t0, 4
la $t8, d
sw $t0, 0($t8)
la $t8, d
lw $t0, 0($t8)
add $t0, $t0, $t4
la $t8, d
sw $t0, 0($t8)
la $t8, d
lw $t0, 0($t8)
move $t5, $t0
li $v0, 1
move $a0, $t5
syscall
