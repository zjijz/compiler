.data
ab:	.word	0	# z in original
c:	.word	0	# a in original
k:	.word	0	# i in original
aa:	.word	0	# y in original
y:	.word	0	# w in original
m:	.word	0	# k in original
q:	.word	0	# o in original
d:	.word	0	# b in original
n:	.word	0	# l in original
o:	.word	0	# m in original
u:	.word	0	# s in original
w:	.word	0	# u in original
i:	.word	0	# g in original
p:	.word	0	# n in original
e:	.word	0	# c in original
f:	.word	0	# d in original
x:	.word	0	# v in original
g:	.word	0	# e in original
h:	.word	0	# f in original
v:	.word	0	# t in original
l:	.word	0	# j in original
s:	.word	0	# q in original
j:	.word	0	# h in original
t:	.word	0	# r in original
z:	.word	0	# x in original
r:	.word	0	# p in original
.text
li $v0, 5
syscall
la $t0, c
lw $s5, 0($t0)
move $s5, $v0
li $v0, 5
syscall
la $t1, d
lw $t8, 0($t1)
move $t8, $v0
li $v0, 5
syscall
la $t3, e
lw $s1, 0($t3)
move $s1, $v0
li $v0, 5
syscall
la $s2, f
lw $s4, 0($s2)
move $s4, $v0
li $v0, 5
syscall
la $s3, g
lw $t9, 0($s3)
move $t9, $v0
li $v0, 5
syscall
la $t5, h
lw $t6, 0($t5)
move $t6, $v0
li $v0, 5
syscall
la $s6, i
lw $t7, 0($s6)
move $t7, $v0
li $v0, 5
syscall
la $t4, j
lw $t2, 0($t4)
move $t2, $v0
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
sw $t8, 0($s0)
la $t8, l
lw $t1, 0($t8)
move $t1, $v0
li $v0, 5
syscall
la $s0, e
sw $s1, 0($s0)
la $s1, m
lw $t3, 0($s1)
move $t3, $v0
li $v0, 5
syscall
la $s0, f
sw $s4, 0($s0)
la $s4, n
lw $s2, 0($s4)
move $s2, $v0
li $v0, 5
syscall
la $s0, g
sw $t9, 0($s0)
la $t9, o
lw $s3, 0($t9)
move $s3, $v0
li $v0, 5
syscall
la $s0, h
sw $t6, 0($s0)
la $t6, p
lw $t5, 0($t6)
move $t5, $v0
li $v0, 5
syscall
la $s0, i
sw $t7, 0($s0)
la $t7, q
lw $s6, 0($t7)
move $s6, $v0
li $v0, 5
syscall
la $s0, j
sw $t2, 0($s0)
la $t2, r
lw $t4, 0($t2)
move $t4, $v0
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
sw $t1, 0($s0)
la $t1, t
lw $t8, 0($t1)
move $t8, $v0
li $v0, 5
syscall
la $s0, m
sw $t3, 0($s0)
la $t3, u
lw $s1, 0($t3)
move $s1, $v0
li $v0, 5
syscall
la $s0, n
sw $s2, 0($s0)
la $s2, v
lw $s4, 0($s2)
move $s4, $v0
li $v0, 5
syscall
la $s0, o
sw $s3, 0($s0)
la $s3, w
lw $t9, 0($s3)
move $t9, $v0
li $v0, 5
syscall
la $s0, p
sw $t5, 0($s0)
la $t5, x
lw $t6, 0($t5)
move $t6, $v0
li $v0, 5
syscall
la $s0, q
sw $s6, 0($s0)
la $s6, y
lw $t7, 0($s6)
move $t7, $v0
li $v0, 5
syscall
la $s0, r
sw $t4, 0($s0)
la $t4, z
lw $t2, 0($t4)
move $t2, $v0
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
sw $t8, 0($s0)
la $t8, ab
lw $t1, 0($t8)
move $t1, $v0
la $s0, u
sw $s1, 0($s0)
la $t3, c
lw $s1, 0($t3)
li $v0, 1
move $a0, $s1
syscall
la $s0, v
sw $s4, 0($s0)
la $s2, d
lw $s4, 0($s2)
move $a0, $s4
syscall
la $s0, w
sw $t9, 0($s0)
la $s3, e
lw $t9, 0($s3)
move $a0, $t9
syscall
la $s0, x
sw $t6, 0($s0)
la $t5, f
lw $t6, 0($t5)
move $a0, $t6
syscall
la $s0, y
sw $t7, 0($s0)
la $s6, g
lw $t7, 0($s6)
move $a0, $t7
syscall
la $s0, z
sw $t2, 0($s0)
la $t4, h
lw $t2, 0($t4)
move $a0, $t2
syscall
la $s0, aa
sw $t0, 0($s0)
la $s5, i
lw $t0, 0($s5)
move $a0, $t0
syscall
la $s0, ab
sw $t1, 0($s0)
la $t8, j
lw $t1, 0($t8)
move $a0, $t1
syscall
la $s0, c
sw $s1, 0($s0)
la $t3, k
lw $s1, 0($t3)
move $a0, $s1
syscall
la $s0, d
sw $s4, 0($s0)
la $s2, l
lw $s4, 0($s2)
move $a0, $s4
syscall
la $s0, e
sw $t9, 0($s0)
la $s3, m
lw $t9, 0($s3)
move $a0, $t9
syscall
la $s0, f
sw $t6, 0($s0)
la $t5, n
lw $t6, 0($t5)
move $a0, $t6
syscall
la $s0, g
sw $t7, 0($s0)
la $s6, o
lw $t7, 0($s6)
move $a0, $t7
syscall
la $s0, h
sw $t2, 0($s0)
la $t4, p
lw $t2, 0($t4)
move $a0, $t2
syscall
la $s0, i
sw $t0, 0($s0)
la $s5, q
lw $t0, 0($s5)
move $a0, $t0
syscall
la $s0, j
sw $t1, 0($s0)
la $t8, r
lw $t1, 0($t8)
move $a0, $t1
syscall
la $s0, k
sw $s1, 0($s0)
la $t3, s
lw $s1, 0($t3)
move $a0, $s1
syscall
la $s0, l
sw $s4, 0($s0)
la $s2, t
lw $s4, 0($s2)
move $a0, $s4
syscall
la $s0, m
sw $t9, 0($s0)
la $s3, u
lw $t9, 0($s3)
move $a0, $t9
syscall
la $s0, n
sw $t6, 0($s0)
la $t5, v
lw $t6, 0($t5)
move $a0, $t6
syscall
la $s0, o
sw $t7, 0($s0)
la $s6, w
lw $t7, 0($s6)
move $a0, $t7
syscall
la $s0, p
sw $t2, 0($s0)
la $t4, x
lw $t2, 0($t4)
move $a0, $t2
syscall
la $s0, q
sw $t0, 0($s0)
la $s5, y
lw $t0, 0($s5)
move $a0, $t0
syscall
la $s0, r
sw $t1, 0($s0)
la $t8, z
lw $t1, 0($t8)
move $a0, $t1
syscall
la $s0, s
sw $s1, 0($s0)
la $t3, aa
lw $s1, 0($t3)
move $a0, $s1
syscall
la $s0, t
sw $s4, 0($s0)
la $s2, ab
lw $s4, 0($s2)
move $a0, $s4
syscall
