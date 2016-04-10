.data
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 4
la $t4, b
move $a0, $t4
syscall
la $t1, a
move $a0, $t1
syscall
move $a0, $t4
syscall
