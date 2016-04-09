.data
c:	.word	0	# f in original
d:	.word	0	# f2 in original
.text
li $v0, 6
syscall
la $t2, c
l.s $f17, 0($t2)
mov.s $f17, $f0
li $v0, 6
syscall
la $t5, d
l.s $f9, 0($t5)
mov.s $f9, $f0
li $v0, 2
mov.s $f12, $f17
syscall
mov.s $f12, $f9
syscall
