.data
d:	.float	27.0	# y in original
c:	.word	0	# x in original
.text
li $v0, 5
syscall
la $t0, c
lw $s1, 0($t0)
move $s1, $v0
li $at, 1104674816
mtc1 $at, $f4
mtc1 $f4, $f24
cvt.s.w $f24, $f24
div.s $f4, $f4, $f24
la $t9, d
l.s $f24, 0($t9)
mov.s $f24, $f4
li $v0, 2
mov.s $f12, $f24
syscall
