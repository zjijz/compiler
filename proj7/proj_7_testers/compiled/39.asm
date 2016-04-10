.data
e:	.byte	0	# c in original
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $t4, 2
mul $t4, $t4, 2
move $t7, $t4
li $v1, 7
sle $t6, $v1, $t7
move $t8, $t6
ori $t8, $t8, 1
move $s3, $t8
li $v0, 4
la $t9, a
move $a0, $t9
syscall
la $t2, b
move $a0, $t2
syscall
seq $v1, $s3, 1
movn $s1, $t9, $v1
movz $s1, $t2, $v1
move $a0, $s1
syscall
