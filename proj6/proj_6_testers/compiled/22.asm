.data
b:	.asciiz	"False"	
a:	.asciiz	"True"	
.text
li $v0, 4
la $t9, b
move $a0, $t9
syscall
la $t5, a
move $a0, $t5
syscall
move $a0, $t9
syscall
