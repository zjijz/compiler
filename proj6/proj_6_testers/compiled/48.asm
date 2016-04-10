.data
d:	.float	0	# f in original
c:	.word	0	# x in original
.text
li $v0, 1
li $a0, 60
syscall
li $v0, 5
syscall
la $t4, c
lw $t8, 0($t4)
move $t8, $v0
move $s1, $t8
add $s1, $s1, $t8
li $v0, 1
move $a0, $s1
syscall
li $t2, 2
mtc1 $t2, $f4
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
la $t1, d
l.s $f4, 0($t1)
mov.s $f4, $f0
mov.s $f5, $f4
add.s $f5, $f5, $f4
li $v0, 2
mov.s $f12, $f5
syscall
