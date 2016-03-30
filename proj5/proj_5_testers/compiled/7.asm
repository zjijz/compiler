.data
b:	.word	0	# y in original
a:	.word	0	# x in original
.text
li $v0, 5
syscall
la $s4, a
lw $t9, 0($s4)
move $t9, $v0
move $s1, $t9
addi $s1, $s1, 35
la $s3, b
lw $t7, 0($s3)
move $t7, $s1
li $v0, 1
move $a0, $t7
syscall
