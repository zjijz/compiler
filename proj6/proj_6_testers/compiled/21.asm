.data
a:	.asciiz	"True"	
b:	.asciiz	"False"	
.text
li $v0, 4
la $s1, a
move $a0, $s1
syscall
la $s4, b
move $a0, $s4
syscall
move $a0, $s1
syscall
move $a0, $s4
syscall
