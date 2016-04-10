.text
li $s1, 3
mul $s1, $s1, 3
li $v0, 1
move $a0, $s1
syscall
