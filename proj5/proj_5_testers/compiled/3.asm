.data
d:	.word	0	# temp_a in original
c:	.word	14	# z in original
b:	.word	13	# y in original
a:	.word	12	# x in original
.text
li $t0, 12
la $t4, d
sw $t0, 0($t4)
la $t4, d
lw $t0, 0($t4)
subi $t0, $t0, 13
la $t4, d
sw $t0, 0($t4)
la $t4, d
lw $t0, 0($t4)
subi $t0, $t0, 14
la $t4, d
sw $t0, 0($t4)
la $t4, d
lw $t0, 0($t4)
li $v0, 1
move $a0, $t0
syscall
