.data
c:	.float	0	# f in original
d:	.float	0	# f2 in original
.text
li $v0, 6
syscall
la $t6, c
l.s $f30, 0($t6)
mov.s $f30, $f0
li $v0, 6
syscall
la $s6, d
l.s $f16, 0($s6)
mov.s $f16, $f0
li $v0, 2
mov.s $f12, $f30
syscall
mov.s $f12, $f16
syscall
