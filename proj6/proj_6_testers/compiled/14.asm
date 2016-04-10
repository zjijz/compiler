.data
h:	.word	0	# f in original
j:	.word	0	# h in original
x:	.word	0	# v in original
i:	.word	0	# g in original
u:	.word	0	# s in original
ab:	.word	0	# z in original
r:	.word	0	# p in original
f:	.word	0	# d in original
ae:	.word	0	# temp_c in original
af:	.word	0	# temp_d in original
aa:	.word	0	# y in original
ac:	.word	0	# temp_b in original
e:	.word	0	# c in original
t:	.word	0	# r in original
n:	.word	0	# l in original
l:	.word	0	# j in original
s:	.word	0	# q in original
k:	.word	0	# i in original
p:	.word	0	# n in original
q:	.word	0	# o in original
ad:	.word	0	# temp_a in original
d:	.word	0	# b in original
m:	.word	0	# k in original
c:	.word	0	# a in original
g:	.word	0	# e in original
ag:	.word	0	# temp_e in original
y:	.word	0	# w in original
v:	.word	0	# t in original
z:	.word	0	# x in original
o:	.word	0	# m in original
w:	.word	0	# u in original
.text
li $v0, 5
syscall
la $t1, c
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $s1, d
lw $t4, 0($s1)
move $t4, $v0
li $v0, 5
syscall
la $t5, e
lw $t9, 0($t5)
move $t9, $v0
li $v0, 5
syscall
la $s3, f
lw $s2, 0($s3)
move $s2, $v0
li $v0, 5
syscall
la $t3, g
lw $t8, 0($t3)
move $t8, $v0
li $v0, 5
syscall
la $s6, h
lw $t0, 0($s6)
move $t0, $v0
li $v0, 5
syscall
la $t6, i
lw $s5, 0($t6)
move $s5, $v0
li $v0, 5
syscall
la $s4, j
lw $t7, 0($s4)
move $t7, $v0
li $v0, 5
syscall
la $s0, c
sw $t2, 0($s0)
la $t2, k
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $s0, d
sw $t4, 0($s0)
la $t4, l
lw $s1, 0($t4)
move $s1, $v0
li $v0, 5
syscall
la $s0, e
sw $t9, 0($s0)
la $t9, m
lw $t5, 0($t9)
move $t5, $v0
li $v0, 5
syscall
la $s0, f
sw $s2, 0($s0)
la $s2, n
lw $s3, 0($s2)
move $s3, $v0
li $v0, 5
syscall
la $s0, g
sw $t8, 0($s0)
la $t8, o
lw $t3, 0($t8)
move $t3, $v0
li $v0, 5
syscall
la $s0, h
sw $t0, 0($s0)
la $t0, p
lw $s6, 0($t0)
move $s6, $v0
li $v0, 5
syscall
la $s0, i
sw $s5, 0($s0)
la $s5, q
lw $t6, 0($s5)
move $t6, $v0
li $v0, 5
syscall
la $s0, j
sw $t7, 0($s0)
la $t7, r
lw $s4, 0($t7)
move $s4, $v0
li $v0, 5
syscall
la $s0, k
sw $t1, 0($s0)
la $t1, s
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $s0, l
sw $s1, 0($s0)
la $s1, t
lw $t4, 0($s1)
move $t4, $v0
li $v0, 5
syscall
la $s0, m
sw $t5, 0($s0)
la $t5, u
lw $t9, 0($t5)
move $t9, $v0
li $v0, 5
syscall
la $s0, n
sw $s3, 0($s0)
la $s3, v
lw $s2, 0($s3)
move $s2, $v0
li $v0, 5
syscall
la $s0, o
sw $t3, 0($s0)
la $t3, w
lw $t8, 0($t3)
move $t8, $v0
li $v0, 5
syscall
la $s0, p
sw $s6, 0($s0)
la $s6, x
lw $t0, 0($s6)
move $t0, $v0
li $v0, 5
syscall
la $s0, q
sw $t6, 0($s0)
la $t6, y
lw $s5, 0($t6)
move $s5, $v0
li $v0, 5
syscall
la $s0, r
sw $s4, 0($s0)
la $s4, z
lw $t7, 0($s4)
move $t7, $v0
li $v0, 5
syscall
la $s0, s
sw $t2, 0($s0)
la $t2, aa
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $s0, t
sw $t4, 0($s0)
la $t4, ab
lw $s1, 0($t4)
move $s1, $v0
la $s0, u
sw $t9, 0($s0)
la $t5, c
lw $t9, 0($t5)
move $s3, $t9
la $s0, v
sw $s2, 0($s0)
la $s2, d
lw $t3, 0($s2)
add $s3, $s3, $t3
la $s0, w
sw $t8, 0($s0)
la $t8, e
lw $s6, 0($t8)
add $s3, $s3, $s6
la $s0, x
sw $t0, 0($s0)
la $t0, f
lw $t6, 0($t0)
add $s3, $s3, $t6
la $s0, y
sw $s5, 0($s0)
la $s5, g
lw $s4, 0($s5)
add $s3, $s3, $s4
la $s0, z
sw $t7, 0($s0)
la $t7, h
lw $t2, 0($t7)
add $s3, $s3, $t2
la $s0, aa
sw $t1, 0($s0)
la $t1, i
lw $t4, 0($t1)
add $s3, $s3, $t4
la $s0, ab
sw $s1, 0($s0)
la $s1, j
lw $t5, 0($s1)
add $s3, $s3, $t5
la $s0, c
sw $t9, 0($s0)
la $s0, ac
sw $s3, 0($s0)
la $t9, k
lw $s3, 0($t9)
la $s0, d
sw $t3, 0($s0)
la $t3, ac
lw $s2, 0($t3)
add $s2, $s2, $s3
la $s0, e
sw $s6, 0($s0)
la $t8, l
lw $s6, 0($t8)
add $s2, $s2, $s6
la $s0, f
sw $t6, 0($s0)
la $t0, m
lw $t6, 0($t0)
add $s2, $s2, $t6
la $s0, g
sw $s4, 0($s0)
la $s5, n
lw $s4, 0($s5)
add $s2, $s2, $s4
la $s0, h
sw $t2, 0($s0)
la $t7, o
lw $t2, 0($t7)
add $s2, $s2, $t2
la $s0, i
sw $t4, 0($s0)
la $t1, p
lw $t4, 0($t1)
add $s2, $s2, $t4
la $s0, j
sw $t5, 0($s0)
la $s1, q
lw $t5, 0($s1)
add $s2, $s2, $t5
la $s0, k
sw $s3, 0($s0)
la $t9, r
lw $s3, 0($t9)
add $s2, $s2, $s3
sw $s2, 0($t3)
la $s2, s
lw $t3, 0($s2)
la $s0, l
sw $s6, 0($s0)
la $s6, ac
lw $t8, 0($s6)
add $t8, $t8, $t3
la $s0, m
sw $t6, 0($s0)
la $t0, t
lw $t6, 0($t0)
add $t8, $t8, $t6
la $s0, n
sw $s4, 0($s0)
la $s5, u
lw $s4, 0($s5)
add $t8, $t8, $s4
la $s0, o
sw $t2, 0($s0)
la $t7, v
lw $t2, 0($t7)
add $t8, $t8, $t2
la $s0, p
sw $t4, 0($s0)
la $t1, w
lw $t4, 0($t1)
add $t8, $t8, $t4
la $s0, q
sw $t5, 0($s0)
la $s1, x
lw $t5, 0($s1)
add $t8, $t8, $t5
la $s0, r
sw $s3, 0($s0)
la $t9, y
lw $s3, 0($t9)
add $t8, $t8, $s3
la $s0, s
sw $t3, 0($s0)
la $s2, z
lw $t3, 0($s2)
add $t8, $t8, $t3
sw $t8, 0($s6)
la $t8, aa
lw $s6, 0($t8)
la $s0, t
sw $t6, 0($s0)
la $t6, ac
lw $t0, 0($t6)
add $t0, $t0, $s6
la $s0, u
sw $s4, 0($s0)
la $s5, ab
lw $s4, 0($s5)
add $t0, $t0, $s4
move $t7, $t0
la $s0, v
sw $t2, 0($s0)
la $t2, c
lw $t1, 0($t2)
la $s0, w
sw $t4, 0($s0)
move $t4, $t1
la $s0, x
sw $t5, 0($s0)
la $s1, d
lw $t5, 0($s1)
add $t4, $t4, $t5
la $s0, y
sw $s3, 0($s0)
la $t9, e
lw $s3, 0($t9)
add $t4, $t4, $s3
la $s0, z
sw $t3, 0($s0)
la $s2, f
lw $t3, 0($s2)
add $t4, $t4, $t3
la $s0, aa
sw $s6, 0($s0)
la $t8, g
lw $s6, 0($t8)
add $t4, $t4, $s6
sw $t0, 0($t6)
la $t0, h
lw $t6, 0($t0)
add $t4, $t4, $t6
la $s0, ab
sw $s4, 0($s0)
la $s5, i
lw $s4, 0($s5)
add $t4, $t4, $s4
la $s0, ad
sw $t7, 0($s0)
la $t7, j
lw $t2, 0($t7)
add $t4, $t4, $t2
la $s0, c
sw $t1, 0($s0)
la $s0, ae
sw $t4, 0($s0)
la $t1, k
lw $t4, 0($t1)
la $s0, d
sw $t5, 0($s0)
la $t5, ae
lw $s1, 0($t5)
add $s1, $s1, $t4
la $s0, e
sw $s3, 0($s0)
la $t9, l
lw $s3, 0($t9)
add $s1, $s1, $s3
la $s0, f
sw $t3, 0($s0)
la $s2, m
lw $t3, 0($s2)
add $s1, $s1, $t3
la $s0, g
sw $s6, 0($s0)
la $t8, n
lw $s6, 0($t8)
add $s1, $s1, $s6
la $s0, h
sw $t6, 0($s0)
la $t0, o
lw $t6, 0($t0)
add $s1, $s1, $t6
la $s0, i
sw $s4, 0($s0)
la $s5, p
lw $s4, 0($s5)
add $s1, $s1, $s4
la $s0, j
sw $t2, 0($s0)
la $t7, q
lw $t2, 0($t7)
add $s1, $s1, $t2
la $s0, k
sw $t4, 0($s0)
la $t1, r
lw $t4, 0($t1)
add $s1, $s1, $t4
sw $s1, 0($t5)
la $s1, s
lw $t5, 0($s1)
la $s0, l
sw $s3, 0($s0)
la $s3, ae
lw $t9, 0($s3)
add $t9, $t9, $t5
la $s0, m
sw $t3, 0($s0)
la $s2, t
lw $t3, 0($s2)
add $t9, $t9, $t3
la $s0, n
sw $s6, 0($s0)
la $t8, u
lw $s6, 0($t8)
add $t9, $t9, $s6
la $s0, o
sw $t6, 0($s0)
la $t0, v
lw $t6, 0($t0)
add $t9, $t9, $t6
la $s0, p
sw $s4, 0($s0)
la $s5, w
lw $s4, 0($s5)
add $t9, $t9, $s4
la $s0, q
sw $t2, 0($s0)
la $t7, x
lw $t2, 0($t7)
add $t9, $t9, $t2
la $s0, r
sw $t4, 0($s0)
la $t1, y
lw $t4, 0($t1)
add $t9, $t9, $t4
la $s0, s
sw $t5, 0($s0)
la $s1, z
lw $t5, 0($s1)
add $t9, $t9, $t5
sw $t9, 0($s3)
la $t9, aa
lw $s3, 0($t9)
la $s0, t
sw $t3, 0($s0)
la $t3, ae
lw $s2, 0($t3)
add $s2, $s2, $s3
la $s0, u
sw $s6, 0($s0)
la $t8, ab
lw $s6, 0($t8)
add $s2, $s2, $s6
la $s0, v
sw $t6, 0($s0)
la $t6, ad
lw $t0, 0($t6)
add $t0, $t0, $s2
la $s0, w
sw $s4, 0($s0)
la $s5, c
lw $s4, 0($s5)
move $t7, $s4
la $s0, x
sw $t2, 0($s0)
la $t2, d
lw $t1, 0($t2)
add $t7, $t7, $t1
la $s0, y
sw $t4, 0($s0)
la $t4, e
lw $s1, 0($t4)
add $t7, $t7, $s1
la $s0, z
sw $t5, 0($s0)
la $t5, f
lw $t9, 0($t5)
add $t7, $t7, $t9
la $s0, aa
sw $s3, 0($s0)
sw $s2, 0($t3)
la $s3, g
lw $s2, 0($s3)
add $t7, $t7, $s2
la $t3, h
lw $t8, 0($t3)
add $t7, $t7, $t8
la $s0, ab
sw $s6, 0($s0)
sw $t0, 0($t6)
la $s6, i
lw $t0, 0($s6)
add $t7, $t7, $t0
la $t6, j
lw $s5, 0($t6)
add $t7, $t7, $s5
la $s0, c
sw $s4, 0($s0)
la $s0, af
sw $t7, 0($s0)
la $s4, k
lw $t7, 0($s4)
la $s0, d
sw $t1, 0($s0)
la $t1, af
lw $t2, 0($t1)
add $t2, $t2, $t7
la $s0, e
sw $s1, 0($s0)
la $t4, l
lw $s1, 0($t4)
add $t2, $t2, $s1
la $s0, f
sw $t9, 0($s0)
la $t5, m
lw $t9, 0($t5)
add $t2, $t2, $t9
la $s0, g
sw $s2, 0($s0)
la $s3, n
lw $s2, 0($s3)
add $t2, $t2, $s2
la $s0, h
sw $t8, 0($s0)
la $t3, o
lw $t8, 0($t3)
add $t2, $t2, $t8
la $s0, i
sw $t0, 0($s0)
la $s6, p
lw $t0, 0($s6)
add $t2, $t2, $t0
la $s0, j
sw $s5, 0($s0)
la $t6, q
lw $s5, 0($t6)
add $t2, $t2, $s5
la $s0, k
sw $t7, 0($s0)
la $s4, r
lw $t7, 0($s4)
add $t2, $t2, $t7
sw $t2, 0($t1)
la $t2, s
lw $t1, 0($t2)
la $s0, l
sw $s1, 0($s0)
la $s1, af
lw $t4, 0($s1)
add $t4, $t4, $t1
la $s0, m
sw $t9, 0($s0)
la $t5, t
lw $t9, 0($t5)
add $t4, $t4, $t9
la $s0, n
sw $s2, 0($s0)
la $s3, u
lw $s2, 0($s3)
add $t4, $t4, $s2
la $s0, o
sw $t8, 0($s0)
la $t3, v
lw $t8, 0($t3)
add $t4, $t4, $t8
la $s0, p
sw $t0, 0($s0)
la $s6, w
lw $t0, 0($s6)
add $t4, $t4, $t0
la $s0, q
sw $s5, 0($s0)
la $t6, x
lw $s5, 0($t6)
add $t4, $t4, $s5
la $s0, r
sw $t7, 0($s0)
la $s4, y
lw $t7, 0($s4)
add $t4, $t4, $t7
la $s0, s
sw $t1, 0($s0)
la $t2, z
lw $t1, 0($t2)
add $t4, $t4, $t1
sw $t4, 0($s1)
la $t4, aa
lw $s1, 0($t4)
la $s0, t
sw $t9, 0($s0)
la $t9, af
lw $t5, 0($t9)
add $t5, $t5, $s1
la $s0, u
sw $s2, 0($s0)
la $s3, ab
lw $s2, 0($s3)
add $t5, $t5, $s2
la $s0, v
sw $t8, 0($s0)
la $t8, ad
lw $t3, 0($t8)
add $t3, $t3, $t5
la $s0, w
sw $t0, 0($s0)
la $s6, c
lw $t0, 0($s6)
move $t6, $t0
la $s0, x
sw $s5, 0($s0)
la $s5, d
lw $s4, 0($s5)
add $t6, $t6, $s4
la $s0, y
sw $t7, 0($s0)
la $t7, e
lw $t2, 0($t7)
add $t6, $t6, $t2
la $s0, z
sw $t1, 0($s0)
la $t1, f
lw $t4, 0($t1)
add $t6, $t6, $t4
la $s0, aa
sw $s1, 0($s0)
sw $t5, 0($t9)
la $s1, g
lw $t5, 0($s1)
add $t6, $t6, $t5
la $t9, h
lw $s3, 0($t9)
add $t6, $t6, $s3
la $s0, ab
sw $s2, 0($s0)
sw $t3, 0($t8)
la $s2, i
lw $t3, 0($s2)
add $t6, $t6, $t3
la $t8, j
lw $s6, 0($t8)
add $t6, $t6, $s6
la $s0, c
sw $t0, 0($s0)
la $s0, ag
sw $t6, 0($s0)
la $t0, k
lw $t6, 0($t0)
la $s0, d
sw $s4, 0($s0)
la $s4, ag
lw $s5, 0($s4)
add $s5, $s5, $t6
la $s0, e
sw $t2, 0($s0)
la $t7, l
lw $t2, 0($t7)
add $s5, $s5, $t2
la $s0, f
sw $t4, 0($s0)
la $t1, m
lw $t4, 0($t1)
add $s5, $s5, $t4
la $s0, g
sw $t5, 0($s0)
la $s1, n
lw $t5, 0($s1)
add $s5, $s5, $t5
la $s0, h
sw $s3, 0($s0)
la $t9, o
lw $s3, 0($t9)
add $s5, $s5, $s3
la $s0, i
sw $t3, 0($s0)
la $s2, p
lw $t3, 0($s2)
add $s5, $s5, $t3
la $s0, j
sw $s6, 0($s0)
la $t8, q
lw $s6, 0($t8)
add $s5, $s5, $s6
la $s0, k
sw $t6, 0($s0)
la $t0, r
lw $t6, 0($t0)
add $s5, $s5, $t6
sw $s5, 0($s4)
la $s5, s
lw $s4, 0($s5)
la $s0, l
sw $t2, 0($s0)
la $t2, ag
lw $t7, 0($t2)
add $t7, $t7, $s4
la $s0, m
sw $t4, 0($s0)
la $t1, t
lw $t4, 0($t1)
add $t7, $t7, $t4
la $s0, n
sw $t5, 0($s0)
la $s1, u
lw $t5, 0($s1)
add $t7, $t7, $t5
la $s0, o
sw $s3, 0($s0)
la $t9, v
lw $s3, 0($t9)
add $t7, $t7, $s3
la $s0, p
sw $t3, 0($s0)
la $s2, w
lw $t3, 0($s2)
add $t7, $t7, $t3
la $s0, q
sw $s6, 0($s0)
la $t8, x
lw $s6, 0($t8)
add $t7, $t7, $s6
la $s0, r
sw $t6, 0($s0)
la $t0, y
lw $t6, 0($t0)
add $t7, $t7, $t6
la $s0, s
sw $s4, 0($s0)
la $s5, z
lw $s4, 0($s5)
add $t7, $t7, $s4
sw $t7, 0($t2)
la $t7, aa
lw $t2, 0($t7)
la $s0, t
sw $t4, 0($s0)
la $t4, ag
lw $t1, 0($t4)
add $t1, $t1, $t2
la $s0, u
sw $t5, 0($s0)
la $s1, ab
lw $t5, 0($s1)
add $t1, $t1, $t5
la $s0, v
sw $s3, 0($s0)
la $s3, ad
lw $t9, 0($s3)
add $t9, $t9, $t1
li $v0, 1
move $a0, $t9
syscall
