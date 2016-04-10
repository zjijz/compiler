.text
li $s3, 5
mul $s3, $s3, 6
div $s3, $s3, 2
li $v0, 1
move $a0, $s3
syscall
li $s5, 6
div $s5, $s5, 2
mul $s5, $s5, 5
move $a0, $s5
syscall
