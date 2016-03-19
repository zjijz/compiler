.data
a:	.word	12	# x in original
c:	.word	14	# z in original
d:	.word	0	# temp_a in original
b:	.word	13	# y in original
e:	.word	0	# temp_b in original
.text
li $t3, 12
la $t6, d
sw $t3, 0($t6)
li $t3, 13
la $t6, e
sw $t3, 0($t6)
la $t6, e
lw $t3, 0($t6)
subi $t3, $t3, 14
la $t6, e
sw $t3, 0($t6)
la $t6, e
lw $t3, 0($t6)
la $t8, d
lw $t5, 0($t8)
sub $t5, $t5, $t3
la $t8, d
sw $t5, 0($t8)
la $t8, d
lw $t5, 0($t8)
li $v0, 1
move $a0, $t5
syscall
