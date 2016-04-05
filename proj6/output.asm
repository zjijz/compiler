.data
e:	.word	0	# c in original
d:	.word	0	# b in original
c:	.word	0	# a in original
f:	.asciiz	"\n"	
.text
li $v0, 5
syscall
la $t7, c
lw $s1, 0($t7)
move $s1, $v0
move $t8, $s1
move $s6, $s1
add $s6, $s6, $s1
add $s6, $s6, $s1
move $t9, $s6
li $v0, 1
move $a0, $s1
syscall
li $v0, 4
la $s2, f
move $a0, $s2
syscall
li $v0, 1
move $a0, $t8
syscall
li $v0, 4
move $a0, $s2
syscall
li $v0, 1
move $a0, $t9
syscall
