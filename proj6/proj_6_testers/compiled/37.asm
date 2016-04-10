.data
c:	.word	0	# i in original
e:	.float	0	# f in original
d:	.word	0	# j in original
f:	.float	0	# g in original
.text
li $v0, 5
syscall
la $s5, c
lw $t0, 0($s5)
move $t0, $v0
li $v0, 6
syscall
la $t3, e
l.s $f27, 0($t3)
mov.s $f27, $f0
li $v0, 5
syscall
la $s6, d
lw $s2, 0($s6)
move $s2, $v0
li $v0, 6
syscall
la $s4, f
l.s $f6, 0($s4)
mov.s $f6, $f0
li $v0, 1
move $a0, $t0
syscall
li $v0, 2
mov.s $f12, $f27
syscall
li $v0, 1
move $a0, $s2
syscall
li $v0, 2
mov.s $f12, $f6
syscall
