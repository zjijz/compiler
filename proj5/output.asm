.data
b:	.word	0	# temp_a in original
d:	.word	0	# temp_c in original
c:	.word	0	# temp_b in original
a:	.word	99	# x in original
.text
li $t8, 0
la $t7, b
sw $t8, 0($t7)
la $t7, b
lw $t8, 0($t7)
subi $t8, $t8, 20
la $t7, b
sw $t8, 0($t7)
la $t7, b
lw $t8, 0($t7)
li $v0, 1
move $a0, $t8
syscall
li $a0, 10
syscall
li $a0, 30
syscall
li $t3, 99
la $t5, c
sw $t3, 0($t5)
la $t5, c
lw $t3, 0($t5)
addi $t3, $t3, 10
la $t5, c
sw $t3, 0($t5)
la $t5, c
lw $t3, 0($t5)
move $a0, $t3
syscall
li $t9, 10
la $t0, d
sw $t9, 0($t0)
la $t0, d
lw $t9, 0($t0)
addi $t9, $t9, 99
la $t0, d
sw $t9, 0($t0)
la $t0, d
lw $t9, 0($t0)
move $a0, $t9
syscall
