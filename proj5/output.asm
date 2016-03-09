.data
a:	.word	2	# x in original
b:	.word	5	# y in original
.text
la $t9, a
lw $t7, 0($t9)
li $v0, 1
move $a0, $t7
syscall
la $t8, b
lw $t1, 0($t8)
li $v0, 1
move $a0, $t1
syscall
li $v0, 1
li $a0, 7
syscall
li $v0, 5
syscall
move $t7, $v0
li $v0, 5
syscall
move $t1, $v0
li $v0, 1
move $a0, $t7
syscall
li $v0, 1
move $a0, $t1
syscall
