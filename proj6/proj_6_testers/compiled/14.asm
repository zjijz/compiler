.data
v:	.word	0	# t in original
x:	.word	0	# v in original
j:	.word	0	# h in original
s:	.word	0	# q in original
i:	.word	0	# g in original
ag:	.word	0	# temp_e in original
r:	.word	0	# p in original
z:	.word	0	# x in original
w:	.word	0	# u in original
p:	.word	0	# n in original
af:	.word	0	# temp_d in original
c:	.word	0	# a in original
y:	.word	0	# w in original
m:	.word	0	# k in original
ae:	.word	0	# temp_c in original
n:	.word	0	# l in original
ab:	.word	0	# z in original
f:	.word	0	# d in original
q:	.word	0	# o in original
d:	.word	0	# b in original
ad:	.word	0	# temp_a in original
o:	.word	0	# m in original
u:	.word	0	# s in original
e:	.word	0	# c in original
k:	.word	0	# i in original
aa:	.word	0	# y in original
h:	.word	0	# f in original
l:	.word	0	# j in original
t:	.word	0	# r in original
g:	.word	0	# e in original
ac:	.word	0	# temp_b in original
.text
li $v0, 5
syscall
la $t5, c
lw $s6, 0($t5)
move $s6, $v0
li $v0, 5
syscall
la $t3, d
lw $s4, 0($t3)
move $s4, $v0
li $v0, 5
syscall
la $s3, e
lw $s1, 0($s3)
move $s1, $v0
li $v0, 5
syscall
la $t4, f
lw $t8, 0($t4)
move $t8, $v0
li $v0, 5
syscall
la $t6, g
lw $t2, 0($t6)
move $t2, $v0
li $v0, 5
syscall
la $t7, h
lw $t1, 0($t7)
move $t1, $v0
li $v0, 5
syscall
la $t0, i
lw $s2, 0($t0)
move $s2, $v0
li $v0, 5
syscall
la $t9, j
lw $s5, 0($t9)
move $s5, $v0
li $v0, 5
syscall
la $s0, c
sw $s6, 0($s0)
la $s6, k
lw $t5, 0($s6)
move $t5, $v0
li $v0, 5
syscall
la $s0, d
sw $s4, 0($s0)
la $s4, l
lw $t3, 0($s4)
move $t3, $v0
li $v0, 5
syscall
la $s0, e
sw $s1, 0($s0)
la $s1, m
lw $s3, 0($s1)
move $s3, $v0
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
sw $t2, 0($s0)
la $t2, o
lw $t6, 0($t2)
move $t6, $v0
li $v0, 5
syscall
la $s0, h
sw $t1, 0($s0)
la $t1, p
lw $t7, 0($t1)
move $t7, $v0
li $v0, 5
syscall
la $s0, i
sw $s2, 0($s0)
la $s2, q
lw $t0, 0($s2)
move $t0, $v0
li $v0, 5
syscall
la $s0, j
sw $s5, 0($s0)
la $s5, r
lw $t9, 0($s5)
move $t9, $v0
li $v0, 5
syscall
la $s0, k
sw $t5, 0($s0)
la $t5, s
lw $s6, 0($t5)
move $s6, $v0
li $v0, 5
syscall
la $s0, l
sw $t3, 0($s0)
la $t3, t
lw $s4, 0($t3)
move $s4, $v0
li $v0, 5
syscall
la $s0, m
sw $s3, 0($s0)
la $s3, u
lw $s1, 0($s3)
move $s1, $v0
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
sw $t6, 0($s0)
la $t6, w
lw $t2, 0($t6)
move $t2, $v0
li $v0, 5
syscall
la $s0, p
sw $t7, 0($s0)
la $t7, x
lw $t1, 0($t7)
move $t1, $v0
li $v0, 5
syscall
la $s0, q
sw $t0, 0($s0)
la $t0, y
lw $s2, 0($t0)
move $s2, $v0
li $v0, 5
syscall
la $s0, r
sw $t9, 0($s0)
la $t9, z
lw $s5, 0($t9)
move $s5, $v0
li $v0, 5
syscall
la $s0, s
sw $s6, 0($s0)
la $s6, aa
lw $t5, 0($s6)
move $t5, $v0
li $v0, 5
syscall
la $s0, t
sw $s4, 0($s0)
la $s4, ab
lw $t3, 0($s4)
move $t3, $v0
la $s0, u
sw $s1, 0($s0)
la $s3, c
lw $s1, 0($s3)
move $t4, $s1
la $s0, v
sw $t8, 0($s0)
la $t8, d
lw $t6, 0($t8)
add $t4, $t4, $t6
la $s0, w
sw $t2, 0($s0)
la $t2, e
lw $t7, 0($t2)
add $t4, $t4, $t7
la $s0, x
sw $t1, 0($s0)
la $t1, f
lw $t0, 0($t1)
add $t4, $t4, $t0
la $s0, y
sw $s2, 0($s0)
la $s2, g
lw $t9, 0($s2)
add $t4, $t4, $t9
la $s0, z
sw $s5, 0($s0)
la $s5, h
lw $s6, 0($s5)
add $t4, $t4, $s6
la $s0, aa
sw $t5, 0($s0)
la $t5, i
lw $s4, 0($t5)
add $t4, $t4, $s4
la $s0, ab
sw $t3, 0($s0)
la $t3, j
lw $s3, 0($t3)
add $t4, $t4, $s3
la $s0, c
sw $s1, 0($s0)
la $s0, ac
sw $t4, 0($s0)
la $s1, k
lw $t4, 0($s1)
la $s0, d
sw $t6, 0($s0)
la $t6, ac
lw $t8, 0($t6)
add $t8, $t8, $t4
la $s0, e
sw $t7, 0($s0)
la $t2, l
lw $t7, 0($t2)
add $t8, $t8, $t7
la $s0, f
sw $t0, 0($s0)
la $t1, m
lw $t0, 0($t1)
add $t8, $t8, $t0
la $s0, g
sw $t9, 0($s0)
la $s2, n
lw $t9, 0($s2)
add $t8, $t8, $t9
la $s0, h
sw $s6, 0($s0)
la $s5, o
lw $s6, 0($s5)
add $t8, $t8, $s6
la $s0, i
sw $s4, 0($s0)
la $t5, p
lw $s4, 0($t5)
add $t8, $t8, $s4
la $s0, j
sw $s3, 0($s0)
la $t3, q
lw $s3, 0($t3)
add $t8, $t8, $s3
la $s0, k
sw $t4, 0($s0)
la $s1, r
lw $t4, 0($s1)
add $t8, $t8, $t4
sw $t8, 0($t6)
la $t8, s
lw $t6, 0($t8)
la $s0, l
sw $t7, 0($s0)
la $t7, ac
lw $t2, 0($t7)
add $t2, $t2, $t6
la $s0, m
sw $t0, 0($s0)
la $t1, t
lw $t0, 0($t1)
add $t2, $t2, $t0
la $s0, n
sw $t9, 0($s0)
la $s2, u
lw $t9, 0($s2)
add $t2, $t2, $t9
la $s0, o
sw $s6, 0($s0)
la $s5, v
lw $s6, 0($s5)
add $t2, $t2, $s6
la $s0, p
sw $s4, 0($s0)
la $t5, w
lw $s4, 0($t5)
add $t2, $t2, $s4
la $s0, q
sw $s3, 0($s0)
la $t3, x
lw $s3, 0($t3)
add $t2, $t2, $s3
la $s0, r
sw $t4, 0($s0)
la $s1, y
lw $t4, 0($s1)
add $t2, $t2, $t4
la $s0, s
sw $t6, 0($s0)
la $t8, z
lw $t6, 0($t8)
add $t2, $t2, $t6
sw $t2, 0($t7)
la $t2, aa
lw $t7, 0($t2)
la $s0, t
sw $t0, 0($s0)
la $t0, ac
lw $t1, 0($t0)
add $t1, $t1, $t7
la $s0, u
sw $t9, 0($s0)
la $s2, ab
lw $t9, 0($s2)
add $t1, $t1, $t9
move $s5, $t1
la $s0, v
sw $s6, 0($s0)
la $s6, c
lw $t5, 0($s6)
la $s0, w
sw $s4, 0($s0)
move $s4, $t5
la $s0, x
sw $s3, 0($s0)
la $t3, d
lw $s3, 0($t3)
add $s4, $s4, $s3
la $s0, y
sw $t4, 0($s0)
la $s1, e
lw $t4, 0($s1)
add $s4, $s4, $t4
la $s0, z
sw $t6, 0($s0)
la $t8, f
lw $t6, 0($t8)
add $s4, $s4, $t6
la $s0, aa
sw $t7, 0($s0)
la $t2, g
lw $t7, 0($t2)
add $s4, $s4, $t7
sw $t1, 0($t0)
la $t1, h
lw $t0, 0($t1)
add $s4, $s4, $t0
la $s0, ab
sw $t9, 0($s0)
la $s2, i
lw $t9, 0($s2)
add $s4, $s4, $t9
la $s0, ad
sw $s5, 0($s0)
la $s5, j
lw $s6, 0($s5)
add $s4, $s4, $s6
la $s0, c
sw $t5, 0($s0)
la $s0, ae
sw $s4, 0($s0)
la $t5, k
lw $s4, 0($t5)
la $s0, d
sw $s3, 0($s0)
la $s3, ae
lw $t3, 0($s3)
add $t3, $t3, $s4
la $s0, e
sw $t4, 0($s0)
la $s1, l
lw $t4, 0($s1)
add $t3, $t3, $t4
la $s0, f
sw $t6, 0($s0)
la $t8, m
lw $t6, 0($t8)
add $t3, $t3, $t6
la $s0, g
sw $t7, 0($s0)
la $t2, n
lw $t7, 0($t2)
add $t3, $t3, $t7
la $s0, h
sw $t0, 0($s0)
la $t1, o
lw $t0, 0($t1)
add $t3, $t3, $t0
la $s0, i
sw $t9, 0($s0)
la $s2, p
lw $t9, 0($s2)
add $t3, $t3, $t9
la $s0, j
sw $s6, 0($s0)
la $s5, q
lw $s6, 0($s5)
add $t3, $t3, $s6
la $s0, k
sw $s4, 0($s0)
la $t5, r
lw $s4, 0($t5)
add $t3, $t3, $s4
sw $t3, 0($s3)
la $t3, s
lw $s3, 0($t3)
la $s0, l
sw $t4, 0($s0)
la $t4, ae
lw $s1, 0($t4)
add $s1, $s1, $s3
la $s0, m
sw $t6, 0($s0)
la $t8, t
lw $t6, 0($t8)
add $s1, $s1, $t6
la $s0, n
sw $t7, 0($s0)
la $t2, u
lw $t7, 0($t2)
add $s1, $s1, $t7
la $s0, o
sw $t0, 0($s0)
la $t1, v
lw $t0, 0($t1)
add $s1, $s1, $t0
la $s0, p
sw $t9, 0($s0)
la $s2, w
lw $t9, 0($s2)
add $s1, $s1, $t9
la $s0, q
sw $s6, 0($s0)
la $s5, x
lw $s6, 0($s5)
add $s1, $s1, $s6
la $s0, r
sw $s4, 0($s0)
la $t5, y
lw $s4, 0($t5)
add $s1, $s1, $s4
la $s0, s
sw $s3, 0($s0)
la $t3, z
lw $s3, 0($t3)
add $s1, $s1, $s3
sw $s1, 0($t4)
la $s1, aa
lw $t4, 0($s1)
la $s0, t
sw $t6, 0($s0)
la $t6, ae
lw $t8, 0($t6)
add $t8, $t8, $t4
la $s0, u
sw $t7, 0($s0)
la $t2, ab
lw $t7, 0($t2)
add $t8, $t8, $t7
la $s0, v
sw $t0, 0($s0)
la $t0, ad
lw $t1, 0($t0)
add $t1, $t1, $t8
la $s0, w
sw $t9, 0($s0)
la $s2, c
lw $t9, 0($s2)
move $s5, $t9
la $s0, x
sw $s6, 0($s0)
la $s6, d
lw $t5, 0($s6)
add $s5, $s5, $t5
la $s0, y
sw $s4, 0($s0)
la $s4, e
lw $t3, 0($s4)
add $s5, $s5, $t3
la $s0, z
sw $s3, 0($s0)
la $s3, f
lw $s1, 0($s3)
add $s5, $s5, $s1
la $s0, aa
sw $t4, 0($s0)
sw $t8, 0($t6)
la $t4, g
lw $t8, 0($t4)
add $s5, $s5, $t8
la $t6, h
lw $t2, 0($t6)
add $s5, $s5, $t2
la $s0, ab
sw $t7, 0($s0)
sw $t1, 0($t0)
la $t7, i
lw $t1, 0($t7)
add $s5, $s5, $t1
la $t0, j
lw $s2, 0($t0)
add $s5, $s5, $s2
la $s0, c
sw $t9, 0($s0)
la $s0, af
sw $s5, 0($s0)
la $t9, k
lw $s5, 0($t9)
la $s0, d
sw $t5, 0($s0)
la $t5, af
lw $s6, 0($t5)
add $s6, $s6, $s5
la $s0, e
sw $t3, 0($s0)
la $s4, l
lw $t3, 0($s4)
add $s6, $s6, $t3
la $s0, f
sw $s1, 0($s0)
la $s3, m
lw $s1, 0($s3)
add $s6, $s6, $s1
la $s0, g
sw $t8, 0($s0)
la $t4, n
lw $t8, 0($t4)
add $s6, $s6, $t8
la $s0, h
sw $t2, 0($s0)
la $t6, o
lw $t2, 0($t6)
add $s6, $s6, $t2
la $s0, i
sw $t1, 0($s0)
la $t7, p
lw $t1, 0($t7)
add $s6, $s6, $t1
la $s0, j
sw $s2, 0($s0)
la $t0, q
lw $s2, 0($t0)
add $s6, $s6, $s2
la $s0, k
sw $s5, 0($s0)
la $t9, r
lw $s5, 0($t9)
add $s6, $s6, $s5
sw $s6, 0($t5)
la $s6, s
lw $t5, 0($s6)
la $s0, l
sw $t3, 0($s0)
la $t3, af
lw $s4, 0($t3)
add $s4, $s4, $t5
la $s0, m
sw $s1, 0($s0)
la $s3, t
lw $s1, 0($s3)
add $s4, $s4, $s1
la $s0, n
sw $t8, 0($s0)
la $t4, u
lw $t8, 0($t4)
add $s4, $s4, $t8
la $s0, o
sw $t2, 0($s0)
la $t6, v
lw $t2, 0($t6)
add $s4, $s4, $t2
la $s0, p
sw $t1, 0($s0)
la $t7, w
lw $t1, 0($t7)
add $s4, $s4, $t1
la $s0, q
sw $s2, 0($s0)
la $t0, x
lw $s2, 0($t0)
add $s4, $s4, $s2
la $s0, r
sw $s5, 0($s0)
la $t9, y
lw $s5, 0($t9)
add $s4, $s4, $s5
la $s0, s
sw $t5, 0($s0)
la $s6, z
lw $t5, 0($s6)
add $s4, $s4, $t5
sw $s4, 0($t3)
la $s4, aa
lw $t3, 0($s4)
la $s0, t
sw $s1, 0($s0)
la $s1, af
lw $s3, 0($s1)
add $s3, $s3, $t3
la $s0, u
sw $t8, 0($s0)
la $t4, ab
lw $t8, 0($t4)
add $s3, $s3, $t8
la $s0, v
sw $t2, 0($s0)
la $t2, ad
lw $t6, 0($t2)
add $t6, $t6, $s3
la $s0, w
sw $t1, 0($s0)
la $t7, c
lw $t1, 0($t7)
move $t0, $t1
la $s0, x
sw $s2, 0($s0)
la $s2, d
lw $t9, 0($s2)
add $t0, $t0, $t9
la $s0, y
sw $s5, 0($s0)
la $s5, e
lw $s6, 0($s5)
add $t0, $t0, $s6
la $s0, z
sw $t5, 0($s0)
la $t5, f
lw $s4, 0($t5)
add $t0, $t0, $s4
la $s0, aa
sw $t3, 0($s0)
sw $s3, 0($s1)
la $t3, g
lw $s3, 0($t3)
add $t0, $t0, $s3
la $s1, h
lw $t4, 0($s1)
add $t0, $t0, $t4
la $s0, ab
sw $t8, 0($s0)
sw $t6, 0($t2)
la $t8, i
lw $t6, 0($t8)
add $t0, $t0, $t6
la $t2, j
lw $t7, 0($t2)
add $t0, $t0, $t7
la $s0, c
sw $t1, 0($s0)
la $s0, ag
sw $t0, 0($s0)
la $t1, k
lw $t0, 0($t1)
la $s0, d
sw $t9, 0($s0)
la $t9, ag
lw $s2, 0($t9)
add $s2, $s2, $t0
la $s0, e
sw $s6, 0($s0)
la $s5, l
lw $s6, 0($s5)
add $s2, $s2, $s6
la $s0, f
sw $s4, 0($s0)
la $t5, m
lw $s4, 0($t5)
add $s2, $s2, $s4
la $s0, g
sw $s3, 0($s0)
la $t3, n
lw $s3, 0($t3)
add $s2, $s2, $s3
la $s0, h
sw $t4, 0($s0)
la $s1, o
lw $t4, 0($s1)
add $s2, $s2, $t4
la $s0, i
sw $t6, 0($s0)
la $t8, p
lw $t6, 0($t8)
add $s2, $s2, $t6
la $s0, j
sw $t7, 0($s0)
la $t2, q
lw $t7, 0($t2)
add $s2, $s2, $t7
la $s0, k
sw $t0, 0($s0)
la $t1, r
lw $t0, 0($t1)
add $s2, $s2, $t0
sw $s2, 0($t9)
la $s2, s
lw $t9, 0($s2)
la $s0, l
sw $s6, 0($s0)
la $s6, ag
lw $s5, 0($s6)
add $s5, $s5, $t9
la $s0, m
sw $s4, 0($s0)
la $t5, t
lw $s4, 0($t5)
add $s5, $s5, $s4
la $s0, n
sw $s3, 0($s0)
la $t3, u
lw $s3, 0($t3)
add $s5, $s5, $s3
la $s0, o
sw $t4, 0($s0)
la $s1, v
lw $t4, 0($s1)
add $s5, $s5, $t4
la $s0, p
sw $t6, 0($s0)
la $t8, w
lw $t6, 0($t8)
add $s5, $s5, $t6
la $s0, q
sw $t7, 0($s0)
la $t2, x
lw $t7, 0($t2)
add $s5, $s5, $t7
la $s0, r
sw $t0, 0($s0)
la $t1, y
lw $t0, 0($t1)
add $s5, $s5, $t0
la $s0, s
sw $t9, 0($s0)
la $s2, z
lw $t9, 0($s2)
add $s5, $s5, $t9
sw $s5, 0($s6)
la $s5, aa
lw $s6, 0($s5)
la $s0, t
sw $s4, 0($s0)
la $s4, ag
lw $t5, 0($s4)
add $t5, $t5, $s6
la $s0, u
sw $s3, 0($s0)
la $t3, ab
lw $s3, 0($t3)
add $t5, $t5, $s3
la $s0, v
sw $t4, 0($s0)
la $t4, ad
lw $s1, 0($t4)
add $s1, $s1, $t5
li $v0, 1
move $a0, $s1
syscall
