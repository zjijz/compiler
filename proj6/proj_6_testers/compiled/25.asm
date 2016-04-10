.data
f:	.asciiz	"Hello"
d:	.asciiz	"Hey"
.text
li $v0, 4
la $t2, d
move $a0, $t2
syscall
la $t7, f
move $a0, $t7
syscall
