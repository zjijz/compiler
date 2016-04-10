.data
c:	.word	0	# x in original
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 5
syscall
la $t3, c
lw $t4, 0($t3)
move $t4, $v0
move $s4, $t4
slti $s4, $s4, 17
move $s3, $s4
andi $s3, $s3, 1
li $v0, 4
la $s5, a
la $t0, b
seq $v1, $s3, 1
movn $t7, $s5, $v1
movz $t7, $t0, $v1
move $a0, $t7
syscall
