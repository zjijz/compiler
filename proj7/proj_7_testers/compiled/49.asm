.data
f:	.asciiz	"TEMP"
d:	.asciiz	"DYNAMIC"
.text
li $v0, 4
la $s5, d
move $a0, $s5
syscall
la $s3, f
move $a0, $s3
syscall
