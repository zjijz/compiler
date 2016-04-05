.data
h:	.word	0	# f in original
w:	.word	0	# u in original
ad:	.word	0	# temp_a in original
p:	.word	0	# n in original
z:	.word	0	# x in original
s:	.word	0	# q in original
ae:	.word	0	# temp_c in original
t:	.word	0	# r in original
d:	.word	0	# b in original
c:	.word	0	# a in original
g:	.word	0	# e in original
i:	.word	0	# g in original
ab:	.word	0	# z in original
aa:	.word	0	# y in original
e:	.word	0	# c in original
af:	.word	0	# temp_d in original
k:	.word	0	# i in original
v:	.word	0	# t in original
n:	.word	0	# l in original
q:	.word	0	# o in original
f:	.word	0	# d in original
j:	.word	0	# h in original
o:	.word	0	# m in original
x:	.word	0	# v in original
y:	.word	0	# w in original
u:	.word	0	# s in original
ac:	.word	0	# temp_b in original
l:	.word	0	# j in original
r:	.word	0	# p in original
ag:	.word	0	# temp_e in original
m:	.word	0	# k in original
.text
li $v0, 5
syscall
la $t9, c
lw $s6, 0($t9)
move $s6, $v0
li $v0, 5
syscall
la $s4, d
lw $s1, 0($s4)
move $s1, $v0
li $v0, 5
syscall
la $s5, e
lw $t4, 0($s5)
move $t4, $v0
li $v0, 5
syscall
la $s2, f
lw $t0, 0($s2)
move $t0, $v0
li $v0, 5
syscall
la $t5, g
lw $t2, 0($t5)
move $t2, $v0
li $v0, 5
syscall
la $t6, h
lw $t8, 0($t6)
move $t8, $v0
li $v0, 5
syscall
la $t3, i
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s3, j
lw $t1, 0($s3)
move $t1, $v0
li $v0, 5
syscall
la $s0, c
sw $s6, 0($s0)
la $s6, k
lw $t9, 0($s6)
move $t9, $v0
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
sw $t4, 0($s0)
la $t4, m
lw $s5, 0($t4)
move $s5, $v0
li $v0, 5
syscall
la $s0, f
sw $t0, 0($s0)
la $t0, n
lw $s2, 0($t0)
move $s2, $v0
li $v0, 5
syscall
la $s0, g
sw $t2, 0($s0)
la $t2, o
lw $t5, 0($t2)
move $t5, $v0
li $v0, 5
syscall
la $s0, h
sw $t8, 0($s0)
la $t8, p
lw $t6, 0($t8)
move $t6, $v0
li $v0, 5
syscall
la $s0, i
sw $t7, 0($s0)
la $t7, q
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s0, j
sw $t1, 0($s0)
la $t1, r
lw $s3, 0($t1)
move $s3, $v0
li $v0, 5
syscall
la $s0, k
sw $t9, 0($s0)
la $t9, s
lw $s6, 0($t9)
move $s6, $v0
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
sw $s5, 0($s0)
la $s5, u
lw $t4, 0($s5)
move $t4, $v0
li $v0, 5
syscall
la $s0, n
sw $s2, 0($s0)
la $s2, v
lw $t0, 0($s2)
move $t0, $v0
li $v0, 5
syscall
la $s0, o
sw $t5, 0($s0)
la $t5, w
lw $t2, 0($t5)
move $t2, $v0
li $v0, 5
syscall
la $s0, p
sw $t6, 0($s0)
la $t6, x
lw $t8, 0($t6)
move $t8, $v0
li $v0, 5
syscall
la $s0, q
sw $t3, 0($s0)
la $t3, y
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s0, r
sw $s3, 0($s0)
la $s3, z
lw $t1, 0($s3)
move $t1, $v0
li $v0, 5
syscall
la $s0, s
sw $s6, 0($s0)
la $s6, aa
lw $t9, 0($s6)
move $t9, $v0
li $v0, 5
syscall
la $s0, t
sw $s1, 0($s0)
la $s1, ab
lw $s4, 0($s1)
move $s4, $v0
la $s0, u
sw $t4, 0($s0)
la $s5, c
lw $t4, 0($s5)
move $s2, $t4
la $s0, v
sw $t0, 0($s0)
la $t0, d
lw $t5, 0($t0)
add $s2, $s2, $t5
la $s0, w
sw $t2, 0($s0)
la $t2, e
lw $t6, 0($t2)
add $s2, $s2, $t6
la $s0, x
sw $t8, 0($s0)
la $t8, f
lw $t3, 0($t8)
add $s2, $s2, $t3
la $s0, y
sw $t7, 0($s0)
la $t7, g
lw $s3, 0($t7)
add $s2, $s2, $s3
la $s0, z
sw $t1, 0($s0)
la $t1, h
lw $s6, 0($t1)
add $s2, $s2, $s6
la $s0, aa
sw $t9, 0($s0)
la $t9, i
lw $s1, 0($t9)
add $s2, $s2, $s1
la $s0, ab
sw $s4, 0($s0)
la $s4, j
lw $s5, 0($s4)
add $s2, $s2, $s5
la $s0, c
sw $t4, 0($s0)
la $s0, ac
sw $s2, 0($s0)
la $t4, k
lw $s2, 0($t4)
la $s0, d
sw $t5, 0($s0)
la $t5, ac
lw $t0, 0($t5)
add $t0, $t0, $s2
la $s0, e
sw $t6, 0($s0)
la $t2, l
lw $t6, 0($t2)
add $t0, $t0, $t6
la $s0, f
sw $t3, 0($s0)
la $t8, m
lw $t3, 0($t8)
add $t0, $t0, $t3
la $s0, g
sw $s3, 0($s0)
la $t7, n
lw $s3, 0($t7)
add $t0, $t0, $s3
la $s0, h
sw $s6, 0($s0)
la $t1, o
lw $s6, 0($t1)
add $t0, $t0, $s6
la $s0, i
sw $s1, 0($s0)
la $t9, p
lw $s1, 0($t9)
add $t0, $t0, $s1
la $s0, j
sw $s5, 0($s0)
la $s4, q
lw $s5, 0($s4)
add $t0, $t0, $s5
la $s0, k
sw $s2, 0($s0)
la $t4, r
lw $s2, 0($t4)
add $t0, $t0, $s2
sw $t0, 0($t5)
la $t0, s
lw $t5, 0($t0)
la $s0, l
sw $t6, 0($s0)
la $t6, ac
lw $t2, 0($t6)
add $t2, $t2, $t5
la $s0, m
sw $t3, 0($s0)
la $t8, t
lw $t3, 0($t8)
add $t2, $t2, $t3
la $s0, n
sw $s3, 0($s0)
la $t7, u
lw $s3, 0($t7)
add $t2, $t2, $s3
la $s0, o
sw $s6, 0($s0)
la $t1, v
lw $s6, 0($t1)
add $t2, $t2, $s6
la $s0, p
sw $s1, 0($s0)
la $t9, w
lw $s1, 0($t9)
add $t2, $t2, $s1
la $s0, q
sw $s5, 0($s0)
la $s4, x
lw $s5, 0($s4)
add $t2, $t2, $s5
la $s0, r
sw $s2, 0($s0)
la $t4, y
lw $s2, 0($t4)
add $t2, $t2, $s2
la $s0, s
sw $t5, 0($s0)
la $t0, z
lw $t5, 0($t0)
add $t2, $t2, $t5
sw $t2, 0($t6)
la $t2, aa
lw $t6, 0($t2)
la $s0, t
sw $t3, 0($s0)
la $t3, ac
lw $t8, 0($t3)
add $t8, $t8, $t6
la $s0, u
sw $s3, 0($s0)
la $t7, ab
lw $s3, 0($t7)
add $t8, $t8, $s3
move $t1, $t8
la $s0, v
sw $s6, 0($s0)
la $s6, c
lw $t9, 0($s6)
la $s0, w
sw $s1, 0($s0)
move $s1, $t9
la $s0, x
sw $s5, 0($s0)
la $s4, d
lw $s5, 0($s4)
add $s1, $s1, $s5
la $s0, y
sw $s2, 0($s0)
la $t4, e
lw $s2, 0($t4)
add $s1, $s1, $s2
la $s0, z
sw $t5, 0($s0)
la $t0, f
lw $t5, 0($t0)
add $s1, $s1, $t5
la $s0, aa
sw $t6, 0($s0)
la $t2, g
lw $t6, 0($t2)
add $s1, $s1, $t6
sw $t8, 0($t3)
la $t8, h
lw $t3, 0($t8)
add $s1, $s1, $t3
la $s0, ab
sw $s3, 0($s0)
la $t7, i
lw $s3, 0($t7)
add $s1, $s1, $s3
la $s0, ad
sw $t1, 0($s0)
la $t1, j
lw $s6, 0($t1)
add $s1, $s1, $s6
la $s0, c
sw $t9, 0($s0)
la $s0, ae
sw $s1, 0($s0)
la $t9, k
lw $s1, 0($t9)
la $s0, d
sw $s5, 0($s0)
la $s5, ae
lw $s4, 0($s5)
add $s4, $s4, $s1
la $s0, e
sw $s2, 0($s0)
la $t4, l
lw $s2, 0($t4)
add $s4, $s4, $s2
la $s0, f
sw $t5, 0($s0)
la $t0, m
lw $t5, 0($t0)
add $s4, $s4, $t5
la $s0, g
sw $t6, 0($s0)
la $t2, n
lw $t6, 0($t2)
add $s4, $s4, $t6
la $s0, h
sw $t3, 0($s0)
la $t8, o
lw $t3, 0($t8)
add $s4, $s4, $t3
la $s0, i
sw $s3, 0($s0)
la $t7, p
lw $s3, 0($t7)
add $s4, $s4, $s3
la $s0, j
sw $s6, 0($s0)
la $t1, q
lw $s6, 0($t1)
add $s4, $s4, $s6
la $s0, k
sw $s1, 0($s0)
la $t9, r
lw $s1, 0($t9)
add $s4, $s4, $s1
sw $s4, 0($s5)
la $s4, s
lw $s5, 0($s4)
la $s0, l
sw $s2, 0($s0)
la $s2, ae
lw $t4, 0($s2)
add $t4, $t4, $s5
la $s0, m
sw $t5, 0($s0)
la $t0, t
lw $t5, 0($t0)
add $t4, $t4, $t5
la $s0, n
sw $t6, 0($s0)
la $t2, u
lw $t6, 0($t2)
add $t4, $t4, $t6
la $s0, o
sw $t3, 0($s0)
la $t8, v
lw $t3, 0($t8)
add $t4, $t4, $t3
la $s0, p
sw $s3, 0($s0)
la $t7, w
lw $s3, 0($t7)
add $t4, $t4, $s3
la $s0, q
sw $s6, 0($s0)
la $t1, x
lw $s6, 0($t1)
add $t4, $t4, $s6
la $s0, r
sw $s1, 0($s0)
la $t9, y
lw $s1, 0($t9)
add $t4, $t4, $s1
la $s0, s
sw $s5, 0($s0)
la $s4, z
lw $s5, 0($s4)
add $t4, $t4, $s5
sw $t4, 0($s2)
la $t4, aa
lw $s2, 0($t4)
la $s0, t
sw $t5, 0($s0)
la $t5, ae
lw $t0, 0($t5)
add $t0, $t0, $s2
la $s0, u
sw $t6, 0($s0)
la $t2, ab
lw $t6, 0($t2)
add $t0, $t0, $t6
la $s0, v
sw $t3, 0($s0)
la $t3, ad
lw $t8, 0($t3)
add $t8, $t8, $t0
la $s0, w
sw $s3, 0($s0)
la $t7, c
lw $s3, 0($t7)
move $t1, $s3
la $s0, x
sw $s6, 0($s0)
la $s6, d
lw $t9, 0($s6)
add $t1, $t1, $t9
la $s0, y
sw $s1, 0($s0)
la $s1, e
lw $s4, 0($s1)
add $t1, $t1, $s4
la $s0, z
sw $s5, 0($s0)
la $s5, f
lw $t4, 0($s5)
add $t1, $t1, $t4
la $s0, aa
sw $s2, 0($s0)
sw $t0, 0($t5)
la $s2, g
lw $t0, 0($s2)
add $t1, $t1, $t0
la $t5, h
lw $t2, 0($t5)
add $t1, $t1, $t2
la $s0, ab
sw $t6, 0($s0)
sw $t8, 0($t3)
la $t6, i
lw $t8, 0($t6)
add $t1, $t1, $t8
la $t3, j
lw $t7, 0($t3)
add $t1, $t1, $t7
la $s0, c
sw $s3, 0($s0)
la $s0, af
sw $t1, 0($s0)
la $s3, k
lw $t1, 0($s3)
la $s0, d
sw $t9, 0($s0)
la $t9, af
lw $s6, 0($t9)
add $s6, $s6, $t1
la $s0, e
sw $s4, 0($s0)
la $s1, l
lw $s4, 0($s1)
add $s6, $s6, $s4
la $s0, f
sw $t4, 0($s0)
la $s5, m
lw $t4, 0($s5)
add $s6, $s6, $t4
la $s0, g
sw $t0, 0($s0)
la $s2, n
lw $t0, 0($s2)
add $s6, $s6, $t0
la $s0, h
sw $t2, 0($s0)
la $t5, o
lw $t2, 0($t5)
add $s6, $s6, $t2
la $s0, i
sw $t8, 0($s0)
la $t6, p
lw $t8, 0($t6)
add $s6, $s6, $t8
la $s0, j
sw $t7, 0($s0)
la $t3, q
lw $t7, 0($t3)
add $s6, $s6, $t7
la $s0, k
sw $t1, 0($s0)
la $s3, r
lw $t1, 0($s3)
add $s6, $s6, $t1
sw $s6, 0($t9)
la $s6, s
lw $t9, 0($s6)
la $s0, l
sw $s4, 0($s0)
la $s4, af
lw $s1, 0($s4)
add $s1, $s1, $t9
la $s0, m
sw $t4, 0($s0)
la $s5, t
lw $t4, 0($s5)
add $s1, $s1, $t4
la $s0, n
sw $t0, 0($s0)
la $s2, u
lw $t0, 0($s2)
add $s1, $s1, $t0
la $s0, o
sw $t2, 0($s0)
la $t5, v
lw $t2, 0($t5)
add $s1, $s1, $t2
la $s0, p
sw $t8, 0($s0)
la $t6, w
lw $t8, 0($t6)
add $s1, $s1, $t8
la $s0, q
sw $t7, 0($s0)
la $t3, x
lw $t7, 0($t3)
add $s1, $s1, $t7
la $s0, r
sw $t1, 0($s0)
la $s3, y
lw $t1, 0($s3)
add $s1, $s1, $t1
la $s0, s
sw $t9, 0($s0)
la $s6, z
lw $t9, 0($s6)
add $s1, $s1, $t9
sw $s1, 0($s4)
la $s1, aa
lw $s4, 0($s1)
la $s0, t
sw $t4, 0($s0)
la $t4, af
lw $s5, 0($t4)
add $s5, $s5, $s4
la $s0, u
sw $t0, 0($s0)
la $s2, ab
lw $t0, 0($s2)
add $s5, $s5, $t0
la $s0, v
sw $t2, 0($s0)
la $t2, ad
lw $t5, 0($t2)
add $t5, $t5, $s5
la $s0, w
sw $t8, 0($s0)
la $t6, c
lw $t8, 0($t6)
move $t3, $t8
la $s0, x
sw $t7, 0($s0)
la $t7, d
lw $s3, 0($t7)
add $t3, $t3, $s3
la $s0, y
sw $t1, 0($s0)
la $t1, e
lw $s6, 0($t1)
add $t3, $t3, $s6
la $s0, z
sw $t9, 0($s0)
la $t9, f
lw $s1, 0($t9)
add $t3, $t3, $s1
la $s0, aa
sw $s4, 0($s0)
sw $s5, 0($t4)
la $s4, g
lw $s5, 0($s4)
add $t3, $t3, $s5
la $t4, h
lw $s2, 0($t4)
add $t3, $t3, $s2
la $s0, ab
sw $t0, 0($s0)
sw $t5, 0($t2)
la $t0, i
lw $t5, 0($t0)
add $t3, $t3, $t5
la $t2, j
lw $t6, 0($t2)
add $t3, $t3, $t6
la $s0, c
sw $t8, 0($s0)
la $s0, ag
sw $t3, 0($s0)
la $t8, k
lw $t3, 0($t8)
la $s0, d
sw $s3, 0($s0)
la $s3, ag
lw $t7, 0($s3)
add $t7, $t7, $t3
la $s0, e
sw $s6, 0($s0)
la $t1, l
lw $s6, 0($t1)
add $t7, $t7, $s6
la $s0, f
sw $s1, 0($s0)
la $t9, m
lw $s1, 0($t9)
add $t7, $t7, $s1
la $s0, g
sw $s5, 0($s0)
la $s4, n
lw $s5, 0($s4)
add $t7, $t7, $s5
la $s0, h
sw $s2, 0($s0)
la $t4, o
lw $s2, 0($t4)
add $t7, $t7, $s2
la $s0, i
sw $t5, 0($s0)
la $t0, p
lw $t5, 0($t0)
add $t7, $t7, $t5
la $s0, j
sw $t6, 0($s0)
la $t2, q
lw $t6, 0($t2)
add $t7, $t7, $t6
la $s0, k
sw $t3, 0($s0)
la $t8, r
lw $t3, 0($t8)
add $t7, $t7, $t3
sw $t7, 0($s3)
la $t7, s
lw $s3, 0($t7)
la $s0, l
sw $s6, 0($s0)
la $s6, ag
lw $t1, 0($s6)
add $t1, $t1, $s3
la $s0, m
sw $s1, 0($s0)
la $t9, t
lw $s1, 0($t9)
add $t1, $t1, $s1
la $s0, n
sw $s5, 0($s0)
la $s4, u
lw $s5, 0($s4)
add $t1, $t1, $s5
la $s0, o
sw $s2, 0($s0)
la $t4, v
lw $s2, 0($t4)
add $t1, $t1, $s2
la $s0, p
sw $t5, 0($s0)
la $t0, w
lw $t5, 0($t0)
add $t1, $t1, $t5
la $s0, q
sw $t6, 0($s0)
la $t2, x
lw $t6, 0($t2)
add $t1, $t1, $t6
la $s0, r
sw $t3, 0($s0)
la $t8, y
lw $t3, 0($t8)
add $t1, $t1, $t3
la $s0, s
sw $s3, 0($s0)
la $t7, z
lw $s3, 0($t7)
add $t1, $t1, $s3
sw $t1, 0($s6)
la $t1, aa
lw $s6, 0($t1)
la $s0, t
sw $s1, 0($s0)
la $s1, ag
lw $t9, 0($s1)
add $t9, $t9, $s6
la $s0, u
sw $s5, 0($s0)
la $s4, ab
lw $s5, 0($s4)
add $t9, $t9, $s5
la $s0, v
sw $s2, 0($s0)
la $s2, ad
lw $t4, 0($s2)
add $t4, $t4, $t9
li $v0, 1
move $a0, $t4
syscall
