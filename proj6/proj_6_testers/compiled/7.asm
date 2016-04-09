.data
c:	.word	0	# x in original
d:	.word	0	# y in original
.text
li $v0, 5
syscall
la $t2, c
lw $t1, 0($t2)
move $t1, $v0
move $t9, $t1
addi $t9, $t9, 35
move $t4, $t9
li $v0, 1
move $a0, $t4
syscall
