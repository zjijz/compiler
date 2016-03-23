.data
g:	.word	0	# temp_d in original
c:	.word	14	# z in original
b:	.word	13	# y in original
d:	.word	0	# temp_a in original
a:	.word	12	# x in original
e:	.word	0	# temp_b in original
h:	.word	0	# temp_e in original
f:	.word	0	# temp_c in original
.text
li $t4, 12
la $t0, d
sw $t4, 0($t0)
li $t4, 13
la $t0, e
sw $t4, 0($t0)
li $t4, 12
la $t0, f
sw $t4, 0($t0)
li $t4, 40
la $t0, g
sw $t4, 0($t0)
li $t4, 12
la $t0, h
sw $t4, 0($t0)
la $t0, h
lw $t4, 0($t0)
addi $t4, $t4, 12
la $t0, h
sw $t4, 0($t0)
la $t0, h
lw $t4, 0($t0)
addi $t4, $t4, 13
la $t0, h
sw $t4, 0($t0)
la $t0, h
lw $t4, 0($t0)
la $t1, g
lw $t5, 0($t1)
sub $t5, $t5, $t4
la $t1, g
sw $t5, 0($t1)
la $t1, g
lw $t5, 0($t1)
subi $t5, $t5, 14
la $t1, g
sw $t5, 0($t1)
la $t1, g
lw $t5, 0($t1)
la $t9, f
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, f
sw $t8, 0($t9)
la $t9, f
lw $t8, 0($t9)
addi $t8, $t8, 14
la $t9, f
sw $t8, 0($t9)
la $t9, f
lw $t8, 0($t9)
la $t2, e
lw $t3, 0($t2)
sub $t3, $t3, $t8
la $t2, e
sw $t3, 0($t2)
la $t2, e
lw $t3, 0($t2)
la $t7, d
lw $t6, 0($t7)
sub $t6, $t6, $t3
la $t7, d
sw $t6, 0($t7)
la $t7, d
lw $t6, 0($t7)
li $v0, 1
move $a0, $t6
syscall
