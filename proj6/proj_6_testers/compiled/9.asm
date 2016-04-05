.data
c:	.word	0	# a in original
g:	.word	0	# e in original
d:	.word	0	# b in original
s:	.word	0	# q in original
t:	.word	0	# r in original
f:	.word	0	# d in original
i:	.word	0	# g in original
h:	.word	0	# f in original
q:	.word	0	# o in original
o:	.word	0	# m in original
x:	.word	0	# v in original
k:	.word	0	# i in original
w:	.word	0	# u in original
e:	.word	0	# c in original
y:	.word	0	# w in original
u:	.word	0	# s in original
r:	.word	0	# p in original
l:	.word	0	# j in original
j:	.word	0	# h in original
p:	.word	0	# n in original
m:	.word	0	# k in original
v:	.word	0	# t in original
z:	.word	0	# x in original
aa:	.word	0	# y in original
ab:	.word	0	# z in original
n:	.word	0	# l in original
.text
li $v0, 5
syscall
la $t1, c
lw $s4, 0($t1)
move $s4, $v0
li $v0, 5
syscall
la $t5, d
lw $t9, 0($t5)
move $t9, $v0
li $v0, 5
syscall
la $t4, e
lw $t8, 0($t4)
move $t8, $v0
li $v0, 5
syscall
la $s3, f
lw $s1, 0($s3)
move $s1, $v0
li $v0, 5
syscall
la $t3, g
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $s5, h
lw $s2, 0($s5)
move $s2, $v0
li $v0, 5
syscall
la $t0, i
lw $s6, 0($t0)
move $s6, $v0
li $v0, 5
syscall
la $t2, j
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s0, c
sw $s4, 0($s0)
la $s4, k
lw $t1, 0($s4)
move $t1, $v0
li $v0, 5
syscall
la $s0, d
sw $t9, 0($s0)
la $t9, l
lw $t5, 0($t9)
move $t5, $v0
li $v0, 5
syscall
la $s0, e
sw $t8, 0($s0)
la $t8, m
lw $t4, 0($t8)
move $t4, $v0
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
sw $t6, 0($s0)
la $t6, o
lw $t3, 0($t6)
move $t3, $v0
li $v0, 5
syscall
la $s0, h
sw $s2, 0($s0)
la $s2, p
lw $s5, 0($s2)
move $s5, $v0
li $v0, 5
syscall
la $s0, i
sw $s6, 0($s0)
la $s6, q
lw $t0, 0($s6)
move $t0, $v0
li $v0, 5
syscall
la $s0, j
sw $t7, 0($s0)
la $t7, r
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $s0, k
sw $t1, 0($s0)
la $t1, s
lw $s4, 0($t1)
move $s4, $v0
li $v0, 5
syscall
la $s0, l
sw $t5, 0($s0)
la $t5, t
lw $t9, 0($t5)
move $t9, $v0
li $v0, 5
syscall
la $s0, m
sw $t4, 0($s0)
la $t4, u
lw $t8, 0($t4)
move $t8, $v0
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
sw $t3, 0($s0)
la $t3, w
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $s0, p
sw $s5, 0($s0)
la $s5, x
lw $s2, 0($s5)
move $s2, $v0
li $v0, 5
syscall
la $s0, q
sw $t0, 0($s0)
la $t0, y
lw $s6, 0($t0)
move $s6, $v0
li $v0, 5
syscall
la $s0, r
sw $t2, 0($s0)
la $t2, z
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s0, s
sw $s4, 0($s0)
la $s4, aa
lw $t1, 0($s4)
move $t1, $v0
li $v0, 5
syscall
la $s0, t
sw $t9, 0($s0)
la $t9, ab
lw $t5, 0($t9)
move $t5, $v0
la $s0, u
sw $t8, 0($s0)
la $t4, c
lw $t8, 0($t4)
li $v0, 1
move $a0, $t8
syscall
la $s0, v
sw $s1, 0($s0)
la $s3, d
lw $s1, 0($s3)
move $a0, $s1
syscall
la $s0, w
sw $t6, 0($s0)
la $t3, e
lw $t6, 0($t3)
move $a0, $t6
syscall
la $s0, x
sw $s2, 0($s0)
la $s5, f
lw $s2, 0($s5)
move $a0, $s2
syscall
la $s0, y
sw $s6, 0($s0)
la $t0, g
lw $s6, 0($t0)
move $a0, $s6
syscall
la $s0, z
sw $t7, 0($s0)
la $t2, h
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, aa
sw $t1, 0($s0)
la $s4, i
lw $t1, 0($s4)
move $a0, $t1
syscall
la $s0, ab
sw $t5, 0($s0)
la $t9, j
lw $t5, 0($t9)
move $a0, $t5
syscall
la $s0, c
sw $t8, 0($s0)
la $t4, k
lw $t8, 0($t4)
move $a0, $t8
syscall
la $s0, d
sw $s1, 0($s0)
la $s3, l
lw $s1, 0($s3)
move $a0, $s1
syscall
la $s0, e
sw $t6, 0($s0)
la $t3, m
lw $t6, 0($t3)
move $a0, $t6
syscall
la $s0, f
sw $s2, 0($s0)
la $s5, n
lw $s2, 0($s5)
move $a0, $s2
syscall
la $s0, g
sw $s6, 0($s0)
la $t0, o
lw $s6, 0($t0)
move $a0, $s6
syscall
la $s0, h
sw $t7, 0($s0)
la $t2, p
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, i
sw $t1, 0($s0)
la $s4, q
lw $t1, 0($s4)
move $a0, $t1
syscall
la $s0, j
sw $t5, 0($s0)
la $t9, r
lw $t5, 0($t9)
move $a0, $t5
syscall
la $s0, k
sw $t8, 0($s0)
la $t4, s
lw $t8, 0($t4)
move $a0, $t8
syscall
la $s0, l
sw $s1, 0($s0)
la $s3, t
lw $s1, 0($s3)
move $a0, $s1
syscall
la $s0, m
sw $t6, 0($s0)
la $t3, u
lw $t6, 0($t3)
move $a0, $t6
syscall
la $s0, n
sw $s2, 0($s0)
la $s5, v
lw $s2, 0($s5)
move $a0, $s2
syscall
la $s0, o
sw $s6, 0($s0)
la $t0, w
lw $s6, 0($t0)
move $a0, $s6
syscall
la $s0, p
sw $t7, 0($s0)
la $t2, x
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, q
sw $t1, 0($s0)
la $s4, y
lw $t1, 0($s4)
move $a0, $t1
syscall
la $s0, r
sw $t5, 0($s0)
la $t9, z
lw $t5, 0($t9)
move $a0, $t5
syscall
la $s0, s
sw $t8, 0($s0)
la $t4, aa
lw $t8, 0($t4)
move $a0, $t8
syscall
la $s0, t
sw $s1, 0($s0)
la $s3, ab
lw $s1, 0($s3)
move $a0, $s1
syscall
