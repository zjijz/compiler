.data
a:	.word	0	# x in original
c:	.word	0	# z in original
b:	.word	0	# y in original
.text
li $v0, 5
syscall
la $s4, a
lw $s6, 0($s4)
move $s6, $v0
li $v0, 5
syscall
la $t1, b
lw $s5, 0($t1)
move $s5, $v0
li $v0, 5
syscall
la $t5, c
lw $t9, 0($t5)
move $t9, $v0
move $s2, $s6
add $s2, $s2, $s5
add $s2, $s2, $t9
addi $s2, $s2, 7
move $s5, $s2
li $v0, 1
move $a0, $s5
syscall
