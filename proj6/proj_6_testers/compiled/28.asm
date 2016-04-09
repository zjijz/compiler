.data
a:	.asciiz	"True"	
b:	.asciiz	"False"	
.text
li $v0, 1
li $a0, 10
syscall
li $v0, 2
li $at, 1101004800
mtc1 $at, $f12
syscall
li $v0, 1
li $a0, -10
syscall
li $v0, 2
li $at, 3248488448
mtc1 $at, $f12
syscall
li $v0, 4
la $t9, b
move $a0, $t9
syscall
la $s5, a
move $a0, $s5
syscall
