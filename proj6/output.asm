.data
c:	.word	0	# a in original
e:	.word	0	# c in original
d:	.word	0	# b in original
.text
li $v0, 5
syscall
la $t0, c
lw $t5, 0($t0)
move $t5, $v0
move $t6, $t5
move $s4, $t5
add $s4, $s4, $t5
add $s4, $s4, $t5
move $t7, $s4
li $v0, 1
move $a0, $t5
syscall
move $a0, $t6
syscall
move $a0, $t7
syscall
