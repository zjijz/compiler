.data
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 1
li $a0, 10
syscall
li $v0, 2
li $v1, 1101004800
mtc1 $v1, $f13
mov.s $f12, $f13
syscall
li $v0, 1
li $a0, -10
syscall
li $v0, 2
li $v1, 3248488448
mtc1 $v1, $f13
mov.s $f12, $f13
syscall
li $v0, 4
la $t2, b
move $a0, $t2
syscall
la $t5, a
move $a0, $t5
syscall
