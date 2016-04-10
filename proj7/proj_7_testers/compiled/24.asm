.data
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $v0, 4
la $t9, a
move $a0, $t9
syscall
la $s4, b
move $a0, $s4
syscall
