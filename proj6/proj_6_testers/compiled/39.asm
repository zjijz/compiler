.data
e:	.byte	0	# c in original
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $t1, 2
mul $t1, $t1, 2
move $t8, $t1
li $v1, 7
sle $t0, $v1, $t8
move $t7, $t0
ori $t7, $t7, 1
move $t5, $t7
li $v0, 4
la $s4, a
move $a0, $s4
syscall
la $t4, b
move $a0, $t4
syscall
seq $v1, $t5, 1
movn $s2, $s4, $v1
movz $s2, $t4, $v1
move $a0, $s2
syscall
