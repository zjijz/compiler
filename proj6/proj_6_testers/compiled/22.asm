.data
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 4
la $s1, b
move $a0, $s1
syscall
la $s6, a
move $a0, $s6
syscall
move $a0, $s1
syscall
