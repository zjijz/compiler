.data
c:	.word	0	# x in original
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 5
syscall
la $t1, c
lw $s2, 0($t1)
move $s2, $v0
move $t5, $s2
slti $t5, $t5, 17
move $t9, $t5
andi $t9, $t9, 1
li $v0, 4
la $s4, a
la $t0, b
seq $v1, $t9, 1
movn $t4, $s4, $v1
movz $t4, $t0, $v1
move $a0, $t4
syscall
