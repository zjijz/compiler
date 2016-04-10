.data
c:	.word	0	# x in original
d:	.word	0	# y in original
.text
li $v0, 5
syscall
la $t0, c
lw $s2, 0($t0)
move $s2, $v0
move $s1, $s2
addi $s1, $s1, 35
move $s5, $s1
li $v0, 1
move $a0, $s5
syscall
