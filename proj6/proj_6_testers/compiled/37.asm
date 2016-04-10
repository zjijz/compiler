.data
c:	.word	0	# i in original
f:	.float	0	# g in original
e:	.float	0	# f in original
d:	.word	0	# j in original
.text
li $v0, 5
syscall
la $s1, c
lw $s4, 0($s1)
move $s4, $v0
li $v0, 6
syscall
la $s2, e
l.s $f18, 0($s2)
mov.s $f18, $f0
li $v0, 5
syscall
la $t4, d
lw $t6, 0($t4)
move $t6, $v0
li $v0, 6
syscall
la $t8, f
l.s $f4, 0($t8)
mov.s $f4, $f0
li $v0, 1
move $a0, $s4
syscall
li $v0, 2
mov.s $f12, $f18
syscall
li $v0, 1
move $a0, $t6
syscall
li $v0, 2
mov.s $f12, $f4
syscall
