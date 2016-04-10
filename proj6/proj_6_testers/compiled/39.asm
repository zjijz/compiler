.data
e:	.byte	0	# c in original
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $t0, 2
mul $t0, $t0, 2
move $t2, $t0
li $v1, 7
sle $t9, $v1, $t2
move $t8, $t9
ori $t8, $t8, 1
move $t1, $t8
li $v0, 4
la $t4, a
move $a0, $t4
syscall
la $t5, b
move $a0, $t5
syscall
seq $v1, $t1, 1
movn $s6, $t4, $v1
movz $s6, $t5, $v1
move $a0, $s6
syscall
