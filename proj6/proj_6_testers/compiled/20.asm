.text
li $t0, 5
mul $t0, $t0, 6
div $t0, $t0, 2
li $v0, 1
move $a0, $t0
syscall
li $t7, 6
div $t7, $t7, 2
mul $t7, $t7, 5
move $a0, $t7
syscall
