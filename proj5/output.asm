.data
b:	.word	0	#y in original
a:	.word	3	#x in original
.text
la $t0, a
lw $t2, 0($t0)
la $t9, b
lw $t1, 0($t9)
move $t1, $t2
