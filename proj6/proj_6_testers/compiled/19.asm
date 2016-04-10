.data
d:	.asciiz	"I never could get the hang of Thursdays."
.text
li $v0, 4
la $s6, d
move $a0, $s6
syscall
