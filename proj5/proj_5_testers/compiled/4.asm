.data
e:	.word	0	# temp_b in original
b:	.word	13	# y in original
c:	.word	14	# z in original
a:	.word	12	# x in original
d:	.word	0	# temp_a in original
.text
li $t0, 12
la $t1, d
sw $t0, 0($t1)
li $t0, 13
la $t1, e
sw $t0, 0($t1)
la $t1, e
lw $t0, 0($t1)
subi $t0, $t0, 14
la $t1, e
sw $t0, 0($t1)
la $t1, e
lw $t0, 0($t1)
la $t5, d
lw $t4, 0($t5)
sub $t4, $t4, $t0
la $t5, d
sw $t4, 0($t5)
la $t5, d
lw $t4, 0($t5)
li $v0, 1
move $a0, $t4
syscall
