.data
b:	.word	0	# temp_a in original
c:	.word	0	# y in original
a:	.word	0	# x in original
.text
li $v0, 5
syscall
la $t2, a
lw $t0, 0($t2)
move $t0, $v0
move $t7, $t0
la $t3, b
sw $t7, 0($t3)
la $t3, b
lw $t7, 0($t3)
addi $t7, $t7, 35
la $t3, b
sw $t7, 0($t3)
la $t3, b
lw $t7, 0($t3)
la $t8, c
lw $t1, 0($t8)
move $t1, $t7
li $v0, 1
move $a0, $t1
syscall
