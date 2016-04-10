.data
c:	.word	0	# x in original
d:	.float	27.0	# y in original
.text
li $v0, 5
syscall
la $s3, c
lw $t3, 0($s3)
move $t3, $v0
li $at, 1104674816
mtc1 $at, $f13
mov.s $f28, $f13
mtc1 $t3, $f27
cvt.s.w $f27, $f27
div.s $f28, $f28, $f27
la $t7, d
l.s $f27, 0($t7)
mov.s $f27, $f28
li $v0, 2
mov.s $f12, $f27
syscall
mov.s $f7, $f27
mtc1 $t3, $f8
cvt.s.w $f8, $f8
mul.s $f7, $f7, $f8
mov.s $f12, $f7
syscall
mov.s $f8, $f27
mtc1 $t3, $f31
cvt.s.w $f31, $f31
div.s $f8, $f8, $f31
mov.s $f12, $f8
syscall
mov.s $f31, $f27
mtc1 $t3, $f18
cvt.s.w $f18, $f18
add.s $f31, $f31, $f18
mov.s $f12, $f31
syscall
move $s5, $t3
mtc1 $s5, $f18
cvt.s.w $f18, $f18
sub.s $f18, $f18, $f27
mov.s $f12, $f18
syscall
