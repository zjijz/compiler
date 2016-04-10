.data
d:	.word	0	# y in original
c:	.word	0	# x in original
.text
li $v0, 5
syscall
la $t5, c
lw $t6, 0($t5)
move $t6, $v0
move $s1, $t6
addi $s1, $s1, 35
move $t7, $s1
li $v0, 1
move $a0, $t7
syscall
