.data
c:	.word	0	# z in original
b:	.word	0	# y in original
a:	.word	0	# x in original
d:	.word	0	# temp_a in original
.text
li $v0, 5
syscall
la $t0, a
lw $t7, 0($t0)
move $t7, $v0
li $v0, 5
syscall
la $t1, b
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $t6, c
lw $t5, 0($t6)
move $t5, $v0
move $t8, $t7
la $t9, d
sw $t8, 0($t9)
la $t9, d
lw $t8, 0($t9)
addi $t8, $t8, 3
la $t9, d
sw $t8, 0($t9)
la $t9, d
lw $t8, 0($t9)
add $t8, $t8, $t2
la $t9, d
sw $t8, 0($t9)
la $t9, d
lw $t8, 0($t9)
addi $t8, $t8, 4
la $t9, d
sw $t8, 0($t9)
la $t9, d
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, d
sw $t8, 0($t9)
la $t9, d
lw $t8, 0($t9)
move $t2, $t8
li $v0, 1
move $a0, $t2
syscall
