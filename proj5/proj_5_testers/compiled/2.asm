.data
d:	.word	0	# temp_a in original
b:	.word	13	# y in original
a:	.word	12	# x in original
c:	.word	14	# z in original
e:	.word	0	# answer in original
.text
li $t2, 12
la $t9, d
sw $t2, 0($t9)
la $t9, d
lw $t2, 0($t9)
addi $t2, $t2, 13
la $t9, d
sw $t2, 0($t9)
la $t9, d
lw $t2, 0($t9)
addi $t2, $t2, 14
la $t9, d
sw $t2, 0($t9)
la $t9, d
lw $t2, 0($t9)
la $t8, e
lw $t7, 0($t8)
move $t7, $t2
li $v0, 1
move $a0, $t7
syscall
