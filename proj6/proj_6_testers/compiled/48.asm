.data
c:	.word	0	# x in original
d:	.float	0	# f in original
.text
li $v0, 1
li $a0, 60
syscall
li $v0, 5
syscall
la $t6, c
lw $s5, 0($t6)
move $s5, $v0
move $s3, $s5
add $s3, $s3, $s5
li $v0, 1
move $a0, $s3
syscall
li $t9, 2
mtc1 $t9, $f4
cvt.s.w $f4, $f4
li $v1, 1073741824
mtc1 $v1, $f13
mov.s $f13, $f13
mul.s $f4, $f4, $f13
li $v0, 2
mov.s $f12, $f4
syscall
li $v0, 6
syscall
la $t2, d
l.s $f4, 0($t2)
mov.s $f4, $f0
mov.s $f20, $f4
add.s $f20, $f20, $f4
li $v0, 2
mov.s $f12, $f20
syscall
