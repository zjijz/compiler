.data
a:	.asciiz	"True"	
b:	.asciiz	"False"	
.text
li $v0, 4
la $t5, a
move $a0, $t5
syscall
la $s5, b
move $a0, $s5
syscall
move $a0, $t5
syscall
move $a0, $s5
syscall
