.data
b:	.word	5	# y in original
a:	.word	2	# x in original
.text
li $v0, 1
li $a0, 2
syscall
li $v0, 1
li $a0, 5
syscall
