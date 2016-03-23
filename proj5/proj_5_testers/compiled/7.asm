.data
a:	.word	0	# x in original
b:	.word	0	# temp_a in original
c:	.word	0	# y in original
.text
li $v0, 5
syscall
la $t7, a
lw $t1, 0($t7)
move $t1, $v0
move $t4, $t1
la $t8, b
sw $t4, 0($t8)
la $t8, b
lw $t4, 0($t8)
addi $t4, $t4, 35
la $t8, b
sw $t4, 0($t8)
la $t8, b
lw $t4, 0($t8)
la $t2, c
lw $t6, 0($t2)
move $t6, $t4
li $v0, 1
move $a0, $t6
syscall
