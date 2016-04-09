.data
a:	.asciiz	"True"	
b:	.asciiz	"False"	
.text
li $v0, 4
la $t8, a
move $a0, $t8
syscall
la $t2, b
move $a0, $t2
syscall
