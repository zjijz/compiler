.data
b:	.word	12	# y in original
a:	.word	12	# x in original
.text
li $v0, 1
li $a0, 12
syscall
