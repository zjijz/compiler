.data
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $v0, 4
la $t1, a
move $a0, $t1
syscall
la $t6, b
move $a0, $t6
syscall
move $a0, $t1
syscall
move $a0, $t6
syscall
