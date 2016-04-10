.text
li $s2, 5
mul $s2, $s2, 6
div $s2, $s2, 2
li $v0, 1
move $a0, $s2
syscall
li $s3, 6
div $s3, $s3, 2
mul $s3, $s3, 5
move $a0, $s3
syscall
