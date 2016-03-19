.data
d:	.word	0	# temp_a in original
e:	.word	0	# answer in original
b:	.word	13	# y in original
a:	.word	12	# x in original
c:	.word	14	# z in original
.text
li $t8, 12
la $t6, d
sw $t8, 0($t6)
la $t6, d
lw $t8, 0($t6)
addi $t8, $t8, 13
la $t6, d
sw $t8, 0($t6)
la $t6, d
lw $t8, 0($t6)
addi $t8, $t8, 14
la $t6, d
sw $t8, 0($t6)
la $t6, d
lw $t8, 0($t6)
la $t2, e
lw $t7, 0($t2)
move $t7, $t8
li $v0, 1
move $a0, $t7
syscall
