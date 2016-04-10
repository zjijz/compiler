.data
f:	.asciiz	"Hello"
d:	.asciiz	"Hey"
.text
li $v0, 4
la $s6, d
move $a0, $s6
syscall
la $s4, f
move $a0, $s4
syscall
