.data
a:	.word	12	# x in original
c:	.word	14	# z in original
d:	.word	0	# temp_a in original
b:	.word	13	# y in original
.text
li $t2, 12
la $t1, d
sw $t2, 0($t1)
la $t1, d
lw $t2, 0($t1)
subi $t2, $t2, 13
la $t1, d
sw $t2, 0($t1)
la $t1, d
lw $t2, 0($t1)
subi $t2, $t2, 14
la $t1, d
sw $t2, 0($t1)
la $t1, d
lw $t2, 0($t1)
li $v0, 1
move $a0, $t2
syscall
