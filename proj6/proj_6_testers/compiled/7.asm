.data
d:	.word	0	# y in original
c:	.word	0	# x in original
.text
li $v0, 5
syscall
la $t6, c
lw $t4, 0($t6)
move $t4, $v0
move $t9, $t4
addi $t9, $t9, 35
move $t8, $t9
li $v0, 1
move $a0, $t8
syscall
