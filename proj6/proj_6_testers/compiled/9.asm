.data
h:	.word	0	# f in original
r:	.word	0	# p in original
w:	.word	0	# u in original
n:	.word	0	# l in original
d:	.word	0	# b in original
c:	.word	0	# a in original
f:	.word	0	# d in original
z:	.word	0	# x in original
ab:	.word	0	# z in original
e:	.word	0	# c in original
x:	.word	0	# v in original
l:	.word	0	# j in original
p:	.word	0	# n in original
g:	.word	0	# e in original
m:	.word	0	# k in original
s:	.word	0	# q in original
j:	.word	0	# h in original
q:	.word	0	# o in original
aa:	.word	0	# y in original
y:	.word	0	# w in original
v:	.word	0	# t in original
k:	.word	0	# i in original
u:	.word	0	# s in original
o:	.word	0	# m in original
t:	.word	0	# r in original
i:	.word	0	# g in original
.text
li $v0, 5
syscall
la $t6, c
lw $s3, 0($t6)
move $s3, $v0
li $v0, 5
syscall
la $t2, d
lw $t3, 0($t2)
move $t3, $v0
li $v0, 5
syscall
la $t1, e
lw $s4, 0($t1)
move $s4, $v0
li $v0, 5
syscall
la $t9, f
lw $s6, 0($t9)
move $s6, $v0
li $v0, 5
syscall
la $s5, g
lw $s2, 0($s5)
move $s2, $v0
li $v0, 5
syscall
la $t8, h
lw $t0, 0($t8)
move $t0, $v0
li $v0, 5
syscall
la $t4, i
lw $t7, 0($t4)
move $t7, $v0
li $v0, 5
syscall
la $s1, j
lw $t5, 0($s1)
move $t5, $v0
li $v0, 5
syscall
la $s0, c
sw $s3, 0($s0)
la $s3, k
lw $t6, 0($s3)
move $t6, $v0
li $v0, 5
syscall
la $s0, d
sw $t3, 0($s0)
la $t3, l
lw $t2, 0($t3)
move $t2, $v0
li $v0, 5
syscall
la $s0, e
sw $s4, 0($s0)
la $s4, m
lw $t1, 0($s4)
move $t1, $v0
li $v0, 5
syscall
la $s0, f
sw $s6, 0($s0)
la $s6, n
lw $t9, 0($s6)
move $t9, $v0
li $v0, 5
syscall
la $s0, g
sw $s2, 0($s0)
la $s2, o
lw $s5, 0($s2)
move $s5, $v0
li $v0, 5
syscall
la $s0, h
sw $t0, 0($s0)
la $t0, p
lw $t8, 0($t0)
move $t8, $v0
li $v0, 5
syscall
la $s0, i
sw $t7, 0($s0)
la $t7, q
lw $t4, 0($t7)
move $t4, $v0
li $v0, 5
syscall
la $s0, j
sw $t5, 0($s0)
la $t5, r
lw $s1, 0($t5)
move $s1, $v0
li $v0, 5
syscall
la $s0, k
sw $t6, 0($s0)
la $t6, s
lw $s3, 0($t6)
move $s3, $v0
li $v0, 5
syscall
la $s0, l
sw $t2, 0($s0)
la $t2, t
lw $t3, 0($t2)
move $t3, $v0
li $v0, 5
syscall
la $s0, m
sw $t1, 0($s0)
la $t1, u
lw $s4, 0($t1)
move $s4, $v0
li $v0, 5
syscall
la $s0, n
sw $t9, 0($s0)
la $t9, v
lw $s6, 0($t9)
move $s6, $v0
li $v0, 5
syscall
la $s0, o
sw $s5, 0($s0)
la $s5, w
lw $s2, 0($s5)
move $s2, $v0
li $v0, 5
syscall
la $s0, p
sw $t8, 0($s0)
la $t8, x
lw $t0, 0($t8)
move $t0, $v0
li $v0, 5
syscall
la $s0, q
sw $t4, 0($s0)
la $t4, y
lw $t7, 0($t4)
move $t7, $v0
li $v0, 5
syscall
la $s0, r
sw $s1, 0($s0)
la $s1, z
lw $t5, 0($s1)
move $t5, $v0
li $v0, 5
syscall
la $s0, s
sw $s3, 0($s0)
la $s3, aa
lw $t6, 0($s3)
move $t6, $v0
li $v0, 5
syscall
la $s0, t
sw $t3, 0($s0)
la $t3, ab
lw $t2, 0($t3)
move $t2, $v0
la $s0, u
sw $s4, 0($s0)
la $t1, c
lw $s4, 0($t1)
li $v0, 1
move $a0, $s4
syscall
la $s0, v
sw $s6, 0($s0)
la $t9, d
lw $s6, 0($t9)
move $a0, $s6
syscall
la $s0, w
sw $s2, 0($s0)
la $s5, e
lw $s2, 0($s5)
move $a0, $s2
syscall
la $s0, x
sw $t0, 0($s0)
la $t8, f
lw $t0, 0($t8)
move $a0, $t0
syscall
la $s0, y
sw $t7, 0($s0)
la $t4, g
lw $t7, 0($t4)
move $a0, $t7
syscall
la $s0, z
sw $t5, 0($s0)
la $s1, h
lw $t5, 0($s1)
move $a0, $t5
syscall
la $s0, aa
sw $t6, 0($s0)
la $s3, i
lw $t6, 0($s3)
move $a0, $t6
syscall
la $s0, ab
sw $t2, 0($s0)
la $t3, j
lw $t2, 0($t3)
move $a0, $t2
syscall
la $s0, c
sw $s4, 0($s0)
la $t1, k
lw $s4, 0($t1)
move $a0, $s4
syscall
la $s0, d
sw $s6, 0($s0)
la $t9, l
lw $s6, 0($t9)
move $a0, $s6
syscall
la $s0, e
sw $s2, 0($s0)
la $s5, m
lw $s2, 0($s5)
move $a0, $s2
syscall
la $s0, f
sw $t0, 0($s0)
la $t8, n
lw $t0, 0($t8)
move $a0, $t0
syscall
la $s0, g
sw $t7, 0($s0)
la $t4, o
lw $t7, 0($t4)
move $a0, $t7
syscall
la $s0, h
sw $t5, 0($s0)
la $s1, p
lw $t5, 0($s1)
move $a0, $t5
syscall
la $s0, i
sw $t6, 0($s0)
la $s3, q
lw $t6, 0($s3)
move $a0, $t6
syscall
la $s0, j
sw $t2, 0($s0)
la $t3, r
lw $t2, 0($t3)
move $a0, $t2
syscall
la $s0, k
sw $s4, 0($s0)
la $t1, s
lw $s4, 0($t1)
move $a0, $s4
syscall
la $s0, l
sw $s6, 0($s0)
la $t9, t
lw $s6, 0($t9)
move $a0, $s6
syscall
la $s0, m
sw $s2, 0($s0)
la $s5, u
lw $s2, 0($s5)
move $a0, $s2
syscall
la $s0, n
sw $t0, 0($s0)
la $t8, v
lw $t0, 0($t8)
move $a0, $t0
syscall
la $s0, o
sw $t7, 0($s0)
la $t4, w
lw $t7, 0($t4)
move $a0, $t7
syscall
la $s0, p
sw $t5, 0($s0)
la $s1, x
lw $t5, 0($s1)
move $a0, $t5
syscall
la $s0, q
sw $t6, 0($s0)
la $s3, y
lw $t6, 0($s3)
move $a0, $t6
syscall
la $s0, r
sw $t2, 0($s0)
la $t3, z
lw $t2, 0($t3)
move $a0, $t2
syscall
la $s0, s
sw $s4, 0($s0)
la $t1, aa
lw $s4, 0($t1)
move $a0, $s4
syscall
la $s0, t
sw $s6, 0($s0)
la $t9, ab
lw $s6, 0($t9)
move $a0, $s6
syscall
