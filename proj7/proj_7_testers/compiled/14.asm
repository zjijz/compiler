.data
m:	.word	0	# k in original
k:	.word	0	# i in original
u:	.word	0	# s in original
e:	.word	0	# c in original
g:	.word	0	# e in original
q:	.word	0	# o in original
ag:	.word	0	# temp_e in original
z:	.word	0	# x in original
ab:	.word	0	# z in original
s:	.word	0	# q in original
w:	.word	0	# u in original
aa:	.word	0	# y in original
p:	.word	0	# n in original
ac:	.word	0	# temp_b in original
ad:	.word	0	# temp_a in original
l:	.word	0	# j in original
n:	.word	0	# l in original
t:	.word	0	# r in original
af:	.word	0	# temp_d in original
h:	.word	0	# f in original
d:	.word	0	# b in original
x:	.word	0	# v in original
o:	.word	0	# m in original
v:	.word	0	# t in original
i:	.word	0	# g in original
f:	.word	0	# d in original
c:	.word	0	# a in original
ae:	.word	0	# temp_c in original
y:	.word	0	# w in original
j:	.word	0	# h in original
r:	.word	0	# p in original
.text
li $v0, 5
syscall
la $s2, c
lw $t1, 0($s2)
move $t1, $v0
li $v0, 5
syscall
la $t3, d
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $t8, e
lw $s4, 0($t8)
move $s4, $v0
li $v0, 5
syscall
la $t0, f
lw $s6, 0($t0)
move $s6, $v0
li $v0, 5
syscall
la $t6, g
lw $s3, 0($t6)
move $s3, $v0
li $v0, 5
syscall
la $t5, h
lw $t4, 0($t5)
move $t4, $v0
li $v0, 5
syscall
la $s1, i
lw $s5, 0($s1)
move $s5, $v0
li $v0, 5
syscall
la $t2, j
lw $t9, 0($t2)
move $t9, $v0
li $v0, 5
syscall
la $s0, c
sw $t1, 0($s0)
la $t1, k
lw $s2, 0($t1)
move $s2, $v0
li $v0, 5
syscall
la $s0, d
sw $t7, 0($s0)
la $t7, l
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s0, e
sw $s4, 0($s0)
la $s4, m
lw $t8, 0($s4)
move $t8, $v0
li $v0, 5
syscall
la $s0, f
sw $s6, 0($s0)
la $s6, n
lw $t0, 0($s6)
move $t0, $v0
li $v0, 5
syscall
la $s0, g
sw $s3, 0($s0)
la $s3, o
lw $t6, 0($s3)
move $t6, $v0
li $v0, 5
syscall
la $s0, h
sw $t4, 0($s0)
la $t4, p
lw $t5, 0($t4)
move $t5, $v0
li $v0, 5
syscall
la $s0, i
sw $s5, 0($s0)
la $s5, q
lw $s1, 0($s5)
move $s1, $v0
li $v0, 5
syscall
la $s0, j
sw $t9, 0($s0)
la $t9, r
lw $t2, 0($t9)
move $t2, $v0
li $v0, 5
syscall
la $s0, k
sw $s2, 0($s0)
la $s2, s
lw $t1, 0($s2)
move $t1, $v0
li $v0, 5
syscall
la $s0, l
sw $t3, 0($s0)
la $t3, t
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s0, m
sw $t8, 0($s0)
la $t8, u
lw $s4, 0($t8)
move $s4, $v0
li $v0, 5
syscall
la $s0, n
sw $t0, 0($s0)
la $t0, v
lw $s6, 0($t0)
move $s6, $v0
li $v0, 5
syscall
la $s0, o
sw $t6, 0($s0)
la $t6, w
lw $s3, 0($t6)
move $s3, $v0
li $v0, 5
syscall
la $s0, p
sw $t5, 0($s0)
la $t5, x
lw $t4, 0($t5)
move $t4, $v0
li $v0, 5
syscall
la $s0, q
sw $s1, 0($s0)
la $s1, y
lw $s5, 0($s1)
move $s5, $v0
li $v0, 5
syscall
la $s0, r
sw $t2, 0($s0)
la $t2, z
lw $t9, 0($t2)
move $t9, $v0
li $v0, 5
syscall
la $s0, s
sw $t1, 0($s0)
la $t1, aa
lw $s2, 0($t1)
move $s2, $v0
li $v0, 5
syscall
la $s0, t
sw $t7, 0($s0)
la $t7, ab
lw $t3, 0($t7)
move $t3, $v0
la $s0, u
sw $s4, 0($s0)
la $t8, c
lw $s4, 0($t8)
move $t0, $s4
la $s0, v
sw $s6, 0($s0)
la $s6, d
lw $t6, 0($s6)
add $t0, $t0, $t6
la $s0, w
sw $s3, 0($s0)
la $s3, e
lw $t5, 0($s3)
add $t0, $t0, $t5
la $s0, x
sw $t4, 0($s0)
la $t4, f
lw $s1, 0($t4)
add $t0, $t0, $s1
la $s0, y
sw $s5, 0($s0)
la $s5, g
lw $t2, 0($s5)
add $t0, $t0, $t2
la $s0, z
sw $t9, 0($s0)
la $t9, h
lw $t1, 0($t9)
add $t0, $t0, $t1
la $s0, aa
sw $s2, 0($s0)
la $s2, i
lw $t7, 0($s2)
add $t0, $t0, $t7
la $s0, ab
sw $t3, 0($s0)
la $t3, j
lw $t8, 0($t3)
add $t0, $t0, $t8
la $s0, c
sw $s4, 0($s0)
la $s0, ac
sw $t0, 0($s0)
la $s4, k
lw $t0, 0($s4)
la $s0, d
sw $t6, 0($s0)
la $t6, ac
lw $s6, 0($t6)
add $s6, $s6, $t0
la $s0, e
sw $t5, 0($s0)
la $s3, l
lw $t5, 0($s3)
add $s6, $s6, $t5
la $s0, f
sw $s1, 0($s0)
la $t4, m
lw $s1, 0($t4)
add $s6, $s6, $s1
la $s0, g
sw $t2, 0($s0)
la $s5, n
lw $t2, 0($s5)
add $s6, $s6, $t2
la $s0, h
sw $t1, 0($s0)
la $t9, o
lw $t1, 0($t9)
add $s6, $s6, $t1
la $s0, i
sw $t7, 0($s0)
la $s2, p
lw $t7, 0($s2)
add $s6, $s6, $t7
la $s0, j
sw $t8, 0($s0)
la $t3, q
lw $t8, 0($t3)
add $s6, $s6, $t8
la $s0, k
sw $t0, 0($s0)
la $s4, r
lw $t0, 0($s4)
add $s6, $s6, $t0
sw $s6, 0($t6)
la $s6, s
lw $t6, 0($s6)
la $s0, l
sw $t5, 0($s0)
la $t5, ac
lw $s3, 0($t5)
add $s3, $s3, $t6
la $s0, m
sw $s1, 0($s0)
la $t4, t
lw $s1, 0($t4)
add $s3, $s3, $s1
la $s0, n
sw $t2, 0($s0)
la $s5, u
lw $t2, 0($s5)
add $s3, $s3, $t2
la $s0, o
sw $t1, 0($s0)
la $t9, v
lw $t1, 0($t9)
add $s3, $s3, $t1
la $s0, p
sw $t7, 0($s0)
la $s2, w
lw $t7, 0($s2)
add $s3, $s3, $t7
la $s0, q
sw $t8, 0($s0)
la $t3, x
lw $t8, 0($t3)
add $s3, $s3, $t8
la $s0, r
sw $t0, 0($s0)
la $s4, y
lw $t0, 0($s4)
add $s3, $s3, $t0
la $s0, s
sw $t6, 0($s0)
la $s6, z
lw $t6, 0($s6)
add $s3, $s3, $t6
sw $s3, 0($t5)
la $s3, aa
lw $t5, 0($s3)
la $s0, t
sw $s1, 0($s0)
la $s1, ac
lw $t4, 0($s1)
add $t4, $t4, $t5
la $s0, u
sw $t2, 0($s0)
la $s5, ab
lw $t2, 0($s5)
add $t4, $t4, $t2
move $t9, $t4
la $s0, v
sw $t1, 0($s0)
la $t1, c
lw $s2, 0($t1)
la $s0, w
sw $t7, 0($s0)
move $t7, $s2
la $s0, x
sw $t8, 0($s0)
la $t3, d
lw $t8, 0($t3)
add $t7, $t7, $t8
la $s0, y
sw $t0, 0($s0)
la $s4, e
lw $t0, 0($s4)
add $t7, $t7, $t0
la $s0, z
sw $t6, 0($s0)
la $s6, f
lw $t6, 0($s6)
add $t7, $t7, $t6
la $s0, aa
sw $t5, 0($s0)
la $s3, g
lw $t5, 0($s3)
add $t7, $t7, $t5
sw $t4, 0($s1)
la $t4, h
lw $s1, 0($t4)
add $t7, $t7, $s1
la $s0, ab
sw $t2, 0($s0)
la $s5, i
lw $t2, 0($s5)
add $t7, $t7, $t2
la $s0, ad
sw $t9, 0($s0)
la $t9, j
lw $t1, 0($t9)
add $t7, $t7, $t1
la $s0, c
sw $s2, 0($s0)
la $s0, ae
sw $t7, 0($s0)
la $s2, k
lw $t7, 0($s2)
la $s0, d
sw $t8, 0($s0)
la $t8, ae
lw $t3, 0($t8)
add $t3, $t3, $t7
la $s0, e
sw $t0, 0($s0)
la $s4, l
lw $t0, 0($s4)
add $t3, $t3, $t0
la $s0, f
sw $t6, 0($s0)
la $s6, m
lw $t6, 0($s6)
add $t3, $t3, $t6
la $s0, g
sw $t5, 0($s0)
la $s3, n
lw $t5, 0($s3)
add $t3, $t3, $t5
la $s0, h
sw $s1, 0($s0)
la $t4, o
lw $s1, 0($t4)
add $t3, $t3, $s1
la $s0, i
sw $t2, 0($s0)
la $s5, p
lw $t2, 0($s5)
add $t3, $t3, $t2
la $s0, j
sw $t1, 0($s0)
la $t9, q
lw $t1, 0($t9)
add $t3, $t3, $t1
la $s0, k
sw $t7, 0($s0)
la $s2, r
lw $t7, 0($s2)
add $t3, $t3, $t7
sw $t3, 0($t8)
la $t3, s
lw $t8, 0($t3)
la $s0, l
sw $t0, 0($s0)
la $t0, ae
lw $s4, 0($t0)
add $s4, $s4, $t8
la $s0, m
sw $t6, 0($s0)
la $s6, t
lw $t6, 0($s6)
add $s4, $s4, $t6
la $s0, n
sw $t5, 0($s0)
la $s3, u
lw $t5, 0($s3)
add $s4, $s4, $t5
la $s0, o
sw $s1, 0($s0)
la $t4, v
lw $s1, 0($t4)
add $s4, $s4, $s1
la $s0, p
sw $t2, 0($s0)
la $s5, w
lw $t2, 0($s5)
add $s4, $s4, $t2
la $s0, q
sw $t1, 0($s0)
la $t9, x
lw $t1, 0($t9)
add $s4, $s4, $t1
la $s0, r
sw $t7, 0($s0)
la $s2, y
lw $t7, 0($s2)
add $s4, $s4, $t7
la $s0, s
sw $t8, 0($s0)
la $t3, z
lw $t8, 0($t3)
add $s4, $s4, $t8
sw $s4, 0($t0)
la $s4, aa
lw $t0, 0($s4)
la $s0, t
sw $t6, 0($s0)
la $t6, ae
lw $s6, 0($t6)
add $s6, $s6, $t0
la $s0, u
sw $t5, 0($s0)
la $s3, ab
lw $t5, 0($s3)
add $s6, $s6, $t5
la $s0, v
sw $s1, 0($s0)
la $s1, ad
lw $t4, 0($s1)
add $t4, $t4, $s6
la $s0, w
sw $t2, 0($s0)
la $s5, c
lw $t2, 0($s5)
move $t9, $t2
la $s0, x
sw $t1, 0($s0)
la $t1, d
lw $s2, 0($t1)
add $t9, $t9, $s2
la $s0, y
sw $t7, 0($s0)
la $t7, e
lw $t3, 0($t7)
add $t9, $t9, $t3
la $s0, z
sw $t8, 0($s0)
la $t8, f
lw $s4, 0($t8)
add $t9, $t9, $s4
la $s0, aa
sw $t0, 0($s0)
sw $s6, 0($t6)
la $t0, g
lw $s6, 0($t0)
add $t9, $t9, $s6
la $t6, h
lw $s3, 0($t6)
add $t9, $t9, $s3
la $s0, ab
sw $t5, 0($s0)
sw $t4, 0($s1)
la $t5, i
lw $t4, 0($t5)
add $t9, $t9, $t4
la $s1, j
lw $s5, 0($s1)
add $t9, $t9, $s5
la $s0, c
sw $t2, 0($s0)
la $s0, af
sw $t9, 0($s0)
la $t2, k
lw $t9, 0($t2)
la $s0, d
sw $s2, 0($s0)
la $s2, af
lw $t1, 0($s2)
add $t1, $t1, $t9
la $s0, e
sw $t3, 0($s0)
la $t7, l
lw $t3, 0($t7)
add $t1, $t1, $t3
la $s0, f
sw $s4, 0($s0)
la $t8, m
lw $s4, 0($t8)
add $t1, $t1, $s4
la $s0, g
sw $s6, 0($s0)
la $t0, n
lw $s6, 0($t0)
add $t1, $t1, $s6
la $s0, h
sw $s3, 0($s0)
la $t6, o
lw $s3, 0($t6)
add $t1, $t1, $s3
la $s0, i
sw $t4, 0($s0)
la $t5, p
lw $t4, 0($t5)
add $t1, $t1, $t4
la $s0, j
sw $s5, 0($s0)
la $s1, q
lw $s5, 0($s1)
add $t1, $t1, $s5
la $s0, k
sw $t9, 0($s0)
la $t2, r
lw $t9, 0($t2)
add $t1, $t1, $t9
sw $t1, 0($s2)
la $t1, s
lw $s2, 0($t1)
la $s0, l
sw $t3, 0($s0)
la $t3, af
lw $t7, 0($t3)
add $t7, $t7, $s2
la $s0, m
sw $s4, 0($s0)
la $t8, t
lw $s4, 0($t8)
add $t7, $t7, $s4
la $s0, n
sw $s6, 0($s0)
la $t0, u
lw $s6, 0($t0)
add $t7, $t7, $s6
la $s0, o
sw $s3, 0($s0)
la $t6, v
lw $s3, 0($t6)
add $t7, $t7, $s3
la $s0, p
sw $t4, 0($s0)
la $t5, w
lw $t4, 0($t5)
add $t7, $t7, $t4
la $s0, q
sw $s5, 0($s0)
la $s1, x
lw $s5, 0($s1)
add $t7, $t7, $s5
la $s0, r
sw $t9, 0($s0)
la $t2, y
lw $t9, 0($t2)
add $t7, $t7, $t9
la $s0, s
sw $s2, 0($s0)
la $t1, z
lw $s2, 0($t1)
add $t7, $t7, $s2
sw $t7, 0($t3)
la $t7, aa
lw $t3, 0($t7)
la $s0, t
sw $s4, 0($s0)
la $s4, af
lw $t8, 0($s4)
add $t8, $t8, $t3
la $s0, u
sw $s6, 0($s0)
la $t0, ab
lw $s6, 0($t0)
add $t8, $t8, $s6
la $s0, v
sw $s3, 0($s0)
la $s3, ad
lw $t6, 0($s3)
add $t6, $t6, $t8
la $s0, w
sw $t4, 0($s0)
la $t5, c
lw $t4, 0($t5)
move $s1, $t4
la $s0, x
sw $s5, 0($s0)
la $s5, d
lw $t2, 0($s5)
add $s1, $s1, $t2
la $s0, y
sw $t9, 0($s0)
la $t9, e
lw $t1, 0($t9)
add $s1, $s1, $t1
la $s0, z
sw $s2, 0($s0)
la $s2, f
lw $t7, 0($s2)
add $s1, $s1, $t7
la $s0, aa
sw $t3, 0($s0)
sw $t8, 0($s4)
la $t3, g
lw $t8, 0($t3)
add $s1, $s1, $t8
la $s4, h
lw $t0, 0($s4)
add $s1, $s1, $t0
la $s0, ab
sw $s6, 0($s0)
sw $t6, 0($s3)
la $s6, i
lw $t6, 0($s6)
add $s1, $s1, $t6
la $s3, j
lw $t5, 0($s3)
add $s1, $s1, $t5
la $s0, c
sw $t4, 0($s0)
la $s0, ag
sw $s1, 0($s0)
la $t4, k
lw $s1, 0($t4)
la $s0, d
sw $t2, 0($s0)
la $t2, ag
lw $s5, 0($t2)
add $s5, $s5, $s1
la $s0, e
sw $t1, 0($s0)
la $t9, l
lw $t1, 0($t9)
add $s5, $s5, $t1
la $s0, f
sw $t7, 0($s0)
la $s2, m
lw $t7, 0($s2)
add $s5, $s5, $t7
la $s0, g
sw $t8, 0($s0)
la $t3, n
lw $t8, 0($t3)
add $s5, $s5, $t8
la $s0, h
sw $t0, 0($s0)
la $s4, o
lw $t0, 0($s4)
add $s5, $s5, $t0
la $s0, i
sw $t6, 0($s0)
la $s6, p
lw $t6, 0($s6)
add $s5, $s5, $t6
la $s0, j
sw $t5, 0($s0)
la $s3, q
lw $t5, 0($s3)
add $s5, $s5, $t5
la $s0, k
sw $s1, 0($s0)
la $t4, r
lw $s1, 0($t4)
add $s5, $s5, $s1
sw $s5, 0($t2)
la $s5, s
lw $t2, 0($s5)
la $s0, l
sw $t1, 0($s0)
la $t1, ag
lw $t9, 0($t1)
add $t9, $t9, $t2
la $s0, m
sw $t7, 0($s0)
la $s2, t
lw $t7, 0($s2)
add $t9, $t9, $t7
la $s0, n
sw $t8, 0($s0)
la $t3, u
lw $t8, 0($t3)
add $t9, $t9, $t8
la $s0, o
sw $t0, 0($s0)
la $s4, v
lw $t0, 0($s4)
add $t9, $t9, $t0
la $s0, p
sw $t6, 0($s0)
la $s6, w
lw $t6, 0($s6)
add $t9, $t9, $t6
la $s0, q
sw $t5, 0($s0)
la $s3, x
lw $t5, 0($s3)
add $t9, $t9, $t5
la $s0, r
sw $s1, 0($s0)
la $t4, y
lw $s1, 0($t4)
add $t9, $t9, $s1
la $s0, s
sw $t2, 0($s0)
la $s5, z
lw $t2, 0($s5)
add $t9, $t9, $t2
sw $t9, 0($t1)
la $t9, aa
lw $t1, 0($t9)
la $s0, t
sw $t7, 0($s0)
la $t7, ag
lw $s2, 0($t7)
add $s2, $s2, $t1
la $s0, u
sw $t8, 0($s0)
la $t3, ab
lw $t8, 0($t3)
add $s2, $s2, $t8
la $s0, v
sw $t0, 0($s0)
la $t0, ad
lw $s4, 0($t0)
add $s4, $s4, $s2
li $v0, 1
move $a0, $s4
syscall
