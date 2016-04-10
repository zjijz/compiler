.data
e:	.byte	0	# c in original
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $s5, 2
mul $s5, $s5, 2
move $t9, $s5
li $v1, 7
sle $t3, $v1, $t9
move $t7, $t3
ori $t7, $t7, 1
move $t2, $t7
li $v0, 4
la $s6, a
move $a0, $s6
syscall
la $t5, b
move $a0, $t5
syscall
seq $v1, $t2, 1
movn $t6, $s6, $v1
movz $t6, $t5, $v1
move $a0, $t6
syscall
