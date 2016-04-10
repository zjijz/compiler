.text
li $s3, 5
mul $s3, $s3, 6
div $s3, $s3, 2
li $v0, 1
move $a0, $s3
syscall
li $t4, 6
div $t4, $t4, 2
mul $t4, $t4, 5
move $a0, $t4
syscall
