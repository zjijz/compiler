.data
c:	.word	0	# str in original
.text
li $v0, 8
syscall
la $t5, c
lw $t3, 0($t5)
move $t3, $v0
