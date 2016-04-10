.data
c:	.word	0	# x in original
d:	.float	27.0	# y in original
.text
li $v0, 5
syscall
la $s2, c
lw $t0, 0($s2)
move $t0, $v0
li $v1, 1104674816
mtc1 $v1, $f13
mov.s $f10, $f13
mtc1 $t0, $f16
cvt.s.w $f16, $f16
div.s $f10, $f10, $f16
la $s5, d
l.s $f16, 0($s5)
mov.s $f16, $f10
li $v0, 2
mov.s $f12, $f16
syscall
mov.s $f7, $f16
mtc1 $t0, $f27
cvt.s.w $f27, $f27
mul.s $f7, $f7, $f27
mov.s $f12, $f7
syscall
mov.s $f27, $f16
mtc1 $t0, $f29
cvt.s.w $f29, $f29
div.s $f27, $f27, $f29
mov.s $f12, $f27
syscall
mov.s $f29, $f16
mtc1 $t0, $f24
cvt.s.w $f24, $f24
add.s $f29, $f29, $f24
mov.s $f12, $f29
syscall
move $t8, $t0
mtc1 $t8, $f24
cvt.s.w $f24, $f24
sub.s $f24, $f24, $f16
mov.s $f12, $f24
syscall
