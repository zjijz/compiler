.data
c:	.word	0	# x in original
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 5
syscall
la $s5, c
lw $t7, 0($s5)
move $t7, $v0
move $t0, $t7
slti $t0, $t0, 17
move $t1, $t0
andi $t1, $t1, 1
li $v0, 4
la $s6, a
la $t4, b
seq $v1, $t1, 1
movn $t5, $s6, $v1
movz $t5, $t4, $v1
move $a0, $t5
syscall
