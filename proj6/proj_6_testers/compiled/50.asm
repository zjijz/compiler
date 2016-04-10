.data
d:	.word	0	# i2 in original
f:	.float	0	# f2 in original
b:	.asciiz	"False"
a:	.asciiz	"True"
h:	.asciiz	"\n"
.text
li $v0, 5
syscall
la $t2, d
lw $t5, 0($t2)
move $t5, $v0
li $v0, 6
syscall
la $s3, f
l.s $f25, 0($s3)
mov.s $f25, $f0
li $v0, 4
la $t1, a
move $a0, $t1
syscall
la $t4, b
move $a0, $t4
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
li $t3, 106
div $t3, $t3, 20
move $a0, $t3
syscall
li $s4, 106
rem $s4, $s4, 20
move $a0, $s4
syscall
li $v0, 4
move $a0, $t1
syscall
syscall
move $a0, $t4
syscall
syscall
syscall
move $a0, $t1
syscall
la $t8, h
move $a0, $t8
syscall
move $a0, $t4
syscall
move $a0, $t1
syscall
syscall
syscall
syscall
move $a0, $t4
syscall
move $a0, $t1
syscall
syscall
move $a0, $t8
syscall
move $t9, $t5
sgt $t9, $t9, 20
seq $v1, $t9, 1
movn $t0, $t1, $v1
movz $t0, $t4, $v1
move $a0, $t0
syscall
move $t0, $t5
sge $t0, $t0, 20
seq $v1, $t0, 1
movn $s6, $t1, $v1
movz $s6, $t4, $v1
move $a0, $s6
syscall
move $s6, $t5
slti $s6, $s6, 20
seq $v1, $s6, 1
movn $t7, $t1, $v1
movz $t7, $t4, $v1
move $a0, $t7
syscall
move $t7, $t5
sle $t7, $t7, 20
seq $v1, $t7, 1
movn $t6, $t1, $v1
movz $t6, $t4, $v1
move $a0, $t6
syscall
move $t6, $t5
seq $t6, $t6, 20
seq $v1, $t6, 1
movn $s2, $t1, $v1
movz $s2, $t4, $v1
move $a0, $s2
syscall
move $s2, $t5
sne $s2, $s2, 20
seq $v1, $s2, 1
movn $s5, $t1, $v1
movz $s5, $t4, $v1
move $a0, $s5
syscall
