.data
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 4
la $s5, a
move $a0, $s5
syscall
la $t4, b
move $a0, $t4
syscall
