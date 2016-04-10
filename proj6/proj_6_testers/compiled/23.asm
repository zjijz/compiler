.text
li $t1, 3
mul $t1, $t1, 3
li $v0, 1
move $a0, $t1
syscall
