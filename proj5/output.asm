.data
a:	.word	0	# x in original
.text
li $v0, 5
syscall
la $t9, a
lw $t1, 0($t9)
move $t1, $v0
li $v0, 1
move $a0, $t1
syscall
