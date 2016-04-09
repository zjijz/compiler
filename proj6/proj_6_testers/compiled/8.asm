.data
e:	.word	0	# z in original
c:	.word	0	# x in original
d:	.word	0	# y in original
.text
li $v0, 5
syscall
la $t8, c
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $t0, d
lw $s1, 0($t0)
move $s1, $v0
li $v0, 5
syscall
la $s6, e
lw $t1, 0($s6)
move $t1, $v0
move $s4, $t5
add $s4, $s4, $s1
add $s4, $s4, $t1
addi $s4, $s4, 7
move $s1, $s4
li $v0, 1
move $a0, $s1
syscall
