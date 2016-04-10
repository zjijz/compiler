.data
d:	.word	0	# j in original
f:	.float	0	# g in original
e:	.float	0	# f in original
c:	.word	0	# i in original
.text
li $v0, 5
syscall
la $t4, c
lw $t7, 0($t4)
move $t7, $v0
li $v0, 6
syscall
la $s2, e
l.s $f5, 0($s2)
mov.s $f5, $f0
li $v0, 5
syscall
la $s5, d
lw $t1, 0($s5)
move $t1, $v0
li $v0, 6
syscall
la $s3, f
l.s $f6, 0($s3)
mov.s $f6, $f0
li $v0, 1
move $a0, $t7
syscall
li $v0, 2
mov.s $f12, $f5
syscall
li $v0, 1
move $a0, $t1
syscall
li $v0, 2
mov.s $f12, $f6
syscall
