.data
c:	.word	0	# x in original
d:	.float	27.0	# y in original
.text
li $v0, 5
syscall
la $s3, c
lw $t5, 0($s3)
move $t5, $v0
li $v1, 1104674816
mtc1 $v1, $f13
mov.s $f9, $f13
mtc1 $t5, $f21
cvt.s.w $f21, $f21
div.s $f9, $f9, $f21
la $s5, d
l.s $f21, 0($s5)
mov.s $f21, $f9
li $v0, 2
mov.s $f12, $f21
syscall
mov.s $f8, $f21
mtc1 $t5, $f10
cvt.s.w $f10, $f10
mul.s $f8, $f8, $f10
mov.s $f12, $f8
syscall
mov.s $f10, $f21
mtc1 $t5, $f17
cvt.s.w $f17, $f17
div.s $f10, $f10, $f17
mov.s $f12, $f10
syscall
mov.s $f17, $f21
mtc1 $t5, $f26
cvt.s.w $f26, $f26
add.s $f17, $f17, $f26
mov.s $f12, $f17
syscall
move $s4, $t5
mtc1 $s4, $f26
cvt.s.w $f26, $f26
sub.s $f26, $f26, $f21
mov.s $f12, $f26
syscall
