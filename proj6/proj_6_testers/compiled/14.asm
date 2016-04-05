.data
ag:	.word	0	# temp_e in original
q:	.word	0	# o in original
k:	.word	0	# i in original
c:	.word	0	# a in original
s:	.word	0	# q in original
l:	.word	0	# j in original
r:	.word	0	# p in original
o:	.word	0	# m in original
n:	.word	0	# l in original
ad:	.word	0	# temp_a in original
i:	.word	0	# g in original
h:	.word	0	# f in original
ae:	.word	0	# temp_c in original
t:	.word	0	# r in original
e:	.word	0	# c in original
x:	.word	0	# v in original
ab:	.word	0	# z in original
f:	.word	0	# d in original
af:	.word	0	# temp_d in original
y:	.word	0	# w in original
w:	.word	0	# u in original
p:	.word	0	# n in original
j:	.word	0	# h in original
aa:	.word	0	# y in original
g:	.word	0	# e in original
ac:	.word	0	# temp_b in original
u:	.word	0	# s in original
v:	.word	0	# t in original
z:	.word	0	# x in original
m:	.word	0	# k in original
d:	.word	0	# b in original
.text
la $s0, c
sw $s3, 0($s0)
la $s0, d
sw $s1, 0($s0)
la $s0, e
sw $t6, 0($s0)
la $s0, f
sw $t1, 0($s0)
la $s0, g
sw $s4, 0($s0)
la $s0, h
sw $t4, 0($s0)
la $s0, i
sw $t3, 0($s0)
la $s0, j
sw $t5, 0($s0)
la $s0, k
sw $s3, 0($s0)
la $s0, l
sw $s1, 0($s0)
la $s0, m
sw $t6, 0($s0)
la $s0, n
sw $t1, 0($s0)
la $s0, o
sw $s4, 0($s0)
la $s0, p
sw $t4, 0($s0)
la $s0, q
sw $t3, 0($s0)
la $s0, r
sw $t5, 0($s0)
la $s0, s
sw $s3, 0($s0)
la $s0, t
sw $s1, 0($s0)
li $v0, 5
syscall
la $s0, u
sw $t6, 0($s0)
la $t6, c
lw $t7, 0($t6)
move $t7, $v0
li $v0, 5
syscall
la $s0, v
sw $t1, 0($s0)
la $t1, d
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $s0, w
sw $s4, 0($s0)
la $s4, e
lw $s5, 0($s4)
move $s5, $v0
li $v0, 5
syscall
la $s0, x
sw $t4, 0($s0)
la $t4, f
lw $t8, 0($t4)
move $t8, $v0
li $v0, 5
syscall
la $s0, y
sw $t3, 0($s0)
la $t3, g
lw $s6, 0($t3)
move $s6, $v0
li $v0, 5
syscall
la $s0, z
sw $t5, 0($s0)
la $t5, h
lw $s2, 0($t5)
move $s2, $v0
li $v0, 5
syscall
la $s0, aa
sw $s3, 0($s0)
la $s3, i
lw $t0, 0($s3)
move $t0, $v0
li $v0, 5
syscall
la $s0, ab
sw $s1, 0($s0)
la $s1, j
lw $t9, 0($s1)
move $t9, $v0
li $v0, 5
syscall
la $s0, c
sw $t7, 0($s0)
la $t7, k
lw $t6, 0($t7)
move $t6, $v0
li $v0, 5
syscall
la $s0, d
sw $t2, 0($s0)
la $t2, l
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $s0, e
sw $s5, 0($s0)
la $s5, m
lw $s4, 0($s5)
move $s4, $v0
li $v0, 5
syscall
la $s0, f
sw $t8, 0($s0)
la $t8, n
lw $t4, 0($t8)
move $t4, $v0
li $v0, 5
syscall
la $s0, g
sw $s6, 0($s0)
la $s6, o
lw $t3, 0($s6)
move $t3, $v0
li $v0, 5
syscall
la $s0, h
sw $s2, 0($s0)
la $s2, p
lw $t5, 0($s2)
move $t5, $v0
li $v0, 5
syscall
la $s0, i
sw $t0, 0($s0)
la $t0, q
lw $s3, 0($t0)
move $s3, $v0
li $v0, 5
syscall
la $s0, j
sw $t9, 0($s0)
la $t9, r
lw $s1, 0($t9)
move $s1, $v0
li $v0, 5
syscall
la $s0, k
sw $t6, 0($s0)
la $t6, s
lw $t7, 0($t6)
move $t7, $v0
li $v0, 5
syscall
la $s0, l
sw $t1, 0($s0)
la $t1, t
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $s0, m
sw $s4, 0($s0)
la $s4, u
lw $s5, 0($s4)
move $s5, $v0
li $v0, 5
syscall
la $s0, n
sw $t4, 0($s0)
la $t4, v
lw $t8, 0($t4)
move $t8, $v0
li $v0, 5
syscall
la $s0, o
sw $t3, 0($s0)
la $t3, w
lw $s6, 0($t3)
move $s6, $v0
li $v0, 5
syscall
la $s0, p
sw $t5, 0($s0)
la $t5, x
lw $s2, 0($t5)
move $s2, $v0
li $v0, 5
syscall
la $s0, q
sw $s3, 0($s0)
la $s3, y
lw $t0, 0($s3)
move $t0, $v0
li $v0, 5
syscall
la $s0, r
sw $s1, 0($s0)
la $s1, z
lw $t9, 0($s1)
move $t9, $v0
li $v0, 5
syscall
la $s0, s
sw $t7, 0($s0)
la $t7, aa
lw $t6, 0($t7)
move $t6, $v0
li $v0, 5
syscall
la $s0, t
sw $t2, 0($s0)
la $t2, ab
lw $t1, 0($t2)
move $t1, $v0
la $s0, u
sw $s5, 0($s0)
la $s4, c
lw $s5, 0($s4)
move $t4, $s5
la $s0, v
sw $t8, 0($s0)
la $t8, d
lw $t3, 0($t8)
add $t4, $t4, $t3
la $s0, w
sw $s6, 0($s0)
la $s6, e
lw $t5, 0($s6)
add $t4, $t4, $t5
la $s0, x
sw $s2, 0($s0)
la $s2, f
lw $s3, 0($s2)
add $t4, $t4, $s3
la $s0, y
sw $t0, 0($s0)
la $t0, g
lw $s1, 0($t0)
add $t4, $t4, $s1
la $s0, z
sw $t9, 0($s0)
la $t9, h
lw $t7, 0($t9)
add $t4, $t4, $t7
la $s0, aa
sw $t6, 0($s0)
la $t6, i
lw $t2, 0($t6)
add $t4, $t4, $t2
la $s0, ab
sw $t1, 0($s0)
la $t1, j
lw $s4, 0($t1)
add $t4, $t4, $s4
la $s0, c
sw $s5, 0($s0)
la $s0, ac
sw $t4, 0($s0)
la $s5, k
lw $t4, 0($s5)
la $s0, d
sw $t3, 0($s0)
la $t3, ac
lw $t8, 0($t3)
add $t8, $t8, $t4
la $s0, e
sw $t5, 0($s0)
la $s6, l
lw $t5, 0($s6)
add $t8, $t8, $t5
la $s0, f
sw $s3, 0($s0)
la $s2, m
lw $s3, 0($s2)
add $t8, $t8, $s3
la $s0, g
sw $s1, 0($s0)
la $t0, n
lw $s1, 0($t0)
add $t8, $t8, $s1
la $s0, h
sw $t7, 0($s0)
la $t9, o
lw $t7, 0($t9)
add $t8, $t8, $t7
la $s0, i
sw $t2, 0($s0)
la $t6, p
lw $t2, 0($t6)
add $t8, $t8, $t2
la $s0, j
sw $s4, 0($s0)
la $t1, q
lw $s4, 0($t1)
add $t8, $t8, $s4
la $s0, k
sw $t4, 0($s0)
la $s5, r
lw $t4, 0($s5)
add $t8, $t8, $t4
sw $t8, 0($t3)
la $t8, s
lw $t3, 0($t8)
la $s0, l
sw $t5, 0($s0)
la $t5, ac
lw $s6, 0($t5)
add $s6, $s6, $t3
la $s0, m
sw $s3, 0($s0)
la $s2, t
lw $s3, 0($s2)
add $s6, $s6, $s3
la $s0, n
sw $s1, 0($s0)
la $t0, u
lw $s1, 0($t0)
add $s6, $s6, $s1
la $s0, o
sw $t7, 0($s0)
la $t9, v
lw $t7, 0($t9)
add $s6, $s6, $t7
la $s0, p
sw $t2, 0($s0)
la $t6, w
lw $t2, 0($t6)
add $s6, $s6, $t2
la $s0, q
sw $s4, 0($s0)
la $t1, x
lw $s4, 0($t1)
add $s6, $s6, $s4
la $s0, r
sw $t4, 0($s0)
la $s5, y
lw $t4, 0($s5)
add $s6, $s6, $t4
la $s0, s
sw $t3, 0($s0)
la $t8, z
lw $t3, 0($t8)
add $s6, $s6, $t3
sw $s6, 0($t5)
la $s6, aa
lw $t5, 0($s6)
la $s0, t
sw $s3, 0($s0)
la $s3, ac
lw $s2, 0($s3)
add $s2, $s2, $t5
la $s0, u
sw $s1, 0($s0)
la $t0, ab
lw $s1, 0($t0)
add $s2, $s2, $s1
move $t9, $s2
la $s0, v
sw $t7, 0($s0)
la $t7, c
lw $t6, 0($t7)
la $s0, w
sw $t2, 0($s0)
move $t2, $t6
la $s0, x
sw $s4, 0($s0)
la $t1, d
lw $s4, 0($t1)
add $t2, $t2, $s4
la $s0, y
sw $t4, 0($s0)
la $s5, e
lw $t4, 0($s5)
add $t2, $t2, $t4
la $s0, z
sw $t3, 0($s0)
la $t8, f
lw $t3, 0($t8)
add $t2, $t2, $t3
la $s0, aa
sw $t5, 0($s0)
la $s6, g
lw $t5, 0($s6)
add $t2, $t2, $t5
sw $s2, 0($s3)
la $s2, h
lw $s3, 0($s2)
add $t2, $t2, $s3
la $s0, ab
sw $s1, 0($s0)
la $t0, i
lw $s1, 0($t0)
add $t2, $t2, $s1
la $s0, ad
sw $t9, 0($s0)
la $t9, j
lw $t7, 0($t9)
add $t2, $t2, $t7
la $s0, c
sw $t6, 0($s0)
la $s0, ae
sw $t2, 0($s0)
la $t6, k
lw $t2, 0($t6)
la $s0, d
sw $s4, 0($s0)
la $s4, ae
lw $t1, 0($s4)
add $t1, $t1, $t2
la $s0, e
sw $t4, 0($s0)
la $s5, l
lw $t4, 0($s5)
add $t1, $t1, $t4
la $s0, f
sw $t3, 0($s0)
la $t8, m
lw $t3, 0($t8)
add $t1, $t1, $t3
la $s0, g
sw $t5, 0($s0)
la $s6, n
lw $t5, 0($s6)
add $t1, $t1, $t5
la $s0, h
sw $s3, 0($s0)
la $s2, o
lw $s3, 0($s2)
add $t1, $t1, $s3
la $s0, i
sw $s1, 0($s0)
la $t0, p
lw $s1, 0($t0)
add $t1, $t1, $s1
la $s0, j
sw $t7, 0($s0)
la $t9, q
lw $t7, 0($t9)
add $t1, $t1, $t7
la $s0, k
sw $t2, 0($s0)
la $t6, r
lw $t2, 0($t6)
add $t1, $t1, $t2
sw $t1, 0($s4)
la $t1, s
lw $s4, 0($t1)
la $s0, l
sw $t4, 0($s0)
la $t4, ae
lw $s5, 0($t4)
add $s5, $s5, $s4
la $s0, m
sw $t3, 0($s0)
la $t8, t
lw $t3, 0($t8)
add $s5, $s5, $t3
la $s0, n
sw $t5, 0($s0)
la $s6, u
lw $t5, 0($s6)
add $s5, $s5, $t5
la $s0, o
sw $s3, 0($s0)
la $s2, v
lw $s3, 0($s2)
add $s5, $s5, $s3
la $s0, p
sw $s1, 0($s0)
la $t0, w
lw $s1, 0($t0)
add $s5, $s5, $s1
la $s0, q
sw $t7, 0($s0)
la $t9, x
lw $t7, 0($t9)
add $s5, $s5, $t7
la $s0, r
sw $t2, 0($s0)
la $t6, y
lw $t2, 0($t6)
add $s5, $s5, $t2
la $s0, s
sw $s4, 0($s0)
la $t1, z
lw $s4, 0($t1)
add $s5, $s5, $s4
sw $s5, 0($t4)
la $s5, aa
lw $t4, 0($s5)
la $s0, t
sw $t3, 0($s0)
la $t3, ae
lw $t8, 0($t3)
add $t8, $t8, $t4
la $s0, u
sw $t5, 0($s0)
la $s6, ab
lw $t5, 0($s6)
add $t8, $t8, $t5
la $s0, v
sw $s3, 0($s0)
la $s3, ad
lw $s2, 0($s3)
add $s2, $s2, $t8
la $s0, w
sw $s1, 0($s0)
la $t0, c
lw $s1, 0($t0)
move $t9, $s1
la $s0, x
sw $t7, 0($s0)
la $t7, d
lw $t6, 0($t7)
add $t9, $t9, $t6
la $s0, y
sw $t2, 0($s0)
la $t2, e
lw $t1, 0($t2)
add $t9, $t9, $t1
la $s0, z
sw $s4, 0($s0)
la $s4, f
lw $s5, 0($s4)
add $t9, $t9, $s5
la $s0, aa
sw $t4, 0($s0)
sw $t8, 0($t3)
la $t4, g
lw $t8, 0($t4)
add $t9, $t9, $t8
la $t3, h
lw $s6, 0($t3)
add $t9, $t9, $s6
la $s0, ab
sw $t5, 0($s0)
sw $s2, 0($s3)
la $t5, i
lw $s2, 0($t5)
add $t9, $t9, $s2
la $s3, j
lw $t0, 0($s3)
add $t9, $t9, $t0
la $s0, c
sw $s1, 0($s0)
la $s0, af
sw $t9, 0($s0)
la $s1, k
lw $t9, 0($s1)
la $s0, d
sw $t6, 0($s0)
la $t6, af
lw $t7, 0($t6)
add $t7, $t7, $t9
la $s0, e
sw $t1, 0($s0)
la $t2, l
lw $t1, 0($t2)
add $t7, $t7, $t1
la $s0, f
sw $s5, 0($s0)
la $s4, m
lw $s5, 0($s4)
add $t7, $t7, $s5
la $s0, g
sw $t8, 0($s0)
la $t4, n
lw $t8, 0($t4)
add $t7, $t7, $t8
la $s0, h
sw $s6, 0($s0)
la $t3, o
lw $s6, 0($t3)
add $t7, $t7, $s6
la $s0, i
sw $s2, 0($s0)
la $t5, p
lw $s2, 0($t5)
add $t7, $t7, $s2
la $s0, j
sw $t0, 0($s0)
la $s3, q
lw $t0, 0($s3)
add $t7, $t7, $t0
la $s0, k
sw $t9, 0($s0)
la $s1, r
lw $t9, 0($s1)
add $t7, $t7, $t9
sw $t7, 0($t6)
la $t7, s
lw $t6, 0($t7)
la $s0, l
sw $t1, 0($s0)
la $t1, af
lw $t2, 0($t1)
add $t2, $t2, $t6
la $s0, m
sw $s5, 0($s0)
la $s4, t
lw $s5, 0($s4)
add $t2, $t2, $s5
la $s0, n
sw $t8, 0($s0)
la $t4, u
lw $t8, 0($t4)
add $t2, $t2, $t8
la $s0, o
sw $s6, 0($s0)
la $t3, v
lw $s6, 0($t3)
add $t2, $t2, $s6
la $s0, p
sw $s2, 0($s0)
la $t5, w
lw $s2, 0($t5)
add $t2, $t2, $s2
la $s0, q
sw $t0, 0($s0)
la $s3, x
lw $t0, 0($s3)
add $t2, $t2, $t0
la $s0, r
sw $t9, 0($s0)
la $s1, y
lw $t9, 0($s1)
add $t2, $t2, $t9
la $s0, s
sw $t6, 0($s0)
la $t7, z
lw $t6, 0($t7)
add $t2, $t2, $t6
sw $t2, 0($t1)
la $t2, aa
lw $t1, 0($t2)
la $s0, t
sw $s5, 0($s0)
la $s5, af
lw $s4, 0($s5)
add $s4, $s4, $t1
la $s0, u
sw $t8, 0($s0)
la $t4, ab
lw $t8, 0($t4)
add $s4, $s4, $t8
la $s0, v
sw $s6, 0($s0)
la $s6, ad
lw $t3, 0($s6)
add $t3, $t3, $s4
la $s0, w
sw $s2, 0($s0)
la $t5, c
lw $s2, 0($t5)
move $s3, $s2
la $s0, x
sw $t0, 0($s0)
la $t0, d
lw $s1, 0($t0)
add $s3, $s3, $s1
la $s0, y
sw $t9, 0($s0)
la $t9, e
lw $t7, 0($t9)
add $s3, $s3, $t7
la $s0, z
sw $t6, 0($s0)
la $t6, f
lw $t2, 0($t6)
add $s3, $s3, $t2
la $s0, aa
sw $t1, 0($s0)
sw $s4, 0($s5)
la $t1, g
lw $s4, 0($t1)
add $s3, $s3, $s4
la $s5, h
lw $t4, 0($s5)
add $s3, $s3, $t4
la $s0, ab
sw $t8, 0($s0)
sw $t3, 0($s6)
la $t8, i
lw $t3, 0($t8)
add $s3, $s3, $t3
la $s6, j
lw $t5, 0($s6)
add $s3, $s3, $t5
la $s0, c
sw $s2, 0($s0)
la $s0, ag
sw $s3, 0($s0)
la $s2, k
lw $s3, 0($s2)
la $s0, d
sw $s1, 0($s0)
la $s1, ag
lw $t0, 0($s1)
add $t0, $t0, $s3
la $s0, e
sw $t7, 0($s0)
la $t9, l
lw $t7, 0($t9)
add $t0, $t0, $t7
la $s0, f
sw $t2, 0($s0)
la $t6, m
lw $t2, 0($t6)
add $t0, $t0, $t2
la $s0, g
sw $s4, 0($s0)
la $t1, n
lw $s4, 0($t1)
add $t0, $t0, $s4
la $s0, h
sw $t4, 0($s0)
la $s5, o
lw $t4, 0($s5)
add $t0, $t0, $t4
la $s0, i
sw $t3, 0($s0)
la $t8, p
lw $t3, 0($t8)
add $t0, $t0, $t3
la $s0, j
sw $t5, 0($s0)
la $s6, q
lw $t5, 0($s6)
add $t0, $t0, $t5
la $s0, k
sw $s3, 0($s0)
la $s2, r
lw $s3, 0($s2)
add $t0, $t0, $s3
sw $t0, 0($s1)
la $t0, s
lw $s1, 0($t0)
la $s0, l
sw $t7, 0($s0)
la $t7, ag
lw $t9, 0($t7)
add $t9, $t9, $s1
la $s0, m
sw $t2, 0($s0)
la $t6, t
lw $t2, 0($t6)
add $t9, $t9, $t2
la $s0, n
sw $s4, 0($s0)
la $t1, u
lw $s4, 0($t1)
add $t9, $t9, $s4
la $s0, o
sw $t4, 0($s0)
la $s5, v
lw $t4, 0($s5)
add $t9, $t9, $t4
la $s0, p
sw $t3, 0($s0)
la $t8, w
lw $t3, 0($t8)
add $t9, $t9, $t3
la $s0, q
sw $t5, 0($s0)
la $s6, x
lw $t5, 0($s6)
add $t9, $t9, $t5
la $s0, r
sw $s3, 0($s0)
la $s2, y
lw $s3, 0($s2)
add $t9, $t9, $s3
la $s0, s
sw $s1, 0($s0)
la $t0, z
lw $s1, 0($t0)
add $t9, $t9, $s1
sw $t9, 0($t7)
la $t9, aa
lw $t7, 0($t9)
la $s0, t
sw $t2, 0($s0)
la $t2, ag
lw $t6, 0($t2)
add $t6, $t6, $t7
la $s0, u
sw $s4, 0($s0)
la $t1, ab
lw $s4, 0($t1)
add $t6, $t6, $s4
la $s0, v
sw $t4, 0($s0)
la $t4, ad
lw $s5, 0($t4)
add $s5, $s5, $t6
li $v0, 1
move $a0, $s5
syscall
