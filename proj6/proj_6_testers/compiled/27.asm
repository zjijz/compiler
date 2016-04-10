.data
c:	.float	0	# f in original
d:	.float	0	# f2 in original
.text
li $v0, 6
syscall
la $s2, c
l.s $f9, 0($s2)
mov.s $f9, $f0
li $v0, 6
syscall
la $s1, d
l.s $f7, 0($s1)
mov.s $f7, $f0
li $v0, 2
mov.s $f12, $f9
syscall
mov.s $f12, $f7
syscall
