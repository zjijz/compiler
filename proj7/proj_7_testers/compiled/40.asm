.data
c:	.word	0	# x in original
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $v0, 5
syscall
la $s5, c
lw $t1, 0($s5)
move $t1, $v0
move $t8, $t1
slti $t8, $t8, 17
move $s6, $t8
andi $s6, $s6, 1
li $v0, 4
la $s1, a
la $t0, b
seq $v1, $s6, 1
movn $s2, $s1, $v1
movz $s2, $t0, $v1
move $a0, $s2
syscall
