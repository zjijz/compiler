.data
n:	.word	0	# l in original
k:	.word	0	# i in original
j:	.word	0	# h in original
p:	.word	0	# n in original
h:	.word	0	# f in original
m:	.word	0	# k in original
v:	.word	0	# t in original
r:	.word	0	# p in original
x:	.word	0	# v in original
u:	.word	0	# s in original
c:	.word	0	# a in original
q:	.word	0	# o in original
d:	.word	0	# b in original
l:	.word	0	# j in original
o:	.word	0	# m in original
w:	.word	0	# u in original
t:	.word	0	# r in original
i:	.word	0	# g in original
z:	.word	0	# x in original
e:	.word	0	# c in original
y:	.word	0	# w in original
ab:	.word	0	# z in original
g:	.word	0	# e in original
f:	.word	0	# d in original
s:	.word	0	# q in original
aa:	.word	0	# y in original
.text
li $v0, 5
syscall
la $t8, c
lw $s2, 0($t8)
move $s2, $v0
li $v0, 5
syscall
la $t0, d
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
la $s4, e
lw $s1, 0($s4)
move $s1, $v0
li $v0, 5
syscall
la $s3, f
lw $t5, 0($s3)
move $t5, $v0
li $v0, 5
syscall
la $t2, g
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s6, h
lw $s5, 0($s6)
move $s5, $v0
li $v0, 5
syscall
la $t4, i
lw $t9, 0($t4)
move $t9, $v0
li $v0, 5
syscall
la $t6, j
lw $t3, 0($t6)
move $t3, $v0
li $v0, 5
syscall
la $s0, c
sw $s2, 0($s0)
la $s2, k
lw $t8, 0($s2)
move $t8, $v0
li $v0, 5
syscall
la $s0, d
sw $t1, 0($s0)
la $t1, l
lw $t0, 0($t1)
move $t0, $v0
li $v0, 5
syscall
la $s0, e
sw $s1, 0($s0)
la $s1, m
lw $s4, 0($s1)
move $s4, $v0
li $v0, 5
syscall
la $s0, f
sw $t5, 0($s0)
la $t5, n
lw $s3, 0($t5)
move $s3, $v0
li $v0, 5
syscall
la $s0, g
sw $t7, 0($s0)
la $t7, o
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $s0, h
sw $s5, 0($s0)
la $s5, p
lw $s6, 0($s5)
move $s6, $v0
li $v0, 5
syscall
la $s0, i
sw $t9, 0($s0)
la $t9, q
lw $t4, 0($t9)
move $t4, $v0
li $v0, 5
syscall
la $s0, j
sw $t3, 0($s0)
la $t3, r
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $s0, k
sw $t8, 0($s0)
la $t8, s
lw $s2, 0($t8)
move $s2, $v0
li $v0, 5
syscall
la $s0, l
sw $t0, 0($s0)
la $t0, t
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
la $s0, m
sw $s4, 0($s0)
la $s4, u
lw $s1, 0($s4)
move $s1, $v0
li $v0, 5
syscall
la $s0, n
sw $s3, 0($s0)
la $s3, v
lw $t5, 0($s3)
move $t5, $v0
li $v0, 5
syscall
la $s0, o
sw $t2, 0($s0)
la $t2, w
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s0, p
sw $s6, 0($s0)
la $s6, x
lw $s5, 0($s6)
move $s5, $v0
li $v0, 5
syscall
la $s0, q
sw $t4, 0($s0)
la $t4, y
lw $t9, 0($t4)
move $t9, $v0
li $v0, 5
syscall
la $s0, r
sw $t6, 0($s0)
la $t6, z
lw $t3, 0($t6)
move $t3, $v0
li $v0, 5
syscall
la $s0, s
sw $s2, 0($s0)
la $s2, aa
lw $t8, 0($s2)
move $t8, $v0
li $v0, 5
syscall
la $s0, t
sw $t1, 0($s0)
la $t1, ab
lw $t0, 0($t1)
move $t0, $v0
la $s0, u
sw $s1, 0($s0)
la $s4, c
lw $s1, 0($s4)
li $v0, 1
move $a0, $s1
syscall
la $s0, v
sw $t5, 0($s0)
la $s3, d
lw $t5, 0($s3)
move $a0, $t5
syscall
la $s0, w
sw $t7, 0($s0)
la $t2, e
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, x
sw $s5, 0($s0)
la $s6, f
lw $s5, 0($s6)
move $a0, $s5
syscall
la $s0, y
sw $t9, 0($s0)
la $t4, g
lw $t9, 0($t4)
move $a0, $t9
syscall
la $s0, z
sw $t3, 0($s0)
la $t6, h
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, aa
sw $t8, 0($s0)
la $s2, i
lw $t8, 0($s2)
move $a0, $t8
syscall
la $s0, ab
sw $t0, 0($s0)
la $t1, j
lw $t0, 0($t1)
move $a0, $t0
syscall
la $s0, c
sw $s1, 0($s0)
la $s4, k
lw $s1, 0($s4)
move $a0, $s1
syscall
la $s0, d
sw $t5, 0($s0)
la $s3, l
lw $t5, 0($s3)
move $a0, $t5
syscall
la $s0, e
sw $t7, 0($s0)
la $t2, m
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, f
sw $s5, 0($s0)
la $s6, n
lw $s5, 0($s6)
move $a0, $s5
syscall
la $s0, g
sw $t9, 0($s0)
la $t4, o
lw $t9, 0($t4)
move $a0, $t9
syscall
la $s0, h
sw $t3, 0($s0)
la $t6, p
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, i
sw $t8, 0($s0)
la $s2, q
lw $t8, 0($s2)
move $a0, $t8
syscall
la $s0, j
sw $t0, 0($s0)
la $t1, r
lw $t0, 0($t1)
move $a0, $t0
syscall
la $s0, k
sw $s1, 0($s0)
la $s4, s
lw $s1, 0($s4)
move $a0, $s1
syscall
la $s0, l
sw $t5, 0($s0)
la $s3, t
lw $t5, 0($s3)
move $a0, $t5
syscall
la $s0, m
sw $t7, 0($s0)
la $t2, u
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, n
sw $s5, 0($s0)
la $s6, v
lw $s5, 0($s6)
move $a0, $s5
syscall
la $s0, o
sw $t9, 0($s0)
la $t4, w
lw $t9, 0($t4)
move $a0, $t9
syscall
la $s0, p
sw $t3, 0($s0)
la $t6, x
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, q
sw $t8, 0($s0)
la $s2, y
lw $t8, 0($s2)
move $a0, $t8
syscall
la $s0, r
sw $t0, 0($s0)
la $t1, z
lw $t0, 0($t1)
move $a0, $t0
syscall
la $s0, s
sw $s1, 0($s0)
la $s4, aa
lw $s1, 0($s4)
move $a0, $s1
syscall
la $s0, t
sw $t5, 0($s0)
la $s3, ab
lw $t5, 0($s3)
move $a0, $t5
syscall
