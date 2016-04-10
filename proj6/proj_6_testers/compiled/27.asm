.data
d:	.float	0	# f2 in original
c:	.float	0	# f in original
.text
li $v0, 6
syscall
la $s1, c
l.s $f23, 0($s1)
mov.s $f23, $f0
li $v0, 6
syscall
la $t3, d
l.s $f28, 0($t3)
mov.s $f28, $f0
li $v0, 2
mov.s $f12, $f23
syscall
mov.s $f12, $f28
syscall
