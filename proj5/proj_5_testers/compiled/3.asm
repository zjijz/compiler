.data
a:	.word	12	# x in original
b:	.word	13	# y in original
c:	.word	14	# z in original
d:	.word	0	# temp_a in original
.text
li $t2, 12
la $t7, d
sw $t2, 0($t7)
la $t7, d
lw $t2, 0($t7)
subi $t2, $t2, 13
la $t7, d
sw $t2, 0($t7)
la $t7, d
lw $t2, 0($t7)
subi $t2, $t2, 14
la $t7, d
sw $t2, 0($t7)
la $t7, d
lw $t2, 0($t7)
li $v0, 1
move $a0, $t2
syscall
