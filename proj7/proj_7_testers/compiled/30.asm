.text
li $s1, 3
mul $s1, $s1, 4
li $v0, 1
move $a0, $s1
syscall
li $s6, 18
rem $s6, $s6, 4
move $a0, $s6
syscall
li $t0, 3
div $t0, $t0, 3
move $a0, $t0
syscall
li $s3, 4
div $s3, $s3, 3
move $a0, $s3
syscall
