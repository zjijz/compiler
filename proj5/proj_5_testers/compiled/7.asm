.data
a:	.word	0	# x in original
b:	.word	0	# y in original
.text
li $v0, 5
syscall
la $t1, a
lw $s5, 0($t1)
move $s5, $v0
move $t5, $s5
addi $t5, $t5, 35
la $t4, b
lw $t2, 0($t4)
move $t2, $t5
li $v0, 1
move $a0, $t2
syscall
