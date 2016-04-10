.data
d:	.float	0	# f2 in original
c:	.float	0	# f in original
.text
li $v0, 6
syscall
la $t8, c
l.s $f4, 0($t8)
mov.s $f4, $f0
li $v0, 6
syscall
la $t2, d
l.s $f24, 0($t2)
mov.s $f24, $f0
li $v0, 2
mov.s $f12, $f4
syscall
mov.s $f12, $f24
syscall
