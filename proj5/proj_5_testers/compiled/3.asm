.data
c:	.word	14	# z in original
b:	.word	13	# y in original
a:	.word	12	# x in original
.text
li $v0, 1
li $a0, -15
syscall
