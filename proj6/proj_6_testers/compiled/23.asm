.text
li $s5, 3
mul $s5, $s5, 3
li $v0, 1
move $a0, $s5
syscall
