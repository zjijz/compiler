.text
li $s2, 3
mul $s2, $s2, 4
li $v0, 1
move $a0, $s2
syscall
li $s6, 18
rem $s6, $s6, 4
move $a0, $s6
syscall
li $t8, 3
div $t8, $t8, 3
move $a0, $t8
syscall
li $t4, 4
div $t4, $t4, 3
move $a0, $t4
syscall
