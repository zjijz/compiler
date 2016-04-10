.data
d:	.word	0	# i2 in original
f:	.float	0	# f2 in original
a:	.asciiz	"True"
h:	.asciiz	"\n"
b:	.asciiz	"False"
.text
li $v0, 5
syscall
la $t1, d
lw $t9, 0($t1)
move $t9, $v0
li $v0, 6
syscall
la $s5, f
l.s $f28, 0($s5)
mov.s $f28, $f0
li $v0, 4
la $t3, a
move $a0, $t3
syscall
la $s3, b
move $a0, $s3
syscall
li $v0, 1
li $a0, -10
syscall
li $a0, 10
syscall
li $t5, 10
mul $t5, $t5, 20
move $a0, $t5
syscall
li $s4, 106
div $s4, $s4, 20
move $a0, $s4
syscall
li $t4, 106
rem $t4, $t4, 20
move $a0, $t4
syscall
li $v0, 4
move $a0, $t3
syscall
syscall
move $a0, $s3
syscall
syscall
syscall
move $a0, $t3
syscall
la $s2, h
move $a0, $s2
syscall
move $a0, $s3
syscall
move $a0, $t3
syscall
syscall
syscall
syscall
move $a0, $s3
syscall
move $a0, $t3
syscall
syscall
move $a0, $s2
syscall
move $t2, $t9
sgt $t2, $t2, 20
seq $v1, $t2, 1
movn $t0, $t3, $v1
movz $t0, $s3, $v1
move $a0, $t0
syscall
move $t0, $t9
sge $t0, $t0, 20
seq $v1, $t0, 1
movn $t6, $t3, $v1
movz $t6, $s3, $v1
move $a0, $t6
syscall
move $t6, $t9
slti $t6, $t6, 20
seq $v1, $t6, 1
movn $t8, $t3, $v1
movz $t8, $s3, $v1
move $a0, $t8
syscall
move $t8, $t9
sle $t8, $t8, 20
seq $v1, $t8, 1
movn $t7, $t3, $v1
movz $t7, $s3, $v1
move $a0, $t7
syscall
move $t7, $t9
seq $t7, $t7, 20
seq $v1, $t7, 1
movn $s6, $t3, $v1
movz $s6, $s3, $v1
move $a0, $s6
syscall
move $s6, $t9
sne $s6, $s6, 20
seq $v1, $s6, 1
movn $s1, $t3, $v1
movz $s1, $s3, $v1
move $a0, $s1
syscall
