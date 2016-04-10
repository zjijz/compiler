.data
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $v0, 4
la $t4, b
move $a0, $t4
syscall
la $t5, a
move $a0, $t5
syscall
move $a0, $t4
syscall
