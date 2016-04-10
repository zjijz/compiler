.data
d:	.word	0	# y in original
c:	.word	0	# x in original
e:	.word	0	# z in original
.text
li $v0, 5
syscall
la $t2, c
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s3, d
lw $t8, 0($s3)
move $t8, $v0
li $v0, 5
syscall
la $s2, e
lw $t9, 0($s2)
move $t9, $v0
move $t3, $t7
add $t3, $t3, $t8
add $t3, $t3, $t9
addi $t3, $t3, 7
move $t8, $t3
li $v0, 1
move $a0, $t8
syscall
