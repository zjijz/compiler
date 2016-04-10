.data
d:	.asciiz	"Hey"
f:	.asciiz	"Hello"
.text
li $v0, 4
la $s1, d
move $a0, $s1
syscall
la $t0, f
move $a0, $t0
syscall
