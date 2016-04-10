.data
d:	.asciiz	"Hey"
f:	.asciiz	"Hello"
.text
li $v0, 4
la $s3, d
move $a0, $s3
syscall
la $s4, f
move $a0, $s4
syscall
