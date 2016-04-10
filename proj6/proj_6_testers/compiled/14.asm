.data
ab:	.word	0	# z in original
m:	.word	0	# k in original
ac:	.word	0	# temp_b in original
p:	.word	0	# n in original
f:	.word	0	# d in original
o:	.word	0	# m in original
e:	.word	0	# c in original
g:	.word	0	# e in original
h:	.word	0	# f in original
i:	.word	0	# g in original
af:	.word	0	# temp_d in original
v:	.word	0	# t in original
y:	.word	0	# w in original
z:	.word	0	# x in original
q:	.word	0	# o in original
k:	.word	0	# i in original
ag:	.word	0	# temp_e in original
t:	.word	0	# r in original
l:	.word	0	# j in original
d:	.word	0	# b in original
j:	.word	0	# h in original
ad:	.word	0	# temp_a in original
x:	.word	0	# v in original
n:	.word	0	# l in original
aa:	.word	0	# y in original
r:	.word	0	# p in original
u:	.word	0	# s in original
w:	.word	0	# u in original
c:	.word	0	# a in original
s:	.word	0	# q in original
ae:	.word	0	# temp_c in original
.text
li $v0, 5
syscall
la $t0, c
lw $t2, 0($t0)
move $t2, $v0
li $v0, 5
syscall
la $t4, d
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $s4, e
lw $s2, 0($s4)
move $s2, $v0
li $v0, 5
syscall
la $t3, f
lw $s1, 0($t3)
move $s1, $v0
li $v0, 5
syscall
la $s5, g
lw $s6, 0($s5)
move $s6, $v0
li $v0, 5
syscall
la $t5, h
lw $t6, 0($t5)
move $t6, $v0
li $v0, 5
syscall
la $t9, i
lw $s3, 0($t9)
move $s3, $v0
li $v0, 5
syscall
la $t7, j
lw $t8, 0($t7)
move $t8, $v0
li $v0, 5
syscall
la $s0, c
sw $t2, 0($s0)
la $t2, k
lw $t0, 0($t2)
move $t0, $v0
li $v0, 5
syscall
la $s0, d
sw $t1, 0($s0)
la $t1, l
lw $t4, 0($t1)
move $t4, $v0
li $v0, 5
syscall
la $s0, e
sw $s2, 0($s0)
la $s2, m
lw $s4, 0($s2)
move $s4, $v0
li $v0, 5
syscall
la $s0, f
sw $s1, 0($s0)
la $s1, n
lw $t3, 0($s1)
move $t3, $v0
li $v0, 5
syscall
la $s0, g
sw $s6, 0($s0)
la $s6, o
lw $s5, 0($s6)
move $s5, $v0
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
sw $s3, 0($s0)
la $s3, q
lw $t9, 0($s3)
move $t9, $v0
li $v0, 5
syscall
la $s0, j
sw $t8, 0($s0)
la $t8, r
lw $t7, 0($t8)
move $t7, $v0
li $v0, 5
syscall
la $s0, k
sw $t0, 0($s0)
la $t0, s
lw $t2, 0($t0)
move $t2, $v0
li $v0, 5
syscall
la $s0, l
sw $t4, 0($s0)
la $t4, t
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $s0, m
sw $s4, 0($s0)
la $s4, u
lw $s2, 0($s4)
move $s2, $v0
li $v0, 5
syscall
la $s0, n
sw $t3, 0($s0)
la $t3, v
lw $s1, 0($t3)
move $s1, $v0
li $v0, 5
syscall
la $s0, o
sw $s5, 0($s0)
la $s5, w
lw $s6, 0($s5)
move $s6, $v0
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
sw $t9, 0($s0)
la $t9, y
lw $s3, 0($t9)
move $s3, $v0
li $v0, 5
syscall
la $s0, r
sw $t7, 0($s0)
la $t7, z
lw $t8, 0($t7)
move $t8, $v0
li $v0, 5
syscall
la $s0, s
sw $t2, 0($s0)
la $t2, aa
lw $t0, 0($t2)
move $t0, $v0
li $v0, 5
syscall
la $s0, t
sw $t1, 0($s0)
la $t1, ab
lw $t4, 0($t1)
move $t4, $v0
la $s0, u
sw $s2, 0($s0)
la $s4, c
lw $s2, 0($s4)
move $t3, $s2
la $s0, v
sw $s1, 0($s0)
la $s1, d
lw $s5, 0($s1)
add $t3, $t3, $s5
la $s0, w
sw $s6, 0($s0)
la $s6, e
lw $t5, 0($s6)
add $t3, $t3, $t5
la $s0, x
sw $t6, 0($s0)
la $t6, f
lw $t9, 0($t6)
add $t3, $t3, $t9
la $s0, y
sw $s3, 0($s0)
la $s3, g
lw $t7, 0($s3)
add $t3, $t3, $t7
la $s0, z
sw $t8, 0($s0)
la $t8, h
lw $t2, 0($t8)
add $t3, $t3, $t2
la $s0, aa
sw $t0, 0($s0)
la $t0, i
lw $t1, 0($t0)
add $t3, $t3, $t1
la $s0, ab
sw $t4, 0($s0)
la $t4, j
lw $s4, 0($t4)
add $t3, $t3, $s4
la $s0, c
sw $s2, 0($s0)
la $s0, ac
sw $t3, 0($s0)
la $s2, k
lw $t3, 0($s2)
la $s0, d
sw $s5, 0($s0)
la $s5, ac
lw $s1, 0($s5)
add $s1, $s1, $t3
la $s0, e
sw $t5, 0($s0)
la $s6, l
lw $t5, 0($s6)
add $s1, $s1, $t5
la $s0, f
sw $t9, 0($s0)
la $t6, m
lw $t9, 0($t6)
add $s1, $s1, $t9
la $s0, g
sw $t7, 0($s0)
la $s3, n
lw $t7, 0($s3)
add $s1, $s1, $t7
la $s0, h
sw $t2, 0($s0)
la $t8, o
lw $t2, 0($t8)
add $s1, $s1, $t2
la $s0, i
sw $t1, 0($s0)
la $t0, p
lw $t1, 0($t0)
add $s1, $s1, $t1
la $s0, j
sw $s4, 0($s0)
la $t4, q
lw $s4, 0($t4)
add $s1, $s1, $s4
la $s0, k
sw $t3, 0($s0)
la $s2, r
lw $t3, 0($s2)
add $s1, $s1, $t3
sw $s1, 0($s5)
la $s1, s
lw $s5, 0($s1)
la $s0, l
sw $t5, 0($s0)
la $t5, ac
lw $s6, 0($t5)
add $s6, $s6, $s5
la $s0, m
sw $t9, 0($s0)
la $t6, t
lw $t9, 0($t6)
add $s6, $s6, $t9
la $s0, n
sw $t7, 0($s0)
la $s3, u
lw $t7, 0($s3)
add $s6, $s6, $t7
la $s0, o
sw $t2, 0($s0)
la $t8, v
lw $t2, 0($t8)
add $s6, $s6, $t2
la $s0, p
sw $t1, 0($s0)
la $t0, w
lw $t1, 0($t0)
add $s6, $s6, $t1
la $s0, q
sw $s4, 0($s0)
la $t4, x
lw $s4, 0($t4)
add $s6, $s6, $s4
la $s0, r
sw $t3, 0($s0)
la $s2, y
lw $t3, 0($s2)
add $s6, $s6, $t3
la $s0, s
sw $s5, 0($s0)
la $s1, z
lw $s5, 0($s1)
add $s6, $s6, $s5
sw $s6, 0($t5)
la $s6, aa
lw $t5, 0($s6)
la $s0, t
sw $t9, 0($s0)
la $t9, ac
lw $t6, 0($t9)
add $t6, $t6, $t5
la $s0, u
sw $t7, 0($s0)
la $s3, ab
lw $t7, 0($s3)
add $t6, $t6, $t7
move $t8, $t6
la $s0, v
sw $t2, 0($s0)
la $t2, c
lw $t0, 0($t2)
la $s0, w
sw $t1, 0($s0)
move $t1, $t0
la $s0, x
sw $s4, 0($s0)
la $t4, d
lw $s4, 0($t4)
add $t1, $t1, $s4
la $s0, y
sw $t3, 0($s0)
la $s2, e
lw $t3, 0($s2)
add $t1, $t1, $t3
la $s0, z
sw $s5, 0($s0)
la $s1, f
lw $s5, 0($s1)
add $t1, $t1, $s5
la $s0, aa
sw $t5, 0($s0)
la $s6, g
lw $t5, 0($s6)
add $t1, $t1, $t5
sw $t6, 0($t9)
la $t6, h
lw $t9, 0($t6)
add $t1, $t1, $t9
la $s0, ab
sw $t7, 0($s0)
la $s3, i
lw $t7, 0($s3)
add $t1, $t1, $t7
la $s0, ad
sw $t8, 0($s0)
la $t8, j
lw $t2, 0($t8)
add $t1, $t1, $t2
la $s0, c
sw $t0, 0($s0)
la $s0, ae
sw $t1, 0($s0)
la $t0, k
lw $t1, 0($t0)
la $s0, d
sw $s4, 0($s0)
la $s4, ae
lw $t4, 0($s4)
add $t4, $t4, $t1
la $s0, e
sw $t3, 0($s0)
la $s2, l
lw $t3, 0($s2)
add $t4, $t4, $t3
la $s0, f
sw $s5, 0($s0)
la $s1, m
lw $s5, 0($s1)
add $t4, $t4, $s5
la $s0, g
sw $t5, 0($s0)
la $s6, n
lw $t5, 0($s6)
add $t4, $t4, $t5
la $s0, h
sw $t9, 0($s0)
la $t6, o
lw $t9, 0($t6)
add $t4, $t4, $t9
la $s0, i
sw $t7, 0($s0)
la $s3, p
lw $t7, 0($s3)
add $t4, $t4, $t7
la $s0, j
sw $t2, 0($s0)
la $t8, q
lw $t2, 0($t8)
add $t4, $t4, $t2
la $s0, k
sw $t1, 0($s0)
la $t0, r
lw $t1, 0($t0)
add $t4, $t4, $t1
sw $t4, 0($s4)
la $t4, s
lw $s4, 0($t4)
la $s0, l
sw $t3, 0($s0)
la $t3, ae
lw $s2, 0($t3)
add $s2, $s2, $s4
la $s0, m
sw $s5, 0($s0)
la $s1, t
lw $s5, 0($s1)
add $s2, $s2, $s5
la $s0, n
sw $t5, 0($s0)
la $s6, u
lw $t5, 0($s6)
add $s2, $s2, $t5
la $s0, o
sw $t9, 0($s0)
la $t6, v
lw $t9, 0($t6)
add $s2, $s2, $t9
la $s0, p
sw $t7, 0($s0)
la $s3, w
lw $t7, 0($s3)
add $s2, $s2, $t7
la $s0, q
sw $t2, 0($s0)
la $t8, x
lw $t2, 0($t8)
add $s2, $s2, $t2
la $s0, r
sw $t1, 0($s0)
la $t0, y
lw $t1, 0($t0)
add $s2, $s2, $t1
la $s0, s
sw $s4, 0($s0)
la $t4, z
lw $s4, 0($t4)
add $s2, $s2, $s4
sw $s2, 0($t3)
la $s2, aa
lw $t3, 0($s2)
la $s0, t
sw $s5, 0($s0)
la $s5, ae
lw $s1, 0($s5)
add $s1, $s1, $t3
la $s0, u
sw $t5, 0($s0)
la $s6, ab
lw $t5, 0($s6)
add $s1, $s1, $t5
la $s0, v
sw $t9, 0($s0)
la $t9, ad
lw $t6, 0($t9)
add $t6, $t6, $s1
la $s0, w
sw $t7, 0($s0)
la $s3, c
lw $t7, 0($s3)
move $t8, $t7
la $s0, x
sw $t2, 0($s0)
la $t2, d
lw $t0, 0($t2)
add $t8, $t8, $t0
la $s0, y
sw $t1, 0($s0)
la $t1, e
lw $t4, 0($t1)
add $t8, $t8, $t4
la $s0, z
sw $s4, 0($s0)
la $s4, f
lw $s2, 0($s4)
add $t8, $t8, $s2
la $s0, aa
sw $t3, 0($s0)
sw $s1, 0($s5)
la $t3, g
lw $s1, 0($t3)
add $t8, $t8, $s1
la $s5, h
lw $s6, 0($s5)
add $t8, $t8, $s6
la $s0, ab
sw $t5, 0($s0)
sw $t6, 0($t9)
la $t5, i
lw $t6, 0($t5)
add $t8, $t8, $t6
la $t9, j
lw $s3, 0($t9)
add $t8, $t8, $s3
la $s0, c
sw $t7, 0($s0)
la $s0, af
sw $t8, 0($s0)
la $t7, k
lw $t8, 0($t7)
la $s0, d
sw $t0, 0($s0)
la $t0, af
lw $t2, 0($t0)
add $t2, $t2, $t8
la $s0, e
sw $t4, 0($s0)
la $t1, l
lw $t4, 0($t1)
add $t2, $t2, $t4
la $s0, f
sw $s2, 0($s0)
la $s4, m
lw $s2, 0($s4)
add $t2, $t2, $s2
la $s0, g
sw $s1, 0($s0)
la $t3, n
lw $s1, 0($t3)
add $t2, $t2, $s1
la $s0, h
sw $s6, 0($s0)
la $s5, o
lw $s6, 0($s5)
add $t2, $t2, $s6
la $s0, i
sw $t6, 0($s0)
la $t5, p
lw $t6, 0($t5)
add $t2, $t2, $t6
la $s0, j
sw $s3, 0($s0)
la $t9, q
lw $s3, 0($t9)
add $t2, $t2, $s3
la $s0, k
sw $t8, 0($s0)
la $t7, r
lw $t8, 0($t7)
add $t2, $t2, $t8
sw $t2, 0($t0)
la $t2, s
lw $t0, 0($t2)
la $s0, l
sw $t4, 0($s0)
la $t4, af
lw $t1, 0($t4)
add $t1, $t1, $t0
la $s0, m
sw $s2, 0($s0)
la $s4, t
lw $s2, 0($s4)
add $t1, $t1, $s2
la $s0, n
sw $s1, 0($s0)
la $t3, u
lw $s1, 0($t3)
add $t1, $t1, $s1
la $s0, o
sw $s6, 0($s0)
la $s5, v
lw $s6, 0($s5)
add $t1, $t1, $s6
la $s0, p
sw $t6, 0($s0)
la $t5, w
lw $t6, 0($t5)
add $t1, $t1, $t6
la $s0, q
sw $s3, 0($s0)
la $t9, x
lw $s3, 0($t9)
add $t1, $t1, $s3
la $s0, r
sw $t8, 0($s0)
la $t7, y
lw $t8, 0($t7)
add $t1, $t1, $t8
la $s0, s
sw $t0, 0($s0)
la $t2, z
lw $t0, 0($t2)
add $t1, $t1, $t0
sw $t1, 0($t4)
la $t1, aa
lw $t4, 0($t1)
la $s0, t
sw $s2, 0($s0)
la $s2, af
lw $s4, 0($s2)
add $s4, $s4, $t4
la $s0, u
sw $s1, 0($s0)
la $t3, ab
lw $s1, 0($t3)
add $s4, $s4, $s1
la $s0, v
sw $s6, 0($s0)
la $s6, ad
lw $s5, 0($s6)
add $s5, $s5, $s4
la $s0, w
sw $t6, 0($s0)
la $t5, c
lw $t6, 0($t5)
move $t9, $t6
la $s0, x
sw $s3, 0($s0)
la $s3, d
lw $t7, 0($s3)
add $t9, $t9, $t7
la $s0, y
sw $t8, 0($s0)
la $t8, e
lw $t2, 0($t8)
add $t9, $t9, $t2
la $s0, z
sw $t0, 0($s0)
la $t0, f
lw $t1, 0($t0)
add $t9, $t9, $t1
la $s0, aa
sw $t4, 0($s0)
sw $s4, 0($s2)
la $t4, g
lw $s4, 0($t4)
add $t9, $t9, $s4
la $s2, h
lw $t3, 0($s2)
add $t9, $t9, $t3
la $s0, ab
sw $s1, 0($s0)
sw $s5, 0($s6)
la $s1, i
lw $s5, 0($s1)
add $t9, $t9, $s5
la $s6, j
lw $t5, 0($s6)
add $t9, $t9, $t5
la $s0, c
sw $t6, 0($s0)
la $s0, ag
sw $t9, 0($s0)
la $t6, k
lw $t9, 0($t6)
la $s0, d
sw $t7, 0($s0)
la $t7, ag
lw $s3, 0($t7)
add $s3, $s3, $t9
la $s0, e
sw $t2, 0($s0)
la $t8, l
lw $t2, 0($t8)
add $s3, $s3, $t2
la $s0, f
sw $t1, 0($s0)
la $t0, m
lw $t1, 0($t0)
add $s3, $s3, $t1
la $s0, g
sw $s4, 0($s0)
la $t4, n
lw $s4, 0($t4)
add $s3, $s3, $s4
la $s0, h
sw $t3, 0($s0)
la $s2, o
lw $t3, 0($s2)
add $s3, $s3, $t3
la $s0, i
sw $s5, 0($s0)
la $s1, p
lw $s5, 0($s1)
add $s3, $s3, $s5
la $s0, j
sw $t5, 0($s0)
la $s6, q
lw $t5, 0($s6)
add $s3, $s3, $t5
la $s0, k
sw $t9, 0($s0)
la $t6, r
lw $t9, 0($t6)
add $s3, $s3, $t9
sw $s3, 0($t7)
la $s3, s
lw $t7, 0($s3)
la $s0, l
sw $t2, 0($s0)
la $t2, ag
lw $t8, 0($t2)
add $t8, $t8, $t7
la $s0, m
sw $t1, 0($s0)
la $t0, t
lw $t1, 0($t0)
add $t8, $t8, $t1
la $s0, n
sw $s4, 0($s0)
la $t4, u
lw $s4, 0($t4)
add $t8, $t8, $s4
la $s0, o
sw $t3, 0($s0)
la $s2, v
lw $t3, 0($s2)
add $t8, $t8, $t3
la $s0, p
sw $s5, 0($s0)
la $s1, w
lw $s5, 0($s1)
add $t8, $t8, $s5
la $s0, q
sw $t5, 0($s0)
la $s6, x
lw $t5, 0($s6)
add $t8, $t8, $t5
la $s0, r
sw $t9, 0($s0)
la $t6, y
lw $t9, 0($t6)
add $t8, $t8, $t9
la $s0, s
sw $t7, 0($s0)
la $s3, z
lw $t7, 0($s3)
add $t8, $t8, $t7
sw $t8, 0($t2)
la $t8, aa
lw $t2, 0($t8)
la $s0, t
sw $t1, 0($s0)
la $t1, ag
lw $t0, 0($t1)
add $t0, $t0, $t2
la $s0, u
sw $s4, 0($s0)
la $t4, ab
lw $s4, 0($t4)
add $t0, $t0, $s4
la $s0, v
sw $t3, 0($s0)
la $t3, ad
lw $s2, 0($t3)
add $s2, $s2, $t0
li $v0, 1
move $a0, $s2
syscall
