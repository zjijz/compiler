.data
e:	.word	0	# temp_b in original
h:	.word	0	# temp_e in original
b:	.word	13	# y in original
g:	.word	0	# temp_d in original
a:	.word	12	# x in original
f:	.word	0	# temp_c in original
d:	.word	0	# temp_a in original
c:	.word	14	# z in original
.text
li $t9, 12
la $t1, d
sw $t9, 0($t1)
li $t9, 13
la $t1, e
sw $t9, 0($t1)
li $t9, 12
la $t1, f
sw $t9, 0($t1)
li $t9, 40
la $t1, g
sw $t9, 0($t1)
li $t9, 12
la $t1, h
sw $t9, 0($t1)
la $t1, h
lw $t9, 0($t1)
addi $t9, $t9, 12
la $t1, h
sw $t9, 0($t1)
la $t1, h
lw $t9, 0($t1)
addi $t9, $t9, 13
la $t1, h
sw $t9, 0($t1)
la $t1, h
lw $t9, 0($t1)
la $t3, g
lw $t6, 0($t3)
sub $t6, $t6, $t9
la $t3, g
sw $t6, 0($t3)
la $t3, g
lw $t6, 0($t3)
subi $t6, $t6, 14
la $t3, g
sw $t6, 0($t3)
la $t3, g
lw $t6, 0($t3)
la $t5, f
lw $t0, 0($t5)
add $t0, $t0, $t6
la $t5, f
sw $t0, 0($t5)
la $t5, f
lw $t0, 0($t5)
addi $t0, $t0, 14
la $t5, f
sw $t0, 0($t5)
la $t5, f
lw $t0, 0($t5)
la $t4, e
lw $t7, 0($t4)
sub $t7, $t7, $t0
la $t4, e
sw $t7, 0($t4)
la $t4, e
lw $t7, 0($t4)
la $t2, d
lw $t8, 0($t2)
sub $t8, $t8, $t7
la $t2, d
sw $t8, 0($t2)
la $t2, d
lw $t8, 0($t2)
li $v0, 1
move $a0, $t8
syscall
