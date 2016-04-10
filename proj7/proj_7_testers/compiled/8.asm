.data
c:	.word	0	# x in original
e:	.word	0	# z in original
d:	.word	0	# y in original
.text
li $v0, 5
syscall
la $s2, c
lw $t2, 0($s2)
move $t2, $v0
li $v0, 5
syscall
la $t0, d
lw $t5, 0($t0)
move $t5, $v0
li $v0, 5
syscall
la $s6, e
lw $s3, 0($s6)
move $s3, $v0
move $t9, $t2
add $t9, $t9, $t5
add $t9, $t9, $s3
addi $t9, $t9, 7
move $t5, $t9
li $v0, 1
move $a0, $t5
syscall
