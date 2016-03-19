.data
d:	.word	0	# temp_a in original
a:	.word	12	# x in original
b:	.word	13	# y in original
c:	.word	14	# z in original
.text
li $t1, 12
la $t9, d
sw $t1, 0($t9)
la $t9, d
lw $t1, 0($t9)
subi $t1, $t1, 13
la $t9, d
sw $t1, 0($t9)
la $t9, d
lw $t1, 0($t9)
subi $t1, $t1, 14
la $t9, d
sw $t1, 0($t9)
la $t9, d
lw $t1, 0($t9)
li $v0, 1
move $a0, $t1
syscall
