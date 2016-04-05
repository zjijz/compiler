.data
e:	.word	0	# z in original
c:	.word	0	# x in original
d:	.word	0	# y in original
.text
li $v0, 5
syscall
move $s1, $v0
li $v0, 5
syscall
move $s6, $v0
li $v0, 5
syscall
move $t0, $v0
move $t4, $s1
add $t4, $t4, $s6
add $t4, $t4, $t0
addi $t4, $t4, 7
move $s6, $t4
li $v0, 1
move $a0, $s6
syscall
