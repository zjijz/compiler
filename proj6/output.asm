.data
c:	.word	0	# x in original
d:	.float	27.0	# y in original
.text
li $v0, 5
syscall
la $s4, c
lw $t3, 0($s4)
move $t3, $v0
li $at, 1104674816
mtc1 $at, $f13
mov.s $f30, $f13
mtc1 $t3, $f16
cvt.s.w $f16, $f16
div.s $f30, $f30, $f16
la $t6, d
l.s $f16, 0($t6)
mov.s $f16, $f30
li $v0, 2
mov.s $f12, $f16
syscall
mov.s $f8, $f16
mtc1 $t3, $f4
cvt.s.w $f4, $f4
mul.s $f8, $f8, $f4
mov.s $f12, $f8
syscall
mov.s $f4, $f16
mtc1 $t3, $f18
cvt.s.w $f18, $f18
div.s $f4, $f4, $f18
mov.s $f12, $f4
syscall
mov.s $f18, $f16
mtc1 $t3, $f29
cvt.s.w $f29, $f29
add.s $f18, $f18, $f29
mov.s $f12, $f18
syscall
move $t2, $t3
mtc1 $t2, $f29
cvt.s.w $f29, $f29
sub.s $f29, $f29, $f16
mov.s $f12, $f29
syscall
