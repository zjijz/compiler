.data
c:	.word	14	# z in original
b:	.word	13	# y in original
d:	.word	0	# temp_a in original
a:	.word	12	# x in original
.text
li $t1, 12
la $t0, d
sw $t1, 0($t0)
la $t0, d
lw $t1, 0($t0)
subi $t1, $t1, 40
la $t0, d
sw $t1, 0($t0)
la $t0, d
lw $t1, 0($t0)
addi $t1, $t1, 13
la $t0, d
sw $t1, 0($t0)
la $t0, d
lw $t1, 0($t0)
addi $t1, $t1, 14
la $t0, d
sw $t1, 0($t0)
la $t0, d
lw $t1, 0($t0)
subi $t1, $t1, 200
la $t0, d
sw $t1, 0($t0)
la $t0, d
lw $t1, 0($t0)
addi $t1, $t1, 14
la $t0, d
sw $t1, 0($t0)
la $t0, d
lw $t1, 0($t0)
addi $t1, $t1, 14
la $t0, d
sw $t1, 0($t0)
la $t0, d
lw $t1, 0($t0)
addi $t1, $t1, 12
la $t0, d
sw $t1, 0($t0)
la $t0, d
lw $t1, 0($t0)
li $v0, 1
move $a0, $t1
syscall
