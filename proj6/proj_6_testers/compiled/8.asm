.data
d:	.word	0	# y in original
e:	.word	0	# z in original
c:	.word	0	# x in original
.text
li $v0, 5
syscall
la $t1, c
lw $t7, 0($t1)
move $t7, $v0
li $v0, 5
syscall
la $s4, d
lw $t3, 0($s4)
move $t3, $v0
li $v0, 5
syscall
la $s5, e
lw $s6, 0($s5)
move $s6, $v0
move $t9, $t7
add $t9, $t9, $t3
add $t9, $t9, $s6
addi $t9, $t9, 7
move $t3, $t9
li $v0, 1
move $a0, $t3
syscall
