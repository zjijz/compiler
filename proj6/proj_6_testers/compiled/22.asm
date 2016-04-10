.data
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $v0, 4
la $t2, b
move $a0, $t2
syscall
la $s1, a
move $a0, $s1
syscall
move $a0, $t2
syscall
