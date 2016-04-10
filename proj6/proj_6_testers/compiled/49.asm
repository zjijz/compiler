.data
f:	.asciiz	"TEMP"
d:	.asciiz	"DYNAMIC"
.text
li $v0, 4
la $t6, d
move $a0, $t6
syscall
la $t3, f
move $a0, $t3
syscall
