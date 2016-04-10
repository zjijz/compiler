.data
l:	.word	0	# j in original
m:	.word	0	# k in original
u:	.word	0	# s in original
z:	.word	0	# x in original
ab:	.word	0	# z in original
e:	.word	0	# c in original
r:	.word	0	# p in original
aa:	.word	0	# y in original
c:	.word	0	# a in original
f:	.word	0	# d in original
k:	.word	0	# i in original
y:	.word	0	# w in original
o:	.word	0	# m in original
n:	.word	0	# l in original
j:	.word	0	# h in original
w:	.word	0	# u in original
i:	.word	0	# g in original
t:	.word	0	# r in original
h:	.word	0	# f in original
v:	.word	0	# t in original
s:	.word	0	# q in original
d:	.word	0	# b in original
g:	.word	0	# e in original
p:	.word	0	# n in original
x:	.word	0	# v in original
q:	.word	0	# o in original
.text
li $v0, 5
syscall
la $t0, c
lw $s5, 0($t0)
move $s5, $v0
li $v0, 5
syscall
la $t4, d
lw $s3, 0($t4)
move $s3, $v0
li $v0, 5
syscall
la $t6, e
lw $s1, 0($t6)
move $s1, $v0
li $v0, 5
syscall
la $t3, f
lw $t8, 0($t3)
move $t8, $v0
li $v0, 5
syscall
la $s4, g
lw $t2, 0($s4)
move $t2, $v0
li $v0, 5
syscall
la $t1, h
lw $s6, 0($t1)
move $s6, $v0
li $v0, 5
syscall
la $s2, i
lw $t5, 0($s2)
move $t5, $v0
li $v0, 5
syscall
la $t9, j
lw $t7, 0($t9)
move $t7, $v0
li $v0, 5
syscall
la $s0, c
sw $s5, 0($s0)
la $s5, k
lw $t0, 0($s5)
move $t0, $v0
li $v0, 5
syscall
la $s0, d
sw $s3, 0($s0)
la $s3, l
lw $t4, 0($s3)
move $t4, $v0
li $v0, 5
syscall
la $s0, e
sw $s1, 0($s0)
la $s1, m
lw $t6, 0($s1)
move $t6, $v0
li $v0, 5
syscall
la $s0, f
sw $t8, 0($s0)
la $t8, n
lw $t3, 0($t8)
move $t3, $v0
li $v0, 5
syscall
la $s0, g
sw $t2, 0($s0)
la $t2, o
lw $s4, 0($t2)
move $s4, $v0
li $v0, 5
syscall
la $s0, h
sw $s6, 0($s0)
la $s6, p
lw $t1, 0($s6)
move $t1, $v0
li $v0, 5
syscall
la $s0, i
sw $t5, 0($s0)
la $t5, q
lw $s2, 0($t5)
move $s2, $v0
li $v0, 5
syscall
la $s0, j
sw $t7, 0($s0)
la $t7, r
lw $t9, 0($t7)
move $t9, $v0
li $v0, 5
syscall
la $s0, k
sw $t0, 0($s0)
la $t0, s
lw $s5, 0($t0)
move $s5, $v0
li $v0, 5
syscall
la $s0, l
sw $t4, 0($s0)
la $t4, t
lw $s3, 0($t4)
move $s3, $v0
li $v0, 5
syscall
la $s0, m
sw $t6, 0($s0)
la $t6, u
lw $s1, 0($t6)
move $s1, $v0
li $v0, 5
syscall
la $s0, n
sw $t3, 0($s0)
la $t3, v
lw $t8, 0($t3)
move $t8, $v0
li $v0, 5
syscall
la $s0, o
sw $s4, 0($s0)
la $s4, w
lw $t2, 0($s4)
move $t2, $v0
li $v0, 5
syscall
la $s0, p
sw $t1, 0($s0)
la $t1, x
lw $s6, 0($t1)
move $s6, $v0
li $v0, 5
syscall
la $s0, q
sw $s2, 0($s0)
la $s2, y
lw $t5, 0($s2)
move $t5, $v0
li $v0, 5
syscall
la $s0, r
sw $t9, 0($s0)
la $t9, z
lw $t7, 0($t9)
move $t7, $v0
li $v0, 5
syscall
la $s0, s
sw $s5, 0($s0)
la $s5, aa
lw $t0, 0($s5)
move $t0, $v0
li $v0, 5
syscall
la $s0, t
sw $s3, 0($s0)
la $s3, ab
lw $t4, 0($s3)
move $t4, $v0
la $s0, u
sw $s1, 0($s0)
la $t6, c
lw $s1, 0($t6)
li $v0, 1
move $a0, $s1
syscall
la $s0, v
sw $t8, 0($s0)
la $t3, d
lw $t8, 0($t3)
move $a0, $t8
syscall
la $s0, w
sw $t2, 0($s0)
la $s4, e
lw $t2, 0($s4)
move $a0, $t2
syscall
la $s0, x
sw $s6, 0($s0)
la $t1, f
lw $s6, 0($t1)
move $a0, $s6
syscall
la $s0, y
sw $t5, 0($s0)
la $s2, g
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, z
sw $t7, 0($s0)
la $t9, h
lw $t7, 0($t9)
move $a0, $t7
syscall
la $s0, aa
sw $t0, 0($s0)
la $s5, i
lw $t0, 0($s5)
move $a0, $t0
syscall
la $s0, ab
sw $t4, 0($s0)
la $s3, j
lw $t4, 0($s3)
move $a0, $t4
syscall
la $s0, c
sw $s1, 0($s0)
la $t6, k
lw $s1, 0($t6)
move $a0, $s1
syscall
la $s0, d
sw $t8, 0($s0)
la $t3, l
lw $t8, 0($t3)
move $a0, $t8
syscall
la $s0, e
sw $t2, 0($s0)
la $s4, m
lw $t2, 0($s4)
move $a0, $t2
syscall
la $s0, f
sw $s6, 0($s0)
la $t1, n
lw $s6, 0($t1)
move $a0, $s6
syscall
la $s0, g
sw $t5, 0($s0)
la $s2, o
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, h
sw $t7, 0($s0)
la $t9, p
lw $t7, 0($t9)
move $a0, $t7
syscall
la $s0, i
sw $t0, 0($s0)
la $s5, q
lw $t0, 0($s5)
move $a0, $t0
syscall
la $s0, j
sw $t4, 0($s0)
la $s3, r
lw $t4, 0($s3)
move $a0, $t4
syscall
la $s0, k
sw $s1, 0($s0)
la $t6, s
lw $s1, 0($t6)
move $a0, $s1
syscall
la $s0, l
sw $t8, 0($s0)
la $t3, t
lw $t8, 0($t3)
move $a0, $t8
syscall
la $s0, m
sw $t2, 0($s0)
la $s4, u
lw $t2, 0($s4)
move $a0, $t2
syscall
la $s0, n
sw $s6, 0($s0)
la $t1, v
lw $s6, 0($t1)
move $a0, $s6
syscall
la $s0, o
sw $t5, 0($s0)
la $s2, w
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, p
sw $t7, 0($s0)
la $t9, x
lw $t7, 0($t9)
move $a0, $t7
syscall
la $s0, q
sw $t0, 0($s0)
la $s5, y
lw $t0, 0($s5)
move $a0, $t0
syscall
la $s0, r
sw $t4, 0($s0)
la $s3, z
lw $t4, 0($s3)
move $a0, $t4
syscall
la $s0, s
sw $s1, 0($s0)
la $t6, aa
lw $s1, 0($t6)
move $a0, $s1
syscall
la $s0, t
sw $t8, 0($s0)
la $t3, ab
lw $t8, 0($t3)
move $a0, $t8
syscall
