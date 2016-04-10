.data
d:	.float	27.0	# y in original
c:	.word	0	# x in original
.text
li $v0, 5
syscall
la $t5, c
lw $s5, 0($t5)
move $s5, $v0
li $v1, 1104674816
mtc1 $v1, $f13
mov.s $f9, $f13
mtc1 $s5, $f17
cvt.s.w $f17, $f17
div.s $f9, $f9, $f17
la $t7, d
l.s $f17, 0($t7)
mov.s $f17, $f9
li $v0, 2
mov.s $f12, $f17
syscall
mov.s $f16, $f17
mtc1 $s5, $f6
cvt.s.w $f6, $f6
mul.s $f16, $f16, $f6
mov.s $f12, $f16
syscall
mov.s $f6, $f17
mtc1 $s5, $f4
cvt.s.w $f4, $f4
div.s $f6, $f6, $f4
mov.s $f12, $f6
syscall
mov.s $f4, $f17
mtc1 $s5, $f21
cvt.s.w $f21, $f21
add.s $f4, $f4, $f21
mov.s $f12, $f4
syscall
move $t2, $s5
mtc1 $t2, $f21
cvt.s.w $f21, $f21
sub.s $f21, $f21, $f17
mov.s $f12, $f21
syscall
