.text
li $s3, 3
mul $s3, $s3, 4
li $v0, 1
move $a0, $s3
syscall
li $t0, 18
rem $t0, $t0, 4
move $a0, $t0
syscall
li $t4, 3
div $t4, $t4, 3
move $a0, $t4
syscall
li $t8, 4
div $t8, $t8, 3
move $a0, $t8
syscall
