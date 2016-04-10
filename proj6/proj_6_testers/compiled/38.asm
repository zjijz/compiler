.data
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 4
la $s1, a
move $a0, $s1
syscall
la $s5, b
move $a0, $s5
syscall
syscall
move $a0, $s1
syscall
syscall
