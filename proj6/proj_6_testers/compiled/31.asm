.data
c:	.word	0	# x in original
d:	.float	27.0	# y in original
.text
li $v0, 5
syscall
la $t2, c
lw $t4, 0($t2)
move $t4, $v0
li $v1, 1104674816
mtc1 $v1, $f13
mov.s $f23, $f13
mtc1 $t4, $f8
cvt.s.w $f8, $f8
div.s $f23, $f23, $f8
la $s4, d
l.s $f8, 0($s4)
mov.s $f8, $f23
li $v0, 2
mov.s $f12, $f8
syscall
mov.s $f22, $f8
mtc1 $t4, $f30
cvt.s.w $f30, $f30
mul.s $f22, $f22, $f30
mov.s $f12, $f22
syscall
mov.s $f30, $f8
mtc1 $t4, $f7
cvt.s.w $f7, $f7
div.s $f30, $f30, $f7
mov.s $f12, $f30
syscall
mov.s $f7, $f8
mtc1 $t4, $f6
cvt.s.w $f6, $f6
add.s $f7, $f7, $f6
mov.s $f12, $f7
syscall
move $t1, $t4
mtc1 $t1, $f6
cvt.s.w $f6, $f6
sub.s $f6, $f6, $f8
mov.s $f12, $f6
syscall
