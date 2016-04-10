.data
f:	.asciiz	"TEMP"
d:	.asciiz	"DYNAMIC"
.text
li $v0, 4
la $t1, d
move $a0, $t1
syscall
la $t4, f
move $a0, $t4
syscall
