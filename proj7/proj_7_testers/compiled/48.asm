.data
d:	.float	0	# f in original
c:	.word	0	# x in original
.text
li $v0, 1
li $a0, 60
syscall
li $v0, 5
syscall
la $s3, c
lw $t7, 0($s3)
move $t7, $v0
move $t8, $t7
add $t8, $t8, $t7
li $v0, 1
move $a0, $t8
syscall
li $s4, 2
mtc1 $s4, $f29
cvt.s.w $f29, $f29
li $v1, 1073741824
mtc1 $v1, $f13
mov.s $f13, $f13
mul.s $f29, $f29, $f13
li $v0, 2
mov.s $f12, $f29
syscall
li $v0, 6
syscall
la $t0, d
l.s $f29, 0($t0)
mov.s $f29, $f0
mov.s $f20, $f29
add.s $f20, $f20, $f29
li $v0, 2
mov.s $f12, $f20
syscall
