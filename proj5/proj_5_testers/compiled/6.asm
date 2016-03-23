.data
c:	.word	14	# z in original
d:	.word	0	# temp_a in original
a:	.word	12	# x in original
b:	.word	13	# y in original
.text
li $t9, 12
la $t7, d
sw $t9, 0($t7)
la $t7, d
lw $t9, 0($t7)
subi $t9, $t9, 40
la $t7, d
sw $t9, 0($t7)
la $t7, d
lw $t9, 0($t7)
addi $t9, $t9, 13
la $t7, d
sw $t9, 0($t7)
la $t7, d
lw $t9, 0($t7)
addi $t9, $t9, 14
la $t7, d
sw $t9, 0($t7)
la $t7, d
lw $t9, 0($t7)
subi $t9, $t9, 200
la $t7, d
sw $t9, 0($t7)
la $t7, d
lw $t9, 0($t7)
addi $t9, $t9, 14
la $t7, d
sw $t9, 0($t7)
la $t7, d
lw $t9, 0($t7)
addi $t9, $t9, 14
la $t7, d
sw $t9, 0($t7)
la $t7, d
lw $t9, 0($t7)
addi $t9, $t9, 12
la $t7, d
sw $t9, 0($t7)
la $t7, d
lw $t9, 0($t7)
li $v0, 1
move $a0, $t9
syscall
