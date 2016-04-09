.data
g:	.word	0	# e in original
u:	.word	0	# s in original
d:	.word	0	# b in original
n:	.word	0	# l in original
c:	.word	0	# a in original
o:	.word	0	# m in original
v:	.word	0	# t in original
ab:	.word	0	# z in original
e:	.word	0	# c in original
s:	.word	0	# q in original
k:	.word	0	# i in original
ae:	.word	0	# temp_c in original
w:	.word	0	# u in original
x:	.word	0	# v in original
f:	.word	0	# d in original
i:	.word	0	# g in original
ad:	.word	0	# temp_a in original
z:	.word	0	# x in original
j:	.word	0	# h in original
h:	.word	0	# f in original
m:	.word	0	# k in original
ag:	.word	0	# temp_e in original
y:	.word	0	# w in original
aa:	.word	0	# y in original
ac:	.word	0	# temp_b in original
p:	.word	0	# n in original
af:	.word	0	# temp_d in original
l:	.word	0	# j in original
t:	.word	0	# r in original
q:	.word	0	# o in original
r:	.word	0	# p in original
.text
li $v0, 5
syscall
la $t8, c
lw $s2, 0($t8)
move $s2, $v0
li $v0, 5
syscall
la $s4, d
lw $t9, 0($s4)
move $t9, $v0
li $v0, 5
syscall
la $s3, e
lw $t6, 0($s3)
move $t6, $v0
li $v0, 5
syscall
la $t0, f
lw $t7, 0($t0)
move $t7, $v0
li $v0, 5
syscall
la $t5, g
lw $s6, 0($t5)
move $s6, $v0
li $v0, 5
syscall
la $t2, h
lw $s5, 0($t2)
move $s5, $v0
li $v0, 5
syscall
la $s1, i
lw $t4, 0($s1)
move $t4, $v0
li $v0, 5
syscall
la $t3, j
lw $t1, 0($t3)
move $t1, $v0
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
sw $t9, 0($s0)
la $t9, l
lw $s4, 0($t9)
move $s4, $v0
li $v0, 5
syscall
la $s0, e
sw $t6, 0($s0)
la $t6, m
lw $s3, 0($t6)
move $s3, $v0
li $v0, 5
syscall
la $s0, f
sw $t7, 0($s0)
la $t7, n
lw $t0, 0($t7)
move $t0, $v0
li $v0, 5
syscall
la $s0, g
sw $s6, 0($s0)
la $s6, o
lw $t5, 0($s6)
move $t5, $v0
li $v0, 5
syscall
la $s0, h
sw $s5, 0($s0)
la $s5, p
lw $t2, 0($s5)
move $t2, $v0
li $v0, 5
syscall
la $s0, i
sw $t4, 0($s0)
la $t4, q
lw $s1, 0($t4)
move $s1, $v0
li $v0, 5
syscall
la $s0, j
sw $t1, 0($s0)
la $t1, r
lw $t3, 0($t1)
move $t3, $v0
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
sw $s4, 0($s0)
la $s4, t
lw $t9, 0($s4)
move $t9, $v0
li $v0, 5
syscall
la $s0, m
sw $s3, 0($s0)
la $s3, u
lw $t6, 0($s3)
move $t6, $v0
li $v0, 5
syscall
la $s0, n
sw $t0, 0($s0)
la $t0, v
lw $t7, 0($t0)
move $t7, $v0
li $v0, 5
syscall
la $s0, o
sw $t5, 0($s0)
la $t5, w
lw $s6, 0($t5)
move $s6, $v0
li $v0, 5
syscall
la $s0, p
sw $t2, 0($s0)
la $t2, x
lw $s5, 0($t2)
move $s5, $v0
li $v0, 5
syscall
la $s0, q
sw $s1, 0($s0)
la $s1, y
lw $t4, 0($s1)
move $t4, $v0
li $v0, 5
syscall
la $s0, r
sw $t3, 0($s0)
la $t3, z
lw $t1, 0($t3)
move $t1, $v0
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
sw $t9, 0($s0)
la $t9, ab
lw $s4, 0($t9)
move $s4, $v0
la $s0, u
sw $t6, 0($s0)
la $s3, c
lw $t6, 0($s3)
move $t0, $t6
la $s0, v
sw $t7, 0($s0)
la $t7, d
lw $t5, 0($t7)
add $t0, $t0, $t5
la $s0, w
sw $s6, 0($s0)
la $s6, e
lw $t2, 0($s6)
add $t0, $t0, $t2
la $s0, x
sw $s5, 0($s0)
la $s5, f
lw $s1, 0($s5)
add $t0, $t0, $s1
la $s0, y
sw $t4, 0($s0)
la $t4, g
lw $t3, 0($t4)
add $t0, $t0, $t3
la $s0, z
sw $t1, 0($s0)
la $t1, h
lw $s2, 0($t1)
add $t0, $t0, $s2
la $s0, aa
sw $t8, 0($s0)
la $t8, i
lw $t9, 0($t8)
add $t0, $t0, $t9
la $s0, ab
sw $s4, 0($s0)
la $s4, j
lw $s3, 0($s4)
add $t0, $t0, $s3
la $s0, c
sw $t6, 0($s0)
la $s0, ac
sw $t0, 0($s0)
la $t6, k
lw $t0, 0($t6)
la $s0, d
sw $t5, 0($s0)
la $t5, ac
lw $t7, 0($t5)
add $t7, $t7, $t0
la $s0, e
sw $t2, 0($s0)
la $s6, l
lw $t2, 0($s6)
add $t7, $t7, $t2
la $s0, f
sw $s1, 0($s0)
la $s5, m
lw $s1, 0($s5)
add $t7, $t7, $s1
la $s0, g
sw $t3, 0($s0)
la $t4, n
lw $t3, 0($t4)
add $t7, $t7, $t3
la $s0, h
sw $s2, 0($s0)
la $t1, o
lw $s2, 0($t1)
add $t7, $t7, $s2
la $s0, i
sw $t9, 0($s0)
la $t8, p
lw $t9, 0($t8)
add $t7, $t7, $t9
la $s0, j
sw $s3, 0($s0)
la $s4, q
lw $s3, 0($s4)
add $t7, $t7, $s3
la $s0, k
sw $t0, 0($s0)
la $t6, r
lw $t0, 0($t6)
add $t7, $t7, $t0
sw $t7, 0($t5)
la $t7, s
lw $t5, 0($t7)
la $s0, l
sw $t2, 0($s0)
la $t2, ac
lw $s6, 0($t2)
add $s6, $s6, $t5
la $s0, m
sw $s1, 0($s0)
la $s5, t
lw $s1, 0($s5)
add $s6, $s6, $s1
la $s0, n
sw $t3, 0($s0)
la $t4, u
lw $t3, 0($t4)
add $s6, $s6, $t3
la $s0, o
sw $s2, 0($s0)
la $t1, v
lw $s2, 0($t1)
add $s6, $s6, $s2
la $s0, p
sw $t9, 0($s0)
la $t8, w
lw $t9, 0($t8)
add $s6, $s6, $t9
la $s0, q
sw $s3, 0($s0)
la $s4, x
lw $s3, 0($s4)
add $s6, $s6, $s3
la $s0, r
sw $t0, 0($s0)
la $t6, y
lw $t0, 0($t6)
add $s6, $s6, $t0
la $s0, s
sw $t5, 0($s0)
la $t7, z
lw $t5, 0($t7)
add $s6, $s6, $t5
sw $s6, 0($t2)
la $s6, aa
lw $t2, 0($s6)
la $s0, t
sw $s1, 0($s0)
la $s1, ac
lw $s5, 0($s1)
add $s5, $s5, $t2
la $s0, u
sw $t3, 0($s0)
la $t4, ab
lw $t3, 0($t4)
add $s5, $s5, $t3
move $t1, $s5
la $s0, v
sw $s2, 0($s0)
la $s2, c
lw $t8, 0($s2)
la $s0, w
sw $t9, 0($s0)
move $t9, $t8
la $s0, x
sw $s3, 0($s0)
la $s4, d
lw $s3, 0($s4)
add $t9, $t9, $s3
la $s0, y
sw $t0, 0($s0)
la $t6, e
lw $t0, 0($t6)
add $t9, $t9, $t0
la $s0, z
sw $t5, 0($s0)
la $t7, f
lw $t5, 0($t7)
add $t9, $t9, $t5
la $s0, aa
sw $t2, 0($s0)
la $s6, g
lw $t2, 0($s6)
add $t9, $t9, $t2
sw $s5, 0($s1)
la $s5, h
lw $s1, 0($s5)
add $t9, $t9, $s1
la $s0, ab
sw $t3, 0($s0)
la $t4, i
lw $t3, 0($t4)
add $t9, $t9, $t3
la $s0, ad
sw $t1, 0($s0)
la $t1, j
lw $s2, 0($t1)
add $t9, $t9, $s2
la $s0, c
sw $t8, 0($s0)
la $s0, ae
sw $t9, 0($s0)
la $t8, k
lw $t9, 0($t8)
la $s0, d
sw $s3, 0($s0)
la $s3, ae
lw $s4, 0($s3)
add $s4, $s4, $t9
la $s0, e
sw $t0, 0($s0)
la $t6, l
lw $t0, 0($t6)
add $s4, $s4, $t0
la $s0, f
sw $t5, 0($s0)
la $t7, m
lw $t5, 0($t7)
add $s4, $s4, $t5
la $s0, g
sw $t2, 0($s0)
la $s6, n
lw $t2, 0($s6)
add $s4, $s4, $t2
la $s0, h
sw $s1, 0($s0)
la $s5, o
lw $s1, 0($s5)
add $s4, $s4, $s1
la $s0, i
sw $t3, 0($s0)
la $t4, p
lw $t3, 0($t4)
add $s4, $s4, $t3
la $s0, j
sw $s2, 0($s0)
la $t1, q
lw $s2, 0($t1)
add $s4, $s4, $s2
la $s0, k
sw $t9, 0($s0)
la $t8, r
lw $t9, 0($t8)
add $s4, $s4, $t9
sw $s4, 0($s3)
la $s4, s
lw $s3, 0($s4)
la $s0, l
sw $t0, 0($s0)
la $t0, ae
lw $t6, 0($t0)
add $t6, $t6, $s3
la $s0, m
sw $t5, 0($s0)
la $t7, t
lw $t5, 0($t7)
add $t6, $t6, $t5
la $s0, n
sw $t2, 0($s0)
la $s6, u
lw $t2, 0($s6)
add $t6, $t6, $t2
la $s0, o
sw $s1, 0($s0)
la $s5, v
lw $s1, 0($s5)
add $t6, $t6, $s1
la $s0, p
sw $t3, 0($s0)
la $t4, w
lw $t3, 0($t4)
add $t6, $t6, $t3
la $s0, q
sw $s2, 0($s0)
la $t1, x
lw $s2, 0($t1)
add $t6, $t6, $s2
la $s0, r
sw $t9, 0($s0)
la $t8, y
lw $t9, 0($t8)
add $t6, $t6, $t9
la $s0, s
sw $s3, 0($s0)
la $s4, z
lw $s3, 0($s4)
add $t6, $t6, $s3
sw $t6, 0($t0)
la $t6, aa
lw $t0, 0($t6)
la $s0, t
sw $t5, 0($s0)
la $t5, ae
lw $t7, 0($t5)
add $t7, $t7, $t0
la $s0, u
sw $t2, 0($s0)
la $s6, ab
lw $t2, 0($s6)
add $t7, $t7, $t2
la $s0, v
sw $s1, 0($s0)
la $s1, ad
lw $s5, 0($s1)
add $s5, $s5, $t7
la $s0, w
sw $t3, 0($s0)
la $t4, c
lw $t3, 0($t4)
move $t1, $t3
la $s0, x
sw $s2, 0($s0)
la $s2, d
lw $t8, 0($s2)
add $t1, $t1, $t8
la $s0, y
sw $t9, 0($s0)
la $t9, e
lw $s4, 0($t9)
add $t1, $t1, $s4
la $s0, z
sw $s3, 0($s0)
la $s3, f
lw $t6, 0($s3)
add $t1, $t1, $t6
la $s0, aa
sw $t0, 0($s0)
sw $t7, 0($t5)
la $t0, g
lw $t7, 0($t0)
add $t1, $t1, $t7
la $t5, h
lw $s6, 0($t5)
add $t1, $t1, $s6
la $s0, ab
sw $t2, 0($s0)
sw $s5, 0($s1)
la $t2, i
lw $s5, 0($t2)
add $t1, $t1, $s5
la $s1, j
lw $t4, 0($s1)
add $t1, $t1, $t4
la $s0, c
sw $t3, 0($s0)
la $s0, af
sw $t1, 0($s0)
la $t3, k
lw $t1, 0($t3)
la $s0, d
sw $t8, 0($s0)
la $t8, af
lw $s2, 0($t8)
add $s2, $s2, $t1
la $s0, e
sw $s4, 0($s0)
la $t9, l
lw $s4, 0($t9)
add $s2, $s2, $s4
la $s0, f
sw $t6, 0($s0)
la $s3, m
lw $t6, 0($s3)
add $s2, $s2, $t6
la $s0, g
sw $t7, 0($s0)
la $t0, n
lw $t7, 0($t0)
add $s2, $s2, $t7
la $s0, h
sw $s6, 0($s0)
la $t5, o
lw $s6, 0($t5)
add $s2, $s2, $s6
la $s0, i
sw $s5, 0($s0)
la $t2, p
lw $s5, 0($t2)
add $s2, $s2, $s5
la $s0, j
sw $t4, 0($s0)
la $s1, q
lw $t4, 0($s1)
add $s2, $s2, $t4
la $s0, k
sw $t1, 0($s0)
la $t3, r
lw $t1, 0($t3)
add $s2, $s2, $t1
sw $s2, 0($t8)
la $s2, s
lw $t8, 0($s2)
la $s0, l
sw $s4, 0($s0)
la $s4, af
lw $t9, 0($s4)
add $t9, $t9, $t8
la $s0, m
sw $t6, 0($s0)
la $s3, t
lw $t6, 0($s3)
add $t9, $t9, $t6
la $s0, n
sw $t7, 0($s0)
la $t0, u
lw $t7, 0($t0)
add $t9, $t9, $t7
la $s0, o
sw $s6, 0($s0)
la $t5, v
lw $s6, 0($t5)
add $t9, $t9, $s6
la $s0, p
sw $s5, 0($s0)
la $t2, w
lw $s5, 0($t2)
add $t9, $t9, $s5
la $s0, q
sw $t4, 0($s0)
la $s1, x
lw $t4, 0($s1)
add $t9, $t9, $t4
la $s0, r
sw $t1, 0($s0)
la $t3, y
lw $t1, 0($t3)
add $t9, $t9, $t1
la $s0, s
sw $t8, 0($s0)
la $s2, z
lw $t8, 0($s2)
add $t9, $t9, $t8
sw $t9, 0($s4)
la $t9, aa
lw $s4, 0($t9)
la $s0, t
sw $t6, 0($s0)
la $t6, af
lw $s3, 0($t6)
add $s3, $s3, $s4
la $s0, u
sw $t7, 0($s0)
la $t0, ab
lw $t7, 0($t0)
add $s3, $s3, $t7
la $s0, v
sw $s6, 0($s0)
la $s6, ad
lw $t5, 0($s6)
add $t5, $t5, $s3
la $s0, w
sw $s5, 0($s0)
la $t2, c
lw $s5, 0($t2)
move $s1, $s5
la $s0, x
sw $t4, 0($s0)
la $t4, d
lw $t3, 0($t4)
add $s1, $s1, $t3
la $s0, y
sw $t1, 0($s0)
la $t1, e
lw $s2, 0($t1)
add $s1, $s1, $s2
la $s0, z
sw $t8, 0($s0)
la $t8, f
lw $t9, 0($t8)
add $s1, $s1, $t9
la $s0, aa
sw $s4, 0($s0)
sw $s3, 0($t6)
la $s4, g
lw $s3, 0($s4)
add $s1, $s1, $s3
la $t6, h
lw $t0, 0($t6)
add $s1, $s1, $t0
la $s0, ab
sw $t7, 0($s0)
sw $t5, 0($s6)
la $t7, i
lw $t5, 0($t7)
add $s1, $s1, $t5
la $s6, j
lw $t2, 0($s6)
add $s1, $s1, $t2
la $s0, c
sw $s5, 0($s0)
la $s0, ag
sw $s1, 0($s0)
la $s5, k
lw $s1, 0($s5)
la $s0, d
sw $t3, 0($s0)
la $t3, ag
lw $t4, 0($t3)
add $t4, $t4, $s1
la $s0, e
sw $s2, 0($s0)
la $t1, l
lw $s2, 0($t1)
add $t4, $t4, $s2
la $s0, f
sw $t9, 0($s0)
la $t8, m
lw $t9, 0($t8)
add $t4, $t4, $t9
la $s0, g
sw $s3, 0($s0)
la $s4, n
lw $s3, 0($s4)
add $t4, $t4, $s3
la $s0, h
sw $t0, 0($s0)
la $t6, o
lw $t0, 0($t6)
add $t4, $t4, $t0
la $s0, i
sw $t5, 0($s0)
la $t7, p
lw $t5, 0($t7)
add $t4, $t4, $t5
la $s0, j
sw $t2, 0($s0)
la $s6, q
lw $t2, 0($s6)
add $t4, $t4, $t2
la $s0, k
sw $s1, 0($s0)
la $s5, r
lw $s1, 0($s5)
add $t4, $t4, $s1
sw $t4, 0($t3)
la $t4, s
lw $t3, 0($t4)
la $s0, l
sw $s2, 0($s0)
la $s2, ag
lw $t1, 0($s2)
add $t1, $t1, $t3
la $s0, m
sw $t9, 0($s0)
la $t8, t
lw $t9, 0($t8)
add $t1, $t1, $t9
la $s0, n
sw $s3, 0($s0)
la $s4, u
lw $s3, 0($s4)
add $t1, $t1, $s3
la $s0, o
sw $t0, 0($s0)
la $t6, v
lw $t0, 0($t6)
add $t1, $t1, $t0
la $s0, p
sw $t5, 0($s0)
la $t7, w
lw $t5, 0($t7)
add $t1, $t1, $t5
la $s0, q
sw $t2, 0($s0)
la $s6, x
lw $t2, 0($s6)
add $t1, $t1, $t2
la $s0, r
sw $s1, 0($s0)
la $s5, y
lw $s1, 0($s5)
add $t1, $t1, $s1
la $s0, s
sw $t3, 0($s0)
la $t4, z
lw $t3, 0($t4)
add $t1, $t1, $t3
sw $t1, 0($s2)
la $t1, aa
lw $s2, 0($t1)
la $s0, t
sw $t9, 0($s0)
la $t9, ag
lw $t8, 0($t9)
add $t8, $t8, $s2
la $s0, u
sw $s3, 0($s0)
la $s4, ab
lw $s3, 0($s4)
add $t8, $t8, $s3
la $s0, v
sw $t0, 0($s0)
la $t0, ad
lw $t6, 0($t0)
add $t6, $t6, $t8
li $v0, 1
move $a0, $t6
syscall
