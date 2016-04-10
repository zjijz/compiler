.data
s:	.word	0	# q in original
i:	.word	0	# g in original
f:	.word	0	# d in original
d:	.word	0	# b in original
j:	.word	0	# h in original
g:	.word	0	# e in original
o:	.word	0	# m in original
x:	.word	0	# v in original
e:	.word	0	# c in original
h:	.word	0	# f in original
w:	.word	0	# u in original
z:	.word	0	# x in original
k:	.word	0	# i in original
l:	.word	0	# j in original
y:	.word	0	# w in original
u:	.word	0	# s in original
n:	.word	0	# l in original
t:	.word	0	# r in original
r:	.word	0	# p in original
aa:	.word	0	# y in original
m:	.word	0	# k in original
v:	.word	0	# t in original
q:	.word	0	# o in original
p:	.word	0	# n in original
c:	.word	0	# a in original
ab:	.word	0	# z in original
.text
li $v0, 5
syscall
la $t0, c
lw $t3, 0($t0)
move $t3, $v0
li $v0, 5
syscall
la $s4, d
lw $s1, 0($s4)
move $s1, $v0
li $v0, 5
syscall
la $t7, e
lw $t6, 0($t7)
move $t6, $v0
li $v0, 5
syscall
la $t2, f
lw $s5, 0($t2)
move $s5, $v0
li $v0, 5
syscall
la $s3, g
lw $t9, 0($s3)
move $t9, $v0
li $v0, 5
syscall
la $t8, h
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $t4, i
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $s6, j
lw $s2, 0($s6)
move $s2, $v0
li $v0, 5
syscall
la $s0, c
sw $t3, 0($s0)
la $t3, k
lw $t0, 0($t3)
move $t0, $v0
li $v0, 5
syscall
la $s0, d
sw $s1, 0($s0)
la $s1, l
lw $s4, 0($s1)
move $s4, $v0
li $v0, 5
syscall
la $s0, e
sw $t6, 0($s0)
la $t6, m
lw $t7, 0($t6)
move $t7, $v0
li $v0, 5
syscall
la $s0, f
sw $s5, 0($s0)
la $s5, n
lw $t2, 0($s5)
move $t2, $v0
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
sw $t5, 0($s0)
la $t5, p
lw $t8, 0($t5)
move $t8, $v0
li $v0, 5
syscall
la $s0, i
sw $t1, 0($s0)
la $t1, q
lw $t4, 0($t1)
move $t4, $v0
li $v0, 5
syscall
la $s0, j
sw $s2, 0($s0)
la $s2, r
lw $s6, 0($s2)
move $s6, $v0
li $v0, 5
syscall
la $s0, k
sw $t0, 0($s0)
la $t0, s
lw $t3, 0($t0)
move $t3, $v0
li $v0, 5
syscall
la $s0, l
sw $s4, 0($s0)
la $s4, t
lw $s1, 0($s4)
move $s1, $v0
li $v0, 5
syscall
la $s0, m
sw $t7, 0($s0)
la $t7, u
lw $t6, 0($t7)
move $t6, $v0
li $v0, 5
syscall
la $s0, n
sw $t2, 0($s0)
la $t2, v
lw $s5, 0($t2)
move $s5, $v0
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
sw $t8, 0($s0)
la $t8, x
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $s0, q
sw $t4, 0($s0)
la $t4, y
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $s0, r
sw $s6, 0($s0)
la $s6, z
lw $s2, 0($s6)
move $s2, $v0
li $v0, 5
syscall
la $s0, s
sw $t3, 0($s0)
la $t3, aa
lw $t0, 0($t3)
move $t0, $v0
li $v0, 5
syscall
la $s0, t
sw $s1, 0($s0)
la $s1, ab
lw $s4, 0($s1)
move $s4, $v0
la $s0, u
sw $t6, 0($s0)
la $t7, c
lw $t6, 0($t7)
li $v0, 1
move $a0, $t6
syscall
la $s0, v
sw $s5, 0($s0)
la $t2, d
lw $s5, 0($t2)
move $a0, $s5
syscall
la $s0, w
sw $t9, 0($s0)
la $s3, e
lw $t9, 0($s3)
move $a0, $t9
syscall
la $s0, x
sw $t5, 0($s0)
la $t8, f
lw $t5, 0($t8)
move $a0, $t5
syscall
la $s0, y
sw $t1, 0($s0)
la $t4, g
lw $t1, 0($t4)
move $a0, $t1
syscall
la $s0, z
sw $s2, 0($s0)
la $s6, h
lw $s2, 0($s6)
move $a0, $s2
syscall
la $s0, aa
sw $t0, 0($s0)
la $t3, i
lw $t0, 0($t3)
move $a0, $t0
syscall
la $s0, ab
sw $s4, 0($s0)
la $s1, j
lw $s4, 0($s1)
move $a0, $s4
syscall
la $s0, c
sw $t6, 0($s0)
la $t7, k
lw $t6, 0($t7)
move $a0, $t6
syscall
la $s0, d
sw $s5, 0($s0)
la $t2, l
lw $s5, 0($t2)
move $a0, $s5
syscall
la $s0, e
sw $t9, 0($s0)
la $s3, m
lw $t9, 0($s3)
move $a0, $t9
syscall
la $s0, f
sw $t5, 0($s0)
la $t8, n
lw $t5, 0($t8)
move $a0, $t5
syscall
la $s0, g
sw $t1, 0($s0)
la $t4, o
lw $t1, 0($t4)
move $a0, $t1
syscall
la $s0, h
sw $s2, 0($s0)
la $s6, p
lw $s2, 0($s6)
move $a0, $s2
syscall
la $s0, i
sw $t0, 0($s0)
la $t3, q
lw $t0, 0($t3)
move $a0, $t0
syscall
la $s0, j
sw $s4, 0($s0)
la $s1, r
lw $s4, 0($s1)
move $a0, $s4
syscall
la $s0, k
sw $t6, 0($s0)
la $t7, s
lw $t6, 0($t7)
move $a0, $t6
syscall
la $s0, l
sw $s5, 0($s0)
la $t2, t
lw $s5, 0($t2)
move $a0, $s5
syscall
la $s0, m
sw $t9, 0($s0)
la $s3, u
lw $t9, 0($s3)
move $a0, $t9
syscall
la $s0, n
sw $t5, 0($s0)
la $t8, v
lw $t5, 0($t8)
move $a0, $t5
syscall
la $s0, o
sw $t1, 0($s0)
la $t4, w
lw $t1, 0($t4)
move $a0, $t1
syscall
la $s0, p
sw $s2, 0($s0)
la $s6, x
lw $s2, 0($s6)
move $a0, $s2
syscall
la $s0, q
sw $t0, 0($s0)
la $t3, y
lw $t0, 0($t3)
move $a0, $t0
syscall
la $s0, r
sw $s4, 0($s0)
la $s1, z
lw $s4, 0($s1)
move $a0, $s4
syscall
la $s0, s
sw $t6, 0($s0)
la $t7, aa
lw $t6, 0($t7)
move $a0, $t6
syscall
la $s0, t
sw $s5, 0($s0)
la $t2, ab
lw $s5, 0($t2)
move $a0, $s5
syscall
