.data
d:	.word	0	# y in original
c:	.word	0	# x in original
e:	.word	0	# z in original
.text
li $v0, 5
syscall
la $t2, c
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s1, d
lw $s3, 0($s1)
move $s3, $v0
li $v0, 5
syscall
la $s2, e
lw $t6, 0($s2)
move $t6, $v0
move $t9, $t4
add $t9, $t9, $s3
add $t9, $t9, $t6
addi $t9, $t9, 7
move $s3, $t9
li $v0, 1
move $a0, $s3
syscall
