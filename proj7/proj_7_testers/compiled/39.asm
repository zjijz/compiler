.data
e:	.byte	0	# c in original
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $t4, 2
mul $t4, $t4, 2
move $t3, $t4
li $v1, 7
sle $s3, $v1, $t3
move $s4, $s3
ori $s4, $s4, 1
move $t2, $s4
li $v0, 4
la $t9, a
move $a0, $t9
syscall
la $t1, b
move $a0, $t1
syscall
seq $v1, $t2, 1
movn $s5, $t9, $v1
movz $s5, $t1, $v1
move $a0, $s5
syscall
