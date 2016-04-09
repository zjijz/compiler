.data
d:	.asciiz	"Hey"	
f:	.asciiz	"Hello"	
.text
li $v0, 4
la $t8, d
move $a0, $t8
syscall
la $t7, f
move $a0, $t7
syscall
