.data
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 4
la $s5, b
move $a0, $s5
syscall
la $s2, a
move $a0, $s2
syscall
move $a0, $s5
syscall
