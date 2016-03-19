.data
c:	.word	0	# y in original
a:	.word	0	# x in original
b:	.word	0	# temp_a in original
.text
li $v0, 5
syscall
la $t7, a
lw $t2, 0($t7)
move $t2, $v0
move $t0, $t2
la $t4, b
sw $t0, 0($t4)
la $t4, b
lw $t0, 0($t4)
addi $t0, $t0, 35
la $t4, b
sw $t0, 0($t4)
la $t4, b
lw $t0, 0($t4)
la $t8, c
lw $t9, 0($t8)
move $t9, $t0
li $v0, 1
move $a0, $t9
syscall
