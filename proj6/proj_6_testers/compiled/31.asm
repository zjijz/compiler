.data
d:	.float	27.0	# y in original
c:	.word	0	# x in original
.text
li $v0, 5
syscall
la $s3, c
lw $s5, 0($s3)
move $s5, $v0
li $v1, 1104674816
mtc1 $v1, $f13
mov.s $f6, $f13
mtc1 $s5, $f20
cvt.s.w $f20, $f20
div.s $f6, $f6, $f20
la $s4, d
l.s $f20, 0($s4)
mov.s $f20, $f6
li $v0, 2
mov.s $f12, $f20
syscall
mov.s $f18, $f20
mtc1 $s5, $f16
cvt.s.w $f16, $f16
mul.s $f18, $f18, $f16
mov.s $f12, $f18
syscall
mov.s $f16, $f20
mtc1 $s5, $f27
cvt.s.w $f27, $f27
div.s $f16, $f16, $f27
mov.s $f12, $f16
syscall
mov.s $f27, $f20
mtc1 $s5, $f22
cvt.s.w $f22, $f22
add.s $f27, $f27, $f22
mov.s $f12, $f27
syscall
move $t6, $s5
mtc1 $t6, $f22
cvt.s.w $f22, $f22
sub.s $f22, $f22, $f20
mov.s $f12, $f22
syscall
