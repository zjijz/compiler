.data
f:	.asciiz	"TEMP"
d:	.asciiz	"DYNAMIC"
.text
li $v0, 4
la $s2, d
move $a0, $s2
syscall
la $s3, f
move $a0, $s3
syscall
