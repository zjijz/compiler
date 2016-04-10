.data
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $v0, 4
la $t2, a
move $a0, $t2
syscall
la $t5, b
move $a0, $t5
syscall
