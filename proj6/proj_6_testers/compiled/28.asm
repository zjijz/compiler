.data
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 1
li $a0, 10
syscall
li $v0, 2
li $at, 1101004800
mtc1 $at, $f13
mov.s $f12, $f13
syscall
li $v0, 1
li $a0, -10
syscall
li $v0, 2
li $at, 3248488448
mtc1 $at, $f13
mov.s $f12, $f13
syscall
li $v0, 4
la $t6, b
move $a0, $t6
syscall
la $s1, a
move $a0, $s1
syscall
