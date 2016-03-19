.data
f:	.word	0	# temp_c in original
c:	.word	14	# z in original
a:	.word	12	# x in original
d:	.word	0	# temp_a in original
g:	.word	0	# temp_d in original
h:	.word	0	# temp_e in original
e:	.word	0	# temp_b in original
b:	.word	13	# y in original
.text
li $t4, 12
la $t3, d
sw $t4, 0($t3)
li $t4, 13
la $t3, e
sw $t4, 0($t3)
li $t4, 12
la $t3, f
sw $t4, 0($t3)
li $t4, 40
la $t3, g
sw $t4, 0($t3)
li $t4, 12
la $t3, h
sw $t4, 0($t3)
la $t3, h
lw $t4, 0($t3)
addi $t4, $t4, 12
la $t3, h
sw $t4, 0($t3)
la $t3, h
lw $t4, 0($t3)
addi $t4, $t4, 13
la $t3, h
sw $t4, 0($t3)
la $t3, h
lw $t4, 0($t3)
la $t5, g
lw $t2, 0($t5)
sub $t2, $t2, $t4
la $t5, g
sw $t2, 0($t5)
la $t5, g
lw $t2, 0($t5)
subi $t2, $t2, 14
la $t5, g
sw $t2, 0($t5)
la $t5, g
lw $t2, 0($t5)
la $t1, f
lw $t7, 0($t1)
add $t7, $t7, $t2
la $t1, f
sw $t7, 0($t1)
la $t1, f
lw $t7, 0($t1)
addi $t7, $t7, 14
la $t1, f
sw $t7, 0($t1)
la $t1, f
lw $t7, 0($t1)
la $t6, e
lw $t9, 0($t6)
sub $t9, $t9, $t7
la $t6, e
sw $t9, 0($t6)
la $t6, e
lw $t9, 0($t6)
la $t8, d
lw $t0, 0($t8)
sub $t0, $t0, $t9
la $t8, d
sw $t0, 0($t8)
la $t8, d
lw $t0, 0($t8)
li $v0, 1
move $a0, $t0
syscall
