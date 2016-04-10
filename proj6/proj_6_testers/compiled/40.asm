.data
c:	.word	0	# x in original
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $v0, 5
syscall
la $s3, c
lw $t4, 0($s3)
move $t4, $v0
move $t7, $t4
slti $t7, $t7, 17
move $s6, $t7
andi $s6, $s6, 1
li $v0, 4
la $s5, a
la $s4, b
seq $v1, $s6, 1
movn $s1, $s5, $v1
movz $s1, $s4, $v1
move $a0, $s1
syscall
