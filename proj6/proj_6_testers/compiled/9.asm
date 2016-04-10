.data
g:	.word	0	# e in original
v:	.word	0	# t in original
r:	.word	0	# p in original
s:	.word	0	# q in original
n:	.word	0	# l in original
k:	.word	0	# i in original
ab:	.word	0	# z in original
w:	.word	0	# u in original
z:	.word	0	# x in original
h:	.word	0	# f in original
x:	.word	0	# v in original
p:	.word	0	# n in original
i:	.word	0	# g in original
j:	.word	0	# h in original
u:	.word	0	# s in original
f:	.word	0	# d in original
q:	.word	0	# o in original
c:	.word	0	# a in original
o:	.word	0	# m in original
l:	.word	0	# j in original
y:	.word	0	# w in original
t:	.word	0	# r in original
d:	.word	0	# b in original
e:	.word	0	# c in original
m:	.word	0	# k in original
aa:	.word	0	# y in original
.text
li $v0, 5
syscall
la $t6, c
lw $s5, 0($t6)
move $s5, $v0
li $v0, 5
syscall
la $t8, d
lw $t4, 0($t8)
move $t4, $v0
li $v0, 5
syscall
la $s4, e
lw $t3, 0($s4)
move $t3, $v0
li $v0, 5
syscall
la $s3, f
lw $s1, 0($s3)
move $s1, $v0
li $v0, 5
syscall
la $t7, g
lw $s6, 0($t7)
move $s6, $v0
li $v0, 5
syscall
la $s2, h
lw $t1, 0($s2)
move $t1, $v0
li $v0, 5
syscall
la $t0, i
lw $t5, 0($t0)
move $t5, $v0
li $v0, 5
syscall
la $t2, j
lw $t9, 0($t2)
move $t9, $v0
li $v0, 5
syscall
la $s0, c
sw $s5, 0($s0)
la $s5, k
lw $t6, 0($s5)
move $t6, $v0
li $v0, 5
syscall
la $s0, d
sw $t4, 0($s0)
la $t4, l
lw $t8, 0($t4)
move $t8, $v0
li $v0, 5
syscall
la $s0, e
sw $t3, 0($s0)
la $t3, m
lw $s4, 0($t3)
move $s4, $v0
li $v0, 5
syscall
la $s0, f
sw $s1, 0($s0)
la $s1, n
lw $s3, 0($s1)
move $s3, $v0
li $v0, 5
syscall
la $s0, g
sw $s6, 0($s0)
la $s6, o
lw $t7, 0($s6)
move $t7, $v0
li $v0, 5
syscall
la $s0, h
sw $t1, 0($s0)
la $t1, p
lw $s2, 0($t1)
move $s2, $v0
li $v0, 5
syscall
la $s0, i
sw $t5, 0($s0)
la $t5, q
lw $t0, 0($t5)
move $t0, $v0
li $v0, 5
syscall
la $s0, j
sw $t9, 0($s0)
la $t9, r
lw $t2, 0($t9)
move $t2, $v0
li $v0, 5
syscall
la $s0, k
sw $t6, 0($s0)
la $t6, s
lw $s5, 0($t6)
move $s5, $v0
li $v0, 5
syscall
la $s0, l
sw $t8, 0($s0)
la $t8, t
lw $t4, 0($t8)
move $t4, $v0
li $v0, 5
syscall
la $s0, m
sw $s4, 0($s0)
la $s4, u
lw $t3, 0($s4)
move $t3, $v0
li $v0, 5
syscall
la $s0, n
sw $s3, 0($s0)
la $s3, v
lw $s1, 0($s3)
move $s1, $v0
li $v0, 5
syscall
la $s0, o
sw $t7, 0($s0)
la $t7, w
lw $s6, 0($t7)
move $s6, $v0
li $v0, 5
syscall
la $s0, p
sw $s2, 0($s0)
la $s2, x
lw $t1, 0($s2)
move $t1, $v0
li $v0, 5
syscall
la $s0, q
sw $t0, 0($s0)
la $t0, y
lw $t5, 0($t0)
move $t5, $v0
li $v0, 5
syscall
la $s0, r
sw $t2, 0($s0)
la $t2, z
lw $t9, 0($t2)
move $t9, $v0
li $v0, 5
syscall
la $s0, s
sw $s5, 0($s0)
la $s5, aa
lw $t6, 0($s5)
move $t6, $v0
li $v0, 5
syscall
la $s0, t
sw $t4, 0($s0)
la $t4, ab
lw $t8, 0($t4)
move $t8, $v0
la $s0, u
sw $t3, 0($s0)
la $s4, c
lw $t3, 0($s4)
li $v0, 1
move $a0, $t3
syscall
la $s0, v
sw $s1, 0($s0)
la $s3, d
lw $s1, 0($s3)
move $a0, $s1
syscall
la $s0, w
sw $s6, 0($s0)
la $t7, e
lw $s6, 0($t7)
move $a0, $s6
syscall
la $s0, x
sw $t1, 0($s0)
la $s2, f
lw $t1, 0($s2)
move $a0, $t1
syscall
la $s0, y
sw $t5, 0($s0)
la $t0, g
lw $t5, 0($t0)
move $a0, $t5
syscall
la $s0, z
sw $t9, 0($s0)
la $t2, h
lw $t9, 0($t2)
move $a0, $t9
syscall
la $s0, aa
sw $t6, 0($s0)
la $s5, i
lw $t6, 0($s5)
move $a0, $t6
syscall
la $s0, ab
sw $t8, 0($s0)
la $t4, j
lw $t8, 0($t4)
move $a0, $t8
syscall
la $s0, c
sw $t3, 0($s0)
la $s4, k
lw $t3, 0($s4)
move $a0, $t3
syscall
la $s0, d
sw $s1, 0($s0)
la $s3, l
lw $s1, 0($s3)
move $a0, $s1
syscall
la $s0, e
sw $s6, 0($s0)
la $t7, m
lw $s6, 0($t7)
move $a0, $s6
syscall
la $s0, f
sw $t1, 0($s0)
la $s2, n
lw $t1, 0($s2)
move $a0, $t1
syscall
la $s0, g
sw $t5, 0($s0)
la $t0, o
lw $t5, 0($t0)
move $a0, $t5
syscall
la $s0, h
sw $t9, 0($s0)
la $t2, p
lw $t9, 0($t2)
move $a0, $t9
syscall
la $s0, i
sw $t6, 0($s0)
la $s5, q
lw $t6, 0($s5)
move $a0, $t6
syscall
la $s0, j
sw $t8, 0($s0)
la $t4, r
lw $t8, 0($t4)
move $a0, $t8
syscall
la $s0, k
sw $t3, 0($s0)
la $s4, s
lw $t3, 0($s4)
move $a0, $t3
syscall
la $s0, l
sw $s1, 0($s0)
la $s3, t
lw $s1, 0($s3)
move $a0, $s1
syscall
la $s0, m
sw $s6, 0($s0)
la $t7, u
lw $s6, 0($t7)
move $a0, $s6
syscall
la $s0, n
sw $t1, 0($s0)
la $s2, v
lw $t1, 0($s2)
move $a0, $t1
syscall
la $s0, o
sw $t5, 0($s0)
la $t0, w
lw $t5, 0($t0)
move $a0, $t5
syscall
la $s0, p
sw $t9, 0($s0)
la $t2, x
lw $t9, 0($t2)
move $a0, $t9
syscall
la $s0, q
sw $t6, 0($s0)
la $s5, y
lw $t6, 0($s5)
move $a0, $t6
syscall
la $s0, r
sw $t8, 0($s0)
la $t4, z
lw $t8, 0($t4)
move $a0, $t8
syscall
la $s0, s
sw $t3, 0($s0)
la $s4, aa
lw $t3, 0($s4)
move $a0, $t3
syscall
la $s0, t
sw $s1, 0($s0)
la $s3, ab
lw $s1, 0($s3)
move $a0, $s1
syscall
