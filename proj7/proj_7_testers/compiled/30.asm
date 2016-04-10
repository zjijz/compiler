.text
li $t8, 3
mul $t8, $t8, 4
li $v0, 1
move $a0, $t8
syscall
li $s6, 18
rem $s6, $s6, 4
move $a0, $s6
syscall
li $t0, 3
div $t0, $t0, 3
move $a0, $t0
syscall
li $t6, 4
div $t6, $t6, 3
move $a0, $t6
syscall
