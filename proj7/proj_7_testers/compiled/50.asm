.data
d:	.word	0	# i2 in original
f:	.float	0	# f2 in original
a:	.asciiz	"True"
b:	.asciiz	"False"
h:	.asciiz	"\n"
.text
li $v0, 5
syscall
la $t8, d
lw $s1, 0($t8)
move $s1, $v0
li $v0, 6
syscall
la $s6, f
l.s $f30, 0($s6)
mov.s $f30, $f0
li $v0, 4
la $t7, a
move $a0, $t7
syscall
la $t0, b
move $a0, $t0
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
li $s3, 106
rem $s3, $s3, 20
move $a0, $s3
syscall
li $v0, 4
move $a0, $t7
syscall
syscall
move $a0, $t0
syscall
syscall
syscall
move $a0, $t7
syscall
la $s2, h
move $a0, $s2
syscall
move $a0, $t0
syscall
move $a0, $t7
syscall
syscall
syscall
syscall
move $a0, $t0
syscall
move $a0, $t7
syscall
syscall
move $a0, $s2
syscall
move $t3, $s1
sgt $t3, $t3, 20
seq $v1, $t3, 1
movn $s5, $t7, $v1
movz $s5, $t0, $v1
move $a0, $s5
syscall
move $s5, $s1
sge $s5, $s5, 20
seq $v1, $s5, 1
movn $t4, $t7, $v1
movz $t4, $t0, $v1
move $a0, $t4
syscall
move $t4, $s1
slti $t4, $t4, 20
seq $v1, $t4, 1
movn $t9, $t7, $v1
movz $t9, $t0, $v1
move $a0, $t9
syscall
move $t9, $s1
sle $t9, $t9, 20
seq $v1, $t9, 1
movn $t2, $t7, $v1
movz $t2, $t0, $v1
move $a0, $t2
syscall
move $t2, $s1
seq $t2, $t2, 20
seq $v1, $t2, 1
movn $t1, $t7, $v1
movz $t1, $t0, $v1
move $a0, $t1
syscall
move $t1, $s1
sne $t1, $t1, 20
seq $v1, $t1, 1
movn $t6, $t7, $v1
movz $t6, $t0, $v1
move $a0, $t6
syscall
