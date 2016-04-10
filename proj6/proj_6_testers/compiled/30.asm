.text
li $t2, 3
mul $t2, $t2, 4
li $v0, 1
move $a0, $t2
syscall
li $t9, 18
rem $t9, $t9, 4
move $a0, $t9
syscall
li $s1, 3
div $s1, $s1, 3
move $a0, $s1
syscall
li $t6, 4
div $t6, $t6, 3
move $a0, $t6
syscall
