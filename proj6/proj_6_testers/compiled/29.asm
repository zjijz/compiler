.data
a:	.asciiz	"True"
b:	.asciiz	"False"
.text
li $v0, 1
li $a0, 40
syscall
li $v0, 2
li $v1, 1139802112
mtc1 $v1, $f13
mov.s $f12, $f13
syscall
li $v0, 4
la $t9, a
move $a0, $t9
syscall
la $s1, b
move $a0, $s1
syscall
