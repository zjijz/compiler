.data
a:	.word	12	# x in original
c:	.word	14	# z in original
d:	.word	39	# answer in original
b:	.word	13	# y in original
.text
li $v0, 1
li $a0, 39
syscall
