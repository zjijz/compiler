.data
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $v0, 4
la $s1, a
move $a0, $s1
syscall
la $t7, b
move $a0, $t7
syscall
syscall
move $a0, $s1
syscall
syscall
