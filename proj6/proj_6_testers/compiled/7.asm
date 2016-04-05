.data
d:	.word	0	# y in original
c:	.word	0	# x in original
.text
li $v0, 5
syscall
move $t8, $v0
move $t6, $t8
addi $t6, $t6, 35
move $s5, $t6
li $v0, 1
move $a0, $s5
syscall
