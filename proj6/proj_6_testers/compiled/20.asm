.text
li $t3, 5
mul $t3, $t3, 6
div $t3, $t3, 2
li $v0, 1
move $a0, $t3
syscall
li $s6, 6
div $s6, $s6, 2
mul $s6, $s6, 5
move $a0, $s6
syscall
