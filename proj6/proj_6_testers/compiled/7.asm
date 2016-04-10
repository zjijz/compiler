.data
c:	.word	0	# x in original
d:	.word	0	# y in original
.text
li $v0, 5
syscall
la $t4, c
lw $s1, 0($t4)
move $s1, $v0
move $t0, $s1
addi $t0, $t0, 35
move $t9, $t0
li $v0, 1
move $a0, $t9
syscall
