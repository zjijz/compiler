.data
n:	.word	0	# l in original
y:	.word	0	# w in original
p:	.word	0	# n in original
t:	.word	0	# r in original
q:	.word	0	# o in original
r:	.word	0	# p in original
i:	.word	0	# g in original
m:	.word	0	# k in original
aa:	.word	0	# y in original
g:	.word	0	# e in original
s:	.word	0	# q in original
j:	.word	0	# h in original
u:	.word	0	# s in original
o:	.word	0	# m in original
x:	.word	0	# v in original
ab:	.word	0	# z in original
l:	.word	0	# j in original
d:	.word	0	# b in original
c:	.word	0	# a in original
f:	.word	0	# d in original
w:	.word	0	# u in original
e:	.word	0	# c in original
k:	.word	0	# i in original
v:	.word	0	# t in original
h:	.word	0	# f in original
z:	.word	0	# x in original
.text
li $v0, 5
syscall
la $t5, c
lw $s3, 0($t5)
move $s3, $v0
li $v0, 5
syscall
la $t3, d
lw $t1, 0($t3)
move $t1, $v0
li $v0, 5
syscall
la $s5, e
lw $s6, 0($s5)
move $s6, $v0
li $v0, 5
syscall
la $s1, f
lw $t0, 0($s1)
move $t0, $v0
li $v0, 5
syscall
la $s2, g
lw $s4, 0($s2)
move $s4, $v0
li $v0, 5
syscall
la $t8, h
lw $t4, 0($t8)
move $t4, $v0
li $v0, 5
syscall
la $t6, i
lw $t7, 0($t6)
move $t7, $v0
li $v0, 5
syscall
la $t9, j
lw $t2, 0($t9)
move $t2, $v0
li $v0, 5
syscall
la $s0, c
sw $s3, 0($s0)
la $s3, k
lw $t5, 0($s3)
move $t5, $v0
li $v0, 5
syscall
la $s0, d
sw $t1, 0($s0)
la $t1, l
lw $t3, 0($t1)
move $t3, $v0
li $v0, 5
syscall
la $s0, e
sw $s6, 0($s0)
la $s6, m
lw $s5, 0($s6)
move $s5, $v0
li $v0, 5
syscall
la $s0, f
sw $t0, 0($s0)
la $t0, n
lw $s1, 0($t0)
move $s1, $v0
li $v0, 5
syscall
la $s0, g
sw $s4, 0($s0)
la $s4, o
lw $s2, 0($s4)
move $s2, $v0
li $v0, 5
syscall
la $s0, h
sw $t4, 0($s0)
la $t4, p
lw $t8, 0($t4)
move $t8, $v0
li $v0, 5
syscall
la $s0, i
sw $t7, 0($s0)
la $t7, q
lw $t6, 0($t7)
move $t6, $v0
li $v0, 5
syscall
la $s0, j
sw $t2, 0($s0)
la $t2, r
lw $t9, 0($t2)
move $t9, $v0
li $v0, 5
syscall
la $s0, k
sw $t5, 0($s0)
la $t5, s
lw $s3, 0($t5)
move $s3, $v0
li $v0, 5
syscall
la $s0, l
sw $t3, 0($s0)
la $t3, t
lw $t1, 0($t3)
move $t1, $v0
li $v0, 5
syscall
la $s0, m
sw $s5, 0($s0)
la $s5, u
lw $s6, 0($s5)
move $s6, $v0
li $v0, 5
syscall
la $s0, n
sw $s1, 0($s0)
la $s1, v
lw $t0, 0($s1)
move $t0, $v0
li $v0, 5
syscall
la $s0, o
sw $s2, 0($s0)
la $s2, w
lw $s4, 0($s2)
move $s4, $v0
li $v0, 5
syscall
la $s0, p
sw $t8, 0($s0)
la $t8, x
lw $t4, 0($t8)
move $t4, $v0
li $v0, 5
syscall
la $s0, q
sw $t6, 0($s0)
la $t6, y
lw $t7, 0($t6)
move $t7, $v0
li $v0, 5
syscall
la $s0, r
sw $t9, 0($s0)
la $t9, z
lw $t2, 0($t9)
move $t2, $v0
li $v0, 5
syscall
la $s0, s
sw $s3, 0($s0)
la $s3, aa
lw $t5, 0($s3)
move $t5, $v0
li $v0, 5
syscall
la $s0, t
sw $t1, 0($s0)
la $t1, ab
lw $t3, 0($t1)
move $t3, $v0
la $s0, u
sw $s6, 0($s0)
la $s5, c
lw $s6, 0($s5)
li $v0, 1
move $a0, $s6
syscall
la $s0, v
sw $t0, 0($s0)
la $s1, d
lw $t0, 0($s1)
move $a0, $t0
syscall
la $s0, w
sw $s4, 0($s0)
la $s2, e
lw $s4, 0($s2)
move $a0, $s4
syscall
la $s0, x
sw $t4, 0($s0)
la $t8, f
lw $t4, 0($t8)
move $a0, $t4
syscall
la $s0, y
sw $t7, 0($s0)
la $t6, g
lw $t7, 0($t6)
move $a0, $t7
syscall
la $s0, z
sw $t2, 0($s0)
la $t9, h
lw $t2, 0($t9)
move $a0, $t2
syscall
la $s0, aa
sw $t5, 0($s0)
la $s3, i
lw $t5, 0($s3)
move $a0, $t5
syscall
la $s0, ab
sw $t3, 0($s0)
la $t1, j
lw $t3, 0($t1)
move $a0, $t3
syscall
la $s0, c
sw $s6, 0($s0)
la $s5, k
lw $s6, 0($s5)
move $a0, $s6
syscall
la $s0, d
sw $t0, 0($s0)
la $s1, l
lw $t0, 0($s1)
move $a0, $t0
syscall
la $s0, e
sw $s4, 0($s0)
la $s2, m
lw $s4, 0($s2)
move $a0, $s4
syscall
la $s0, f
sw $t4, 0($s0)
la $t8, n
lw $t4, 0($t8)
move $a0, $t4
syscall
la $s0, g
sw $t7, 0($s0)
la $t6, o
lw $t7, 0($t6)
move $a0, $t7
syscall
la $s0, h
sw $t2, 0($s0)
la $t9, p
lw $t2, 0($t9)
move $a0, $t2
syscall
la $s0, i
sw $t5, 0($s0)
la $s3, q
lw $t5, 0($s3)
move $a0, $t5
syscall
la $s0, j
sw $t3, 0($s0)
la $t1, r
lw $t3, 0($t1)
move $a0, $t3
syscall
la $s0, k
sw $s6, 0($s0)
la $s5, s
lw $s6, 0($s5)
move $a0, $s6
syscall
la $s0, l
sw $t0, 0($s0)
la $s1, t
lw $t0, 0($s1)
move $a0, $t0
syscall
la $s0, m
sw $s4, 0($s0)
la $s2, u
lw $s4, 0($s2)
move $a0, $s4
syscall
la $s0, n
sw $t4, 0($s0)
la $t8, v
lw $t4, 0($t8)
move $a0, $t4
syscall
la $s0, o
sw $t7, 0($s0)
la $t6, w
lw $t7, 0($t6)
move $a0, $t7
syscall
la $s0, p
sw $t2, 0($s0)
la $t9, x
lw $t2, 0($t9)
move $a0, $t2
syscall
la $s0, q
sw $t5, 0($s0)
la $s3, y
lw $t5, 0($s3)
move $a0, $t5
syscall
la $s0, r
sw $t3, 0($s0)
la $t1, z
lw $t3, 0($t1)
move $a0, $t3
syscall
la $s0, s
sw $s6, 0($s0)
la $s5, aa
lw $s6, 0($s5)
move $a0, $s6
syscall
la $s0, t
sw $t0, 0($s0)
la $s1, ab
lw $t0, 0($s1)
move $a0, $t0
syscall
