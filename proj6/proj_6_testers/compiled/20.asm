.text
li $s2, 5
mul $s2, $s2, 6
div $s2, $s2, 2
li $v0, 1
move $a0, $s2
syscall
li $t5, 6
div $t5, $t5, 2
mul $t5, $t5, 5
move $a0, $t5
syscall
