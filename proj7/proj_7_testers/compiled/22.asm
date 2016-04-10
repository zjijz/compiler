.data
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 4
la $t0, b
move $a0, $t0
syscall
la $s5, a
move $a0, $s5
syscall
move $a0, $t0
syscall
