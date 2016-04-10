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
lw $t1, 0($t4)
move $t1, $v0
move $t6, $t1
add $t6, $t6, $t1
li $v0, 1
move $a0, $t6
syscall
li $s4, 2
mtc1 $s4, $f25
cvt.s.w $f25, $f25
li $v1, 1073741824
mtc1 $v1, $f13
mov.s $f13, $f13
mul.s $f25, $f25, $f13
li $v0, 2
mov.s $f12, $f25
syscall
li $v0, 6
syscall
la $t3, d
l.s $f25, 0($t3)
mov.s $f25, $f0
mov.s $f21, $f25
add.s $f21, $f21, $f25
li $v0, 2
mov.s $f12, $f21
syscall
