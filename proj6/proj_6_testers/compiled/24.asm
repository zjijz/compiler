.data
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 4
la $t1, a
move $a0, $t1
syscall
la $s3, b
move $a0, $s3
syscall
