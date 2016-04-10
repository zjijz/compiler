.data
d:	.word	0	# i2 in original
f:	.float	0	# f2 in original
h:	.asciiz	"\n"
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $v0, 5
syscall
la $t9, d
lw $t4, 0($t9)
move $t4, $v0
li $v0, 6
syscall
la $t7, f
l.s $f18, 0($t7)
mov.s $f18, $f0
li $v0, 4
la $t8, a
move $a0, $t8
syscall
la $s5, b
move $a0, $s5
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
li $t6, 106
div $t6, $t6, 20
move $a0, $t6
syscall
li $t2, 106
rem $t2, $t2, 20
move $a0, $t2
syscall
li $v0, 4
move $a0, $t8
syscall
syscall
move $a0, $s5
syscall
syscall
syscall
move $a0, $t8
syscall
la $s1, h
move $a0, $s1
syscall
move $a0, $s5
syscall
move $a0, $t8
syscall
syscall
syscall
syscall
move $a0, $s5
syscall
move $a0, $t8
syscall
syscall
move $a0, $s1
syscall
move $s4, $t4
sgt $s4, $s4, 20
seq $v1, $s4, 1
movn $s3, $t8, $v1
movz $s3, $s5, $v1
move $a0, $s3
syscall
move $s3, $t4
sge $s3, $s3, 20
seq $v1, $s3, 1
movn $t1, $t8, $v1
movz $t1, $s5, $v1
move $a0, $t1
syscall
move $t1, $t4
slti $t1, $t1, 20
seq $v1, $t1, 1
movn $t5, $t8, $v1
movz $t5, $s5, $v1
move $a0, $t5
syscall
move $t5, $t4
sle $t5, $t5, 20
seq $v1, $t5, 1
movn $s2, $t8, $v1
movz $s2, $s5, $v1
move $a0, $s2
syscall
move $s2, $t4
seq $s2, $s2, 20
seq $v1, $s2, 1
movn $s6, $t8, $v1
movz $s6, $s5, $v1
move $a0, $s6
syscall
move $s6, $t4
sne $s6, $s6, 20
seq $v1, $s6, 1
movn $t3, $t8, $v1
movz $t3, $s5, $v1
move $a0, $t3
syscall
