.data
f:	.float	0	# g in original
d:	.word	0	# j in original
c:	.word	0	# i in original
e:	.float	0	# f in original
.text
li $v0, 5
syscall
la $t3, c
lw $s6, 0($t3)
move $s6, $v0
li $v0, 6
syscall
la $t4, e
l.s $f6, 0($t4)
mov.s $f6, $f0
li $v0, 5
syscall
la $s4, d
lw $t1, 0($s4)
move $t1, $v0
li $v0, 6
syscall
la $t2, f
l.s $f18, 0($t2)
mov.s $f18, $f0
li $v0, 1
move $a0, $s6
syscall
li $v0, 2
mov.s $f12, $f6
syscall
li $v0, 1
move $a0, $t1
syscall
li $v0, 2
mov.s $f12, $f18
syscall
