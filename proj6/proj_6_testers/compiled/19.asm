.data
d:	.asciiz	"I never could get the hang of Thursdays."
.text
li $v0, 4
la $t3, d
move $a0, $t3
syscall
