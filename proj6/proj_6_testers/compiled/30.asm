.text
li $s6, 3
mul $s6, $s6, 4
li $v0, 1
move $a0, $s6
syscall
li $s4, 18
rem $s4, $s4, 4
move $a0, $s4
syscall
li $t5, 3
div $t5, $t5, 3
move $a0, $t5
syscall
li $t4, 4
div $t4, $t4, 3
move $a0, $t4
syscall
