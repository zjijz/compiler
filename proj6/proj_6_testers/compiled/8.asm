.data
d:	.word	0	# y in original
e:	.word	0	# z in original
c:	.word	0	# x in original
.text
li $v0, 5
syscall
la $s4, c
lw $t0, 0($s4)
move $t0, $v0
li $v0, 5
syscall
la $s2, d
lw $s5, 0($s2)
move $s5, $v0
li $v0, 5
syscall
la $t9, e
lw $s6, 0($t9)
move $s6, $v0
move $t7, $t0
add $t7, $t7, $s5
add $t7, $t7, $s6
addi $t7, $t7, 7
move $s5, $t7
li $v0, 1
move $a0, $s5
syscall
