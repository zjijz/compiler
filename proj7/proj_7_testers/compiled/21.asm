.data
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 4
la $s6, a
move $a0, $s6
syscall
la $t9, b
move $a0, $t9
syscall
move $a0, $s6
syscall
move $a0, $t9
syscall
