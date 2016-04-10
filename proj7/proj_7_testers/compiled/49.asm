.data
f:	.asciiz	"TEMP"
d:	.asciiz	"DYNAMIC"
.text
li $v0, 4
la $s4, d
move $a0, $s4
syscall
la $t3, f
move $a0, $t3
syscall
