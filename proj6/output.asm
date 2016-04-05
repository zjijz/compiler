.text
li $at, 1101004800
mtc1 $at, $f27
li $at, 1092616192
mtc1 $at, $f13
mul.s $f27, $f27, $f13
mov.s $f9, $f27
li $v0, 2
mov.s $f12, $f9
syscall
