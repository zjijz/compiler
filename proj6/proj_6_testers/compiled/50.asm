.data
f:	.float	0	# f2 in original
d:	.word	0	# i2 in original
b:	.asciiz	"False"
a:	.asciiz	"True"
h:	.asciiz	"\n"
.text
li $v0, 5
syscall
la $s6, d
lw $s4, 0($s6)
move $s4, $v0
li $v0, 6
syscall
la $t1, f
l.s $f8, 0($t1)
mov.s $f8, $f0
li $v0, 4
la $s5, a
move $a0, $s5
syscall
la $s2, b
move $a0, $s2
syscall
li $v0, 1
li $a0, -10
syscall
li $a0, 10
syscall
li $s1, 10
mul $s1, $s1, 20
move $a0, $s1
syscall
li $t5, 106
div $t5, $t5, 20
move $a0, $t5
syscall
li $t4, 106
rem $t4, $t4, 20
move $a0, $t4
syscall
li $v0, 4
move $a0, $s5
syscall
syscall
move $a0, $s2
syscall
syscall
syscall
move $a0, $s5
syscall
la $t3, h
move $a0, $t3
syscall
move $a0, $s2
syscall
move $a0, $s5
syscall
syscall
syscall
syscall
move $a0, $s2
syscall
move $a0, $s5
syscall
syscall
move $a0, $t3
syscall
move $s3, $s4
sgt $s3, $s3, 20
seq $v1, $s3, 1
movn $t9, $s5, $v1
movz $t9, $s2, $v1
move $a0, $t9
syscall
move $t9, $s4
sge $t9, $t9, 20
seq $v1, $t9, 1
movn $t0, $s5, $v1
movz $t0, $s2, $v1
move $a0, $t0
syscall
move $t0, $s4
slti $t0, $t0, 20
seq $v1, $t0, 1
movn $t2, $s5, $v1
movz $t2, $s2, $v1
move $a0, $t2
syscall
move $t2, $s4
sle $t2, $t2, 20
seq $v1, $t2, 1
movn $t8, $s5, $v1
movz $t8, $s2, $v1
move $a0, $t8
syscall
move $t8, $s4
seq $t8, $t8, 20
seq $v1, $t8, 1
movn $t6, $s5, $v1
movz $t6, $s2, $v1
move $a0, $t6
syscall
move $t6, $s4
sne $t6, $t6, 20
seq $v1, $t6, 1
movn $t7, $s5, $v1
movz $t7, $s2, $v1
move $a0, $t7
syscall
