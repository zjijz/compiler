.data
a:	.asciiz	"True"	
.text
li $v0, 4
la $s1, a
move $a0, $s1
syscall
