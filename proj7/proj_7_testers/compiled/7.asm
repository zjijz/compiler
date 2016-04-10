.data
c:	.word	0	# x in original
d:	.word	0	# y in original
.text
li $v0, 5
syscall
la $s2, c
lw $s4, 0($s2)
move $s4, $v0
move $s1, $s4
addi $s1, $s1, 35
move $t2, $s1
li $v0, 1
move $a0, $t2
syscall
