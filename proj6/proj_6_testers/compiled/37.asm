.data
c:	.word	0	# i in original
d:	.word	0	# j in original
e:	.float	0	# f in original
f:	.float	0	# g in original
.text
li $v0, 5
syscall
la $t2, c
lw $t0, 0($t2)
move $t0, $v0
li $v0, 6
syscall
la $s3, e
l.s $f31, 0($s3)
mov.s $f31, $f0
li $v0, 5
syscall
la $s2, d
lw $t6, 0($s2)
move $t6, $v0
li $v0, 6
syscall
la $s1, f
l.s $f27, 0($s1)
mov.s $f27, $f0
li $v0, 1
move $a0, $t0
syscall
li $v0, 2
mov.s $f12, $f31
syscall
li $v0, 1
move $a0, $t6
syscall
li $v0, 2
mov.s $f12, $f27
syscall
