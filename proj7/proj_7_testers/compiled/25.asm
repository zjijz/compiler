.data
d:	.asciiz	"Hey"
f:	.asciiz	"Hello"
.text
li $v0, 4
la $t1, d
move $a0, $t1
syscall
la $t3, f
move $a0, $t3
syscall
