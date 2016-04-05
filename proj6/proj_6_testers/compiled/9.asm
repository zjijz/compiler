.data
q:	.word	0	# o in original
t:	.word	0	# r in original
ab:	.word	0	# z in original
k:	.word	0	# i in original
j:	.word	0	# h in original
n:	.word	0	# l in original
w:	.word	0	# u in original
c:	.word	0	# a in original
d:	.word	0	# b in original
r:	.word	0	# p in original
x:	.word	0	# v in original
i:	.word	0	# g in original
y:	.word	0	# w in original
f:	.word	0	# d in original
l:	.word	0	# j in original
v:	.word	0	# t in original
aa:	.word	0	# y in original
h:	.word	0	# f in original
z:	.word	0	# x in original
o:	.word	0	# m in original
p:	.word	0	# n in original
m:	.word	0	# k in original
u:	.word	0	# s in original
s:	.word	0	# q in original
g:	.word	0	# e in original
e:	.word	0	# c in original
.text
la $s0, c
sw $s6, 0($s0)
la $s0, d
sw $s4, 0($s0)
la $s0, e
sw $t2, 0($s0)
la $s0, f
sw $s1, 0($s0)
la $s0, g
sw $t6, 0($s0)
la $s0, h
sw $t3, 0($s0)
la $s0, i
sw $t8, 0($s0)
la $s0, j
sw $s3, 0($s0)
la $s0, k
sw $s6, 0($s0)
la $s0, l
sw $s4, 0($s0)
la $s0, m
sw $t2, 0($s0)
la $s0, n
sw $s1, 0($s0)
la $s0, o
sw $t6, 0($s0)
la $s0, p
sw $t3, 0($s0)
la $s0, q
sw $t8, 0($s0)
la $s0, r
sw $s3, 0($s0)
la $s0, s
sw $s6, 0($s0)
la $s0, t
sw $s4, 0($s0)
li $v0, 5
syscall
la $s0, u
sw $t2, 0($s0)
la $t2, c
lw $t5, 0($t2)
move $t5, $v0
li $v0, 5
syscall
la $s0, v
sw $s1, 0($s0)
la $s1, d
lw $t4, 0($s1)
move $t4, $v0
li $v0, 5
syscall
la $s0, w
sw $t6, 0($s0)
la $t6, e
lw $t9, 0($t6)
move $t9, $v0
li $v0, 5
syscall
la $s0, x
sw $t3, 0($s0)
la $t3, f
lw $s2, 0($t3)
move $s2, $v0
li $v0, 5
syscall
la $s0, y
sw $t8, 0($s0)
la $t8, g
lw $t7, 0($t8)
move $t7, $v0
li $v0, 5
syscall
la $s0, z
sw $s3, 0($s0)
la $s3, h
lw $s5, 0($s3)
move $s5, $v0
li $v0, 5
syscall
la $s0, aa
sw $s6, 0($s0)
la $s6, i
lw $t1, 0($s6)
move $t1, $v0
li $v0, 5
syscall
la $s0, ab
sw $s4, 0($s0)
la $s4, j
lw $t0, 0($s4)
move $t0, $v0
li $v0, 5
syscall
la $s0, c
sw $t5, 0($s0)
la $t5, k
lw $t2, 0($t5)
move $t2, $v0
li $v0, 5
syscall
la $s0, d
sw $t4, 0($s0)
la $t4, l
lw $s1, 0($t4)
move $s1, $v0
li $v0, 5
syscall
la $s0, e
sw $t9, 0($s0)
la $t9, m
lw $t6, 0($t9)
move $t6, $v0
li $v0, 5
syscall
la $s0, f
sw $s2, 0($s0)
la $s2, n
lw $t3, 0($s2)
move $t3, $v0
li $v0, 5
syscall
la $s0, g
sw $t7, 0($s0)
la $t7, o
lw $t8, 0($t7)
move $t8, $v0
li $v0, 5
syscall
la $s0, h
sw $s5, 0($s0)
la $s5, p
lw $s3, 0($s5)
move $s3, $v0
li $v0, 5
syscall
la $s0, i
sw $t1, 0($s0)
la $t1, q
lw $s6, 0($t1)
move $s6, $v0
li $v0, 5
syscall
la $s0, j
sw $t0, 0($s0)
la $t0, r
lw $s4, 0($t0)
move $s4, $v0
li $v0, 5
syscall
la $s0, k
sw $t2, 0($s0)
la $t2, s
lw $t5, 0($t2)
move $t5, $v0
li $v0, 5
syscall
la $s0, l
sw $s1, 0($s0)
la $s1, t
lw $t4, 0($s1)
move $t4, $v0
li $v0, 5
syscall
la $s0, m
sw $t6, 0($s0)
la $t6, u
lw $t9, 0($t6)
move $t9, $v0
li $v0, 5
syscall
la $s0, n
sw $t3, 0($s0)
la $t3, v
lw $s2, 0($t3)
move $s2, $v0
li $v0, 5
syscall
la $s0, o
sw $t8, 0($s0)
la $t8, w
lw $t7, 0($t8)
move $t7, $v0
li $v0, 5
syscall
la $s0, p
sw $s3, 0($s0)
la $s3, x
lw $s5, 0($s3)
move $s5, $v0
li $v0, 5
syscall
la $s0, q
sw $s6, 0($s0)
la $s6, y
lw $t1, 0($s6)
move $t1, $v0
li $v0, 5
syscall
la $s0, r
sw $s4, 0($s0)
la $s4, z
lw $t0, 0($s4)
move $t0, $v0
li $v0, 5
syscall
la $s0, s
sw $t5, 0($s0)
la $t5, aa
lw $t2, 0($t5)
move $t2, $v0
li $v0, 5
syscall
la $s0, t
sw $t4, 0($s0)
la $t4, ab
lw $s1, 0($t4)
move $s1, $v0
la $s0, u
sw $t9, 0($s0)
la $t6, c
lw $t9, 0($t6)
li $v0, 1
move $a0, $t9
syscall
la $s0, v
sw $s2, 0($s0)
la $t3, d
lw $s2, 0($t3)
move $a0, $s2
syscall
la $s0, w
sw $t7, 0($s0)
la $t8, e
lw $t7, 0($t8)
move $a0, $t7
syscall
la $s0, x
sw $s5, 0($s0)
la $s3, f
lw $s5, 0($s3)
move $a0, $s5
syscall
la $s0, y
sw $t1, 0($s0)
la $s6, g
lw $t1, 0($s6)
move $a0, $t1
syscall
la $s0, z
sw $t0, 0($s0)
la $s4, h
lw $t0, 0($s4)
move $a0, $t0
syscall
la $s0, aa
sw $t2, 0($s0)
la $t5, i
lw $t2, 0($t5)
move $a0, $t2
syscall
la $s0, ab
sw $s1, 0($s0)
la $t4, j
lw $s1, 0($t4)
move $a0, $s1
syscall
la $s0, c
sw $t9, 0($s0)
la $t6, k
lw $t9, 0($t6)
move $a0, $t9
syscall
la $s0, d
sw $s2, 0($s0)
la $t3, l
lw $s2, 0($t3)
move $a0, $s2
syscall
la $s0, e
sw $t7, 0($s0)
la $t8, m
lw $t7, 0($t8)
move $a0, $t7
syscall
la $s0, f
sw $s5, 0($s0)
la $s3, n
lw $s5, 0($s3)
move $a0, $s5
syscall
la $s0, g
sw $t1, 0($s0)
la $s6, o
lw $t1, 0($s6)
move $a0, $t1
syscall
la $s0, h
sw $t0, 0($s0)
la $s4, p
lw $t0, 0($s4)
move $a0, $t0
syscall
la $s0, i
sw $t2, 0($s0)
la $t5, q
lw $t2, 0($t5)
move $a0, $t2
syscall
la $s0, j
sw $s1, 0($s0)
la $t4, r
lw $s1, 0($t4)
move $a0, $s1
syscall
la $s0, k
sw $t9, 0($s0)
la $t6, s
lw $t9, 0($t6)
move $a0, $t9
syscall
la $s0, l
sw $s2, 0($s0)
la $t3, t
lw $s2, 0($t3)
move $a0, $s2
syscall
la $s0, m
sw $t7, 0($s0)
la $t8, u
lw $t7, 0($t8)
move $a0, $t7
syscall
la $s0, n
sw $s5, 0($s0)
la $s3, v
lw $s5, 0($s3)
move $a0, $s5
syscall
la $s0, o
sw $t1, 0($s0)
la $s6, w
lw $t1, 0($s6)
move $a0, $t1
syscall
la $s0, p
sw $t0, 0($s0)
la $s4, x
lw $t0, 0($s4)
move $a0, $t0
syscall
la $s0, q
sw $t2, 0($s0)
la $t5, y
lw $t2, 0($t5)
move $a0, $t2
syscall
la $s0, r
sw $s1, 0($s0)
la $t4, z
lw $s1, 0($t4)
move $a0, $s1
syscall
la $s0, s
sw $t9, 0($s0)
la $t6, aa
lw $t9, 0($t6)
move $a0, $t9
syscall
la $s0, t
sw $s2, 0($s0)
la $t3, ab
lw $s2, 0($t3)
move $a0, $s2
syscall
