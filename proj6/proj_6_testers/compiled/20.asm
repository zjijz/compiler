.text
li $s2, 5
mul $s2, $s2, 6
div $s2, $s2, 2
li $v0, 1
move $a0, $s2
syscall
li $t1, 6
div $t1, $t1, 2
mul $t1, $t1, 5
move $a0, $t1
syscall
