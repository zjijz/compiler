.data
a:	.asciiz	"True"	
b:	.asciiz	"False"	
.text
li $v0, 4
la $t7, b
move $a0, $t7
syscall
la $s5, a
move $a0, $s5
syscall
move $a0, $t7
syscall
