.data
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $v0, 4
la $s6, a
move $a0, $s6
syscall
la $t1, b
move $a0, $t1
syscall
