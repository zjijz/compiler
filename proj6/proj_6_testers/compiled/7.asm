.data
d:	.word	0	# y in original
c:	.word	0	# x in original
.text
li $v0, 5
syscall
la $s4, c
lw $t2, 0($s4)
move $t2, $v0
move $t8, $t2
addi $t8, $t8, 35
move $t3, $t8
li $v0, 1
move $a0, $t3
syscall
