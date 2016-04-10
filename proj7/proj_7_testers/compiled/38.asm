.data
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $v0, 4
la $t3, a
move $a0, $t3
syscall
la $t9, b
move $a0, $t9
syscall
syscall
move $a0, $t3
syscall
syscall
