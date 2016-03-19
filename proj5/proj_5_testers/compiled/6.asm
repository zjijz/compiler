.data
c:	.word	14	# z in original
b:	.word	13	# y in original
a:	.word	12	# x in original
d:	.word	0	# temp_a in original
.text
li $t7, 12
la $t8, d
sw $t7, 0($t8)
la $t8, d
lw $t7, 0($t8)
subi $t7, $t7, 40
la $t8, d
sw $t7, 0($t8)
la $t8, d
lw $t7, 0($t8)
addi $t7, $t7, 13
la $t8, d
sw $t7, 0($t8)
la $t8, d
lw $t7, 0($t8)
addi $t7, $t7, 14
la $t8, d
sw $t7, 0($t8)
la $t8, d
lw $t7, 0($t8)
subi $t7, $t7, 200
la $t8, d
sw $t7, 0($t8)
la $t8, d
lw $t7, 0($t8)
addi $t7, $t7, 14
la $t8, d
sw $t7, 0($t8)
la $t8, d
lw $t7, 0($t8)
addi $t7, $t7, 14
la $t8, d
sw $t7, 0($t8)
la $t8, d
lw $t7, 0($t8)
addi $t7, $t7, 12
la $t8, d
sw $t7, 0($t8)
la $t8, d
lw $t7, 0($t8)
li $v0, 1
move $a0, $t7
syscall
