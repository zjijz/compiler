.data
d:	.word	0	# temp_c in original
b:	.word	0	# temp_a in original
c:	.word	0	# temp_b in original
a:	.word	99	# x in original
.text
li $t4, 0
la $t2, b
sw $t4, 0($t2)
la $t2, b
lw $t4, 0($t2)
subi $t4, $t4, 20
la $t2, b
sw $t4, 0($t2)
la $t2, b
lw $t4, 0($t2)
li $v0, 1
move $a0, $t4
syscall
li $a0, 10
syscall
li $a0, 30
syscall
li $t1, 99
la $t8, c
sw $t1, 0($t8)
la $t8, c
lw $t1, 0($t8)
addi $t1, $t1, 10
la $t8, c
sw $t1, 0($t8)
la $t8, c
lw $t1, 0($t8)
move $a0, $t1
syscall
li $t9, 10
la $t5, d
sw $t9, 0($t5)
la $t5, d
lw $t9, 0($t5)
addi $t9, $t9, 99
la $t5, d
sw $t9, 0($t5)
la $t5, d
lw $t9, 0($t5)
move $a0, $t9
syscall
