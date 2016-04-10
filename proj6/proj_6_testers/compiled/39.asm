.data
e:	.byte	0	# c in original
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $t1, 2
mul $t1, $t1, 2
move $s2, $t1
li $v1, 7
sle $t3, $v1, $s2
move $s6, $t3
ori $s6, $s6, 1
move $t2, $s6
li $v0, 4
la $s4, a
move $a0, $s4
syscall
la $t9, b
move $a0, $t9
syscall
seq $v1, $t2, 1
movn $t6, $s4, $v1
movz $t6, $t9, $v1
move $a0, $t6
syscall
