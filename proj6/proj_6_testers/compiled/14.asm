.data
y:	.word	0	# w in original
j:	.word	0	# h in original
x:	.word	0	# v in original
g:	.word	0	# e in original
z:	.word	0	# x in original
w:	.word	0	# u in original
t:	.word	0	# r in original
k:	.word	0	# i in original
ae:	.word	0	# temp_c in original
p:	.word	0	# n in original
ag:	.word	0	# temp_e in original
n:	.word	0	# l in original
aa:	.word	0	# y in original
v:	.word	0	# t in original
q:	.word	0	# o in original
ac:	.word	0	# temp_b in original
r:	.word	0	# p in original
ad:	.word	0	# temp_a in original
o:	.word	0	# m in original
m:	.word	0	# k in original
l:	.word	0	# j in original
s:	.word	0	# q in original
c:	.word	0	# a in original
f:	.word	0	# d in original
e:	.word	0	# c in original
d:	.word	0	# b in original
af:	.word	0	# temp_d in original
i:	.word	0	# g in original
u:	.word	0	# s in original
h:	.word	0	# f in original
ab:	.word	0	# z in original
.text
li $v0, 5
syscall
la $t4, c
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
la $t8, d
lw $s6, 0($t8)
move $s6, $v0
li $v0, 5
syscall
la $t9, e
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $t5, f
lw $t6, 0($t5)
move $t6, $v0
li $v0, 5
syscall
la $s2, g
lw $t1, 0($s2)
move $t1, $v0
li $v0, 5
syscall
la $s3, h
lw $s4, 0($s3)
move $s4, $v0
li $v0, 5
syscall
la $s5, i
lw $t7, 0($s5)
move $t7, $v0
li $v0, 5
syscall
la $s1, j
lw $t3, 0($s1)
move $t3, $v0
li $v0, 5
syscall
la $s0, c
sw $t2, 0($s0)
la $t2, k
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s0, d
sw $s6, 0($s0)
la $s6, l
lw $t8, 0($s6)
move $t8, $v0
li $v0, 5
syscall
la $s0, e
sw $t0, 0($s0)
la $t0, m
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $s0, f
sw $t6, 0($s0)
la $t6, n
lw $t5, 0($t6)
move $t5, $v0
li $v0, 5
syscall
la $s0, g
sw $t1, 0($s0)
la $t1, o
lw $s2, 0($t1)
move $s2, $v0
li $v0, 5
syscall
la $s0, h
sw $s4, 0($s0)
la $s4, p
lw $s3, 0($s4)
move $s3, $v0
li $v0, 5
syscall
la $s0, i
sw $t7, 0($s0)
la $t7, q
lw $s5, 0($t7)
move $s5, $v0
li $v0, 5
syscall
la $s0, j
sw $t3, 0($s0)
la $t3, r
lw $s1, 0($t3)
move $s1, $v0
li $v0, 5
syscall
la $s0, k
sw $t4, 0($s0)
la $t4, s
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
la $s0, l
sw $t8, 0($s0)
la $t8, t
lw $s6, 0($t8)
move $s6, $v0
li $v0, 5
syscall
la $s0, m
sw $t9, 0($s0)
la $t9, u
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, n
sw $t5, 0($s0)
la $t5, v
lw $t6, 0($t5)
move $t6, $v0
li $v0, 5
syscall
la $s0, o
sw $s2, 0($s0)
la $s2, w
lw $t1, 0($s2)
move $t1, $v0
li $v0, 5
syscall
la $s0, p
sw $s3, 0($s0)
la $s3, x
lw $s4, 0($s3)
move $s4, $v0
li $v0, 5
syscall
la $s0, q
sw $s5, 0($s0)
la $s5, y
lw $t7, 0($s5)
move $t7, $v0
li $v0, 5
syscall
la $s0, r
sw $s1, 0($s0)
la $s1, z
lw $t3, 0($s1)
move $t3, $v0
li $v0, 5
syscall
la $s0, s
sw $t2, 0($s0)
la $t2, aa
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s0, t
sw $s6, 0($s0)
la $s6, ab
lw $t8, 0($s6)
move $t8, $v0
la $s0, u
sw $t0, 0($s0)
la $t9, c
lw $t0, 0($t9)
move $t5, $t0
la $s0, v
sw $t6, 0($s0)
la $t6, d
lw $s2, 0($t6)
add $t5, $t5, $s2
la $s0, w
sw $t1, 0($s0)
la $t1, e
lw $s3, 0($t1)
add $t5, $t5, $s3
la $s0, x
sw $s4, 0($s0)
la $s4, f
lw $s5, 0($s4)
add $t5, $t5, $s5
la $s0, y
sw $t7, 0($s0)
la $t7, g
lw $s1, 0($t7)
add $t5, $t5, $s1
la $s0, z
sw $t3, 0($s0)
la $t3, h
lw $t2, 0($t3)
add $t5, $t5, $t2
la $s0, aa
sw $t4, 0($s0)
la $t4, i
lw $s6, 0($t4)
add $t5, $t5, $s6
la $s0, ab
sw $t8, 0($s0)
la $t8, j
lw $t9, 0($t8)
add $t5, $t5, $t9
la $s0, c
sw $t0, 0($s0)
la $s0, ac
sw $t5, 0($s0)
la $t0, k
lw $t5, 0($t0)
la $s0, d
sw $s2, 0($s0)
la $s2, ac
lw $t6, 0($s2)
add $t6, $t6, $t5
la $s0, e
sw $s3, 0($s0)
la $t1, l
lw $s3, 0($t1)
add $t6, $t6, $s3
la $s0, f
sw $s5, 0($s0)
la $s4, m
lw $s5, 0($s4)
add $t6, $t6, $s5
la $s0, g
sw $s1, 0($s0)
la $t7, n
lw $s1, 0($t7)
add $t6, $t6, $s1
la $s0, h
sw $t2, 0($s0)
la $t3, o
lw $t2, 0($t3)
add $t6, $t6, $t2
la $s0, i
sw $s6, 0($s0)
la $t4, p
lw $s6, 0($t4)
add $t6, $t6, $s6
la $s0, j
sw $t9, 0($s0)
la $t8, q
lw $t9, 0($t8)
add $t6, $t6, $t9
la $s0, k
sw $t5, 0($s0)
la $t0, r
lw $t5, 0($t0)
add $t6, $t6, $t5
sw $t6, 0($s2)
la $t6, s
lw $s2, 0($t6)
la $s0, l
sw $s3, 0($s0)
la $s3, ac
lw $t1, 0($s3)
add $t1, $t1, $s2
la $s0, m
sw $s5, 0($s0)
la $s4, t
lw $s5, 0($s4)
add $t1, $t1, $s5
la $s0, n
sw $s1, 0($s0)
la $t7, u
lw $s1, 0($t7)
add $t1, $t1, $s1
la $s0, o
sw $t2, 0($s0)
la $t3, v
lw $t2, 0($t3)
add $t1, $t1, $t2
la $s0, p
sw $s6, 0($s0)
la $t4, w
lw $s6, 0($t4)
add $t1, $t1, $s6
la $s0, q
sw $t9, 0($s0)
la $t8, x
lw $t9, 0($t8)
add $t1, $t1, $t9
la $s0, r
sw $t5, 0($s0)
la $t0, y
lw $t5, 0($t0)
add $t1, $t1, $t5
la $s0, s
sw $s2, 0($s0)
la $t6, z
lw $s2, 0($t6)
add $t1, $t1, $s2
sw $t1, 0($s3)
la $t1, aa
lw $s3, 0($t1)
la $s0, t
sw $s5, 0($s0)
la $s5, ac
lw $s4, 0($s5)
add $s4, $s4, $s3
la $s0, u
sw $s1, 0($s0)
la $t7, ab
lw $s1, 0($t7)
add $s4, $s4, $s1
move $t3, $s4
la $s0, v
sw $t2, 0($s0)
la $t2, c
lw $t4, 0($t2)
la $s0, w
sw $s6, 0($s0)
move $s6, $t4
la $s0, x
sw $t9, 0($s0)
la $t8, d
lw $t9, 0($t8)
add $s6, $s6, $t9
la $s0, y
sw $t5, 0($s0)
la $t0, e
lw $t5, 0($t0)
add $s6, $s6, $t5
la $s0, z
sw $s2, 0($s0)
la $t6, f
lw $s2, 0($t6)
add $s6, $s6, $s2
la $s0, aa
sw $s3, 0($s0)
la $t1, g
lw $s3, 0($t1)
add $s6, $s6, $s3
sw $s4, 0($s5)
la $s4, h
lw $s5, 0($s4)
add $s6, $s6, $s5
la $s0, ab
sw $s1, 0($s0)
la $t7, i
lw $s1, 0($t7)
add $s6, $s6, $s1
la $s0, ad
sw $t3, 0($s0)
la $t3, j
lw $t2, 0($t3)
add $s6, $s6, $t2
la $s0, c
sw $t4, 0($s0)
la $s0, ae
sw $s6, 0($s0)
la $t4, k
lw $s6, 0($t4)
la $s0, d
sw $t9, 0($s0)
la $t9, ae
lw $t8, 0($t9)
add $t8, $t8, $s6
la $s0, e
sw $t5, 0($s0)
la $t0, l
lw $t5, 0($t0)
add $t8, $t8, $t5
la $s0, f
sw $s2, 0($s0)
la $t6, m
lw $s2, 0($t6)
add $t8, $t8, $s2
la $s0, g
sw $s3, 0($s0)
la $t1, n
lw $s3, 0($t1)
add $t8, $t8, $s3
la $s0, h
sw $s5, 0($s0)
la $s4, o
lw $s5, 0($s4)
add $t8, $t8, $s5
la $s0, i
sw $s1, 0($s0)
la $t7, p
lw $s1, 0($t7)
add $t8, $t8, $s1
la $s0, j
sw $t2, 0($s0)
la $t3, q
lw $t2, 0($t3)
add $t8, $t8, $t2
la $s0, k
sw $s6, 0($s0)
la $t4, r
lw $s6, 0($t4)
add $t8, $t8, $s6
sw $t8, 0($t9)
la $t8, s
lw $t9, 0($t8)
la $s0, l
sw $t5, 0($s0)
la $t5, ae
lw $t0, 0($t5)
add $t0, $t0, $t9
la $s0, m
sw $s2, 0($s0)
la $t6, t
lw $s2, 0($t6)
add $t0, $t0, $s2
la $s0, n
sw $s3, 0($s0)
la $t1, u
lw $s3, 0($t1)
add $t0, $t0, $s3
la $s0, o
sw $s5, 0($s0)
la $s4, v
lw $s5, 0($s4)
add $t0, $t0, $s5
la $s0, p
sw $s1, 0($s0)
la $t7, w
lw $s1, 0($t7)
add $t0, $t0, $s1
la $s0, q
sw $t2, 0($s0)
la $t3, x
lw $t2, 0($t3)
add $t0, $t0, $t2
la $s0, r
sw $s6, 0($s0)
la $t4, y
lw $s6, 0($t4)
add $t0, $t0, $s6
la $s0, s
sw $t9, 0($s0)
la $t8, z
lw $t9, 0($t8)
add $t0, $t0, $t9
sw $t0, 0($t5)
la $t0, aa
lw $t5, 0($t0)
la $s0, t
sw $s2, 0($s0)
la $s2, ae
lw $t6, 0($s2)
add $t6, $t6, $t5
la $s0, u
sw $s3, 0($s0)
la $t1, ab
lw $s3, 0($t1)
add $t6, $t6, $s3
la $s0, v
sw $s5, 0($s0)
la $s5, ad
lw $s4, 0($s5)
add $s4, $s4, $t6
la $s0, w
sw $s1, 0($s0)
la $t7, c
lw $s1, 0($t7)
move $t3, $s1
la $s0, x
sw $t2, 0($s0)
la $t2, d
lw $t4, 0($t2)
add $t3, $t3, $t4
la $s0, y
sw $s6, 0($s0)
la $s6, e
lw $t8, 0($s6)
add $t3, $t3, $t8
la $s0, z
sw $t9, 0($s0)
la $t9, f
lw $t0, 0($t9)
add $t3, $t3, $t0
la $s0, aa
sw $t5, 0($s0)
sw $t6, 0($s2)
la $t5, g
lw $t6, 0($t5)
add $t3, $t3, $t6
la $s2, h
lw $t1, 0($s2)
add $t3, $t3, $t1
la $s0, ab
sw $s3, 0($s0)
sw $s4, 0($s5)
la $s3, i
lw $s4, 0($s3)
add $t3, $t3, $s4
la $s5, j
lw $t7, 0($s5)
add $t3, $t3, $t7
la $s0, c
sw $s1, 0($s0)
la $s0, af
sw $t3, 0($s0)
la $s1, k
lw $t3, 0($s1)
la $s0, d
sw $t4, 0($s0)
la $t4, af
lw $t2, 0($t4)
add $t2, $t2, $t3
la $s0, e
sw $t8, 0($s0)
la $s6, l
lw $t8, 0($s6)
add $t2, $t2, $t8
la $s0, f
sw $t0, 0($s0)
la $t9, m
lw $t0, 0($t9)
add $t2, $t2, $t0
la $s0, g
sw $t6, 0($s0)
la $t5, n
lw $t6, 0($t5)
add $t2, $t2, $t6
la $s0, h
sw $t1, 0($s0)
la $s2, o
lw $t1, 0($s2)
add $t2, $t2, $t1
la $s0, i
sw $s4, 0($s0)
la $s3, p
lw $s4, 0($s3)
add $t2, $t2, $s4
la $s0, j
sw $t7, 0($s0)
la $s5, q
lw $t7, 0($s5)
add $t2, $t2, $t7
la $s0, k
sw $t3, 0($s0)
la $s1, r
lw $t3, 0($s1)
add $t2, $t2, $t3
sw $t2, 0($t4)
la $t2, s
lw $t4, 0($t2)
la $s0, l
sw $t8, 0($s0)
la $t8, af
lw $s6, 0($t8)
add $s6, $s6, $t4
la $s0, m
sw $t0, 0($s0)
la $t9, t
lw $t0, 0($t9)
add $s6, $s6, $t0
la $s0, n
sw $t6, 0($s0)
la $t5, u
lw $t6, 0($t5)
add $s6, $s6, $t6
la $s0, o
sw $t1, 0($s0)
la $s2, v
lw $t1, 0($s2)
add $s6, $s6, $t1
la $s0, p
sw $s4, 0($s0)
la $s3, w
lw $s4, 0($s3)
add $s6, $s6, $s4
la $s0, q
sw $t7, 0($s0)
la $s5, x
lw $t7, 0($s5)
add $s6, $s6, $t7
la $s0, r
sw $t3, 0($s0)
la $s1, y
lw $t3, 0($s1)
add $s6, $s6, $t3
la $s0, s
sw $t4, 0($s0)
la $t2, z
lw $t4, 0($t2)
add $s6, $s6, $t4
sw $s6, 0($t8)
la $s6, aa
lw $t8, 0($s6)
la $s0, t
sw $t0, 0($s0)
la $t0, af
lw $t9, 0($t0)
add $t9, $t9, $t8
la $s0, u
sw $t6, 0($s0)
la $t5, ab
lw $t6, 0($t5)
add $t9, $t9, $t6
la $s0, v
sw $t1, 0($s0)
la $t1, ad
lw $s2, 0($t1)
add $s2, $s2, $t9
la $s0, w
sw $s4, 0($s0)
la $s3, c
lw $s4, 0($s3)
move $s5, $s4
la $s0, x
sw $t7, 0($s0)
la $t7, d
lw $s1, 0($t7)
add $s5, $s5, $s1
la $s0, y
sw $t3, 0($s0)
la $t3, e
lw $t2, 0($t3)
add $s5, $s5, $t2
la $s0, z
sw $t4, 0($s0)
la $t4, f
lw $s6, 0($t4)
add $s5, $s5, $s6
la $s0, aa
sw $t8, 0($s0)
sw $t9, 0($t0)
la $t8, g
lw $t9, 0($t8)
add $s5, $s5, $t9
la $t0, h
lw $t5, 0($t0)
add $s5, $s5, $t5
la $s0, ab
sw $t6, 0($s0)
sw $s2, 0($t1)
la $t6, i
lw $s2, 0($t6)
add $s5, $s5, $s2
la $t1, j
lw $s3, 0($t1)
add $s5, $s5, $s3
la $s0, c
sw $s4, 0($s0)
la $s0, ag
sw $s5, 0($s0)
la $s4, k
lw $s5, 0($s4)
la $s0, d
sw $s1, 0($s0)
la $s1, ag
lw $t7, 0($s1)
add $t7, $t7, $s5
la $s0, e
sw $t2, 0($s0)
la $t3, l
lw $t2, 0($t3)
add $t7, $t7, $t2
la $s0, f
sw $s6, 0($s0)
la $t4, m
lw $s6, 0($t4)
add $t7, $t7, $s6
la $s0, g
sw $t9, 0($s0)
la $t8, n
lw $t9, 0($t8)
add $t7, $t7, $t9
la $s0, h
sw $t5, 0($s0)
la $t0, o
lw $t5, 0($t0)
add $t7, $t7, $t5
la $s0, i
sw $s2, 0($s0)
la $t6, p
lw $s2, 0($t6)
add $t7, $t7, $s2
la $s0, j
sw $s3, 0($s0)
la $t1, q
lw $s3, 0($t1)
add $t7, $t7, $s3
la $s0, k
sw $s5, 0($s0)
la $s4, r
lw $s5, 0($s4)
add $t7, $t7, $s5
sw $t7, 0($s1)
la $t7, s
lw $s1, 0($t7)
la $s0, l
sw $t2, 0($s0)
la $t2, ag
lw $t3, 0($t2)
add $t3, $t3, $s1
la $s0, m
sw $s6, 0($s0)
la $t4, t
lw $s6, 0($t4)
add $t3, $t3, $s6
la $s0, n
sw $t9, 0($s0)
la $t8, u
lw $t9, 0($t8)
add $t3, $t3, $t9
la $s0, o
sw $t5, 0($s0)
la $t0, v
lw $t5, 0($t0)
add $t3, $t3, $t5
la $s0, p
sw $s2, 0($s0)
la $t6, w
lw $s2, 0($t6)
add $t3, $t3, $s2
la $s0, q
sw $s3, 0($s0)
la $t1, x
lw $s3, 0($t1)
add $t3, $t3, $s3
la $s0, r
sw $s5, 0($s0)
la $s4, y
lw $s5, 0($s4)
add $t3, $t3, $s5
la $s0, s
sw $s1, 0($s0)
la $t7, z
lw $s1, 0($t7)
add $t3, $t3, $s1
sw $t3, 0($t2)
la $t3, aa
lw $t2, 0($t3)
la $s0, t
sw $s6, 0($s0)
la $s6, ag
lw $t4, 0($s6)
add $t4, $t4, $t2
la $s0, u
sw $t9, 0($s0)
la $t8, ab
lw $t9, 0($t8)
add $t4, $t4, $t9
la $s0, v
sw $t5, 0($s0)
la $t5, ad
lw $t0, 0($t5)
add $t0, $t0, $t4
li $v0, 1
move $a0, $t0
syscall
