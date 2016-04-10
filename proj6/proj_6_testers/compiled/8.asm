.data
e:	.word	0	# z in original
c:	.word	0	# x in original
d:	.word	0	# y in original
.text
li $v0, 5
syscall
la $t5, c
lw $t2, 0($t5)
move $t2, $v0
li $v0, 5
syscall
la $t1, d
lw $s5, 0($t1)
move $s5, $v0
li $v0, 5
syscall
la $t0, e
lw $t3, 0($t0)
move $t3, $v0
move $t4, $t2
add $t4, $t4, $s5
add $t4, $t4, $t3
addi $t4, $t4, 7
move $s5, $t4
li $v0, 1
move $a0, $s5
syscall
