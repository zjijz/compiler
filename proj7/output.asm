.data
d:	.word	0	# i2 in original
f:	.float	0	# f2 in original
b:	.asciiz	"False"
h:	.asciiz	"\n"
a:	.asciiz	"True"
.text
li $v0, 5
syscall
la $s2, d
lw $t6, 0($s2)
move $t6, $v0
li $v0, 6
syscall
la $t7, f
l.s $f21, 0($t7)
mov.s $f21, $f0
li $v0, 4
la $t2, a
move $a0, $t2
syscall
la $s6, b
move $a0, $s6
syscall
li $v0, 1
li $a0, -10
syscall
li $a0, 10
syscall
li $t0, 10
mul $t0, $t0, 20
move $a0, $t0
syscall
li $t4, 106
div $t4, $t4, 20
move $a0, $t4
syscall
li $s4, 106
rem $s4, $s4, 20
move $a0, $s4
syscall
li $v0, 4
move $a0, $t2
syscall
syscall
move $a0, $s6
syscall
syscall
syscall
move $a0, $t2
syscall
la $t5, h
move $a0, $t5
syscall
move $a0, $s6
syscall
move $a0, $t2
syscall
syscall
syscall
syscall
move $a0, $s6
syscall
move $a0, $t2
syscall
syscall
move $a0, $t5
syscall
move $s1, $t6
sgt $s1, $s1, 20
seq $v1, $s1, 1
movn $s5, $t2, $v1
movz $s5, $s6, $v1
move $a0, $s5
syscall
move $s5, $t6
sge $s5, $s5, 20
seq $v1, $s5, 1
movn $s3, $t2, $v1
movz $s3, $s6, $v1
move $a0, $s3
syscall
move $s3, $t6
slti $s3, $s3, 20
seq $v1, $s3, 1
movn $t9, $t2, $v1
movz $t9, $s6, $v1
move $a0, $t9
syscall
move $t9, $t6
sle $t9, $t9, 20
seq $v1, $t9, 1
movn $t1, $t2, $v1
movz $t1, $s6, $v1
move $a0, $t1
syscall
move $t1, $t6
seq $t1, $t1, 20
seq $v1, $t1, 1
movn $t3, $t2, $v1
movz $t3, $s6, $v1
move $a0, $t3
syscall
move $t3, $t6
sne $t3, $t3, 20
seq $v1, $t3, 1
movn $t8, $t2, $v1
movz $t8, $s6, $v1
move $a0, $t8
syscall
