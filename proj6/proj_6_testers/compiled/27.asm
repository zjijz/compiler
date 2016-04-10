.data
c:	.float	0	# f in original
d:	.float	0	# f2 in original
.text
li $v0, 6
syscall
la $t0, c
l.s $f18, 0($t0)
mov.s $f18, $f0
li $v0, 6
syscall
la $s3, d
l.s $f10, 0($s3)
mov.s $f10, $f0
li $v0, 2
mov.s $f12, $f18
syscall
mov.s $f12, $f10
syscall
