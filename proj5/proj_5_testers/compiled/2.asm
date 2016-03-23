.data
a:	.word	12	# x in original
d:	.word	0	# temp_a in original
e:	.word	0	# answer in original
b:	.word	13	# y in original
c:	.word	14	# z in original
.text
li $t9, 12
la $t1, d
sw $t9, 0($t1)
la $t1, d
lw $t9, 0($t1)
addi $t9, $t9, 13
la $t1, d
sw $t9, 0($t1)
la $t1, d
lw $t9, 0($t1)
addi $t9, $t9, 14
la $t1, d
sw $t9, 0($t1)
la $t1, d
lw $t9, 0($t1)
la $t8, e
lw $t3, 0($t8)
move $t3, $t9
li $v0, 1
move $a0, $t3
syscall
