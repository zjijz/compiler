.data
b:	.asciiz	"False"
a:	.asciiz	"True"
.text
li $v0, 1
li $a0, 40
syscall
li $v0, 2
li $at, 1139802112
mtc1 $at, $f13
mov.s $f12, $f13
syscall
li $v0, 4
la $s6, a
move $a0, $s6
syscall
la $t1, b
move $a0, $t1
syscall
