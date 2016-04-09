.data
a:	.asciiz	"True"	
b:	.asciiz	"False"	
.text
li $v0, 1
li $a0, 40
syscall
li $v0, 2
li $at, 1139802112
mtc1 $at, $f12
syscall
li $v0, 4
la $s4, a
move $a0, $s4
syscall
la $t8, b
move $a0, $t8
syscall
