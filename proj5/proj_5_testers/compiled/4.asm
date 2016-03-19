.data
d:	.word	0	# temp_a in original
e:	.word	0	# temp_b in original
c:	.word	14	# z in original
a:	.word	12	# x in original
b:	.word	13	# y in original
.text
li $t1, 12
la $t0, d
sw $t1, 0($t0)
li $t1, 13
la $t0, e
sw $t1, 0($t0)
la $t0, e
lw $t1, 0($t0)
subi $t1, $t1, 14
la $t0, e
sw $t1, 0($t0)
la $t0, e
lw $t1, 0($t0)
la $t9, d
lw $t4, 0($t9)
sub $t4, $t4, $t1
la $t9, d
sw $t4, 0($t9)
la $t9, d
lw $t4, 0($t9)
li $v0, 1
move $a0, $t4
syscall
