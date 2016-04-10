.data
c:	.word	0	# b in original
.text
li $v0, 8
syscall
la $t5, c
lw $t4, 0($t5)
move $t4, $v0
