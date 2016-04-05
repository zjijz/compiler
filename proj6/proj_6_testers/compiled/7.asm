.data
d:	.word	0	# y in original
c:	.word	0	# x in original
.text
li $v0, 5
syscall
la $s2, c
lw $t9, 0($s2)
move $t9, $v0
move $s4, $t9
addi $s4, $s4, 35
move $t4, $s4
li $v0, 1
move $a0, $t4
syscall
