.data
f:	.float	0	# g in original
e:	.float	0	# f in original
d:	.word	0	# j in original
c:	.word	0	# i in original
.text
li $v0, 5
syscall
la $t6, c
lw $t3, 0($t6)
move $t3, $v0
li $v0, 6
syscall
la $t5, e
l.s $f7, 0($t5)
mov.s $f7, $f0
li $v0, 5
syscall
la $t2, d
lw $s2, 0($t2)
move $s2, $v0
li $v0, 6
syscall
la $t9, f
l.s $f18, 0($t9)
mov.s $f18, $f0
li $v0, 1
move $a0, $t3
syscall
li $v0, 2
mov.s $f12, $f7
syscall
li $v0, 1
move $a0, $s2
syscall
li $v0, 2
mov.s $f12, $f18
syscall
