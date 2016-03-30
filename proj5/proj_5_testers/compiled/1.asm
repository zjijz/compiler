.data
a:	.word	12	# x in original
b:	.word	12	# y in original
.text
li $v0, 1
li $a0, 12
syscall
