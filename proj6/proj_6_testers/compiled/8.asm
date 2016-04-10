.data
c:	.word	0	# x in original
d:	.word	0	# y in original
e:	.word	0	# z in original
.text
li $v0, 5
syscall
la $s1, c
lw $t3, 0($s1)
move $t3, $v0
li $v0, 5
syscall
la $s2, d
lw $t5, 0($s2)
move $t5, $v0
li $v0, 5
syscall
la $t8, e
lw $s6, 0($t8)
move $s6, $v0
move $t1, $t3
add $t1, $t1, $t5
add $t1, $t1, $s6
addi $t1, $t1, 7
move $t5, $t1
li $v0, 1
move $a0, $t5
syscall
