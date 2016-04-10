.data
d:	.float	0	# f in original
c:	.word	0	# x in original
.text
li $v0, 1
li $a0, 60
syscall
li $v0, 5
syscall
la $s4, c
lw $s2, 0($s4)
move $s2, $v0
move $s6, $s2
add $s6, $s6, $s2
li $v0, 1
move $a0, $s6
syscall
li $t6, 2
mtc1 $t6, $f29
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
la $t9, d
l.s $f29, 0($t9)
mov.s $f29, $f0
mov.s $f22, $f29
add.s $f22, $f22, $f29
li $v0, 2
mov.s $f12, $f22
syscall
