.data
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $v0, 4
la $s3, a
move $a0, $s3
syscall
la $t4, b
move $a0, $t4
syscall
move $a0, $s3
syscall
move $a0, $t4
syscall
