.data
a:	.word	0	# x in original
c:	.word	0	# z in original
b:	.word	0	# y in original
.text
li $v0, 5
syscall
la $t8, a
lw $s4, 0($t8)
move $s4, $v0
li $v0, 5
syscall
la $s2, b
lw $t7, 0($s2)
move $t7, $v0
li $v0, 5
syscall
la $t3, c
lw $t5, 0($t3)
move $t5, $v0
move $s1, $s4
add $s1, $s1, $t7
add $s1, $s1, $t5
addi $s1, $s1, 7
move $t7, $s1
li $v0, 1
move $a0, $t7
syscall
