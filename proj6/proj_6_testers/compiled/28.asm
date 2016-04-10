.data
a:	.asciiz	"True"
b:	.asciiz	"False"
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
la $t1, b
move $a0, $t1
syscall
la $t6, a
move $a0, $t6
syscall
