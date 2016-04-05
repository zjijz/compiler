.text
li $t9, 5
mul $t9, $t9, 6
div $t9, $t9, 2
li $v0, 1
move $a0, $t9
syscall
li $t8, 6
div $t8, $t8, 2
mul $t8, $t8, 5
move $a0, $t8
syscall
