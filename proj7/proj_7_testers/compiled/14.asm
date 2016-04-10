.data
p:	.word	0	# n in original
af:	.word	0	# temp_d in original
z:	.word	0	# x in original
v:	.word	0	# t in original
ac:	.word	0	# temp_b in original
y:	.word	0	# w in original
w:	.word	0	# u in original
ad:	.word	0	# temp_a in original
ag:	.word	0	# temp_e in original
c:	.word	0	# a in original
i:	.word	0	# g in original
l:	.word	0	# j in original
f:	.word	0	# d in original
t:	.word	0	# r in original
d:	.word	0	# b in original
aa:	.word	0	# y in original
x:	.word	0	# v in original
g:	.word	0	# e in original
n:	.word	0	# l in original
m:	.word	0	# k in original
o:	.word	0	# m in original
q:	.word	0	# o in original
s:	.word	0	# q in original
e:	.word	0	# c in original
r:	.word	0	# p in original
j:	.word	0	# h in original
ae:	.word	0	# temp_c in original
h:	.word	0	# f in original
ab:	.word	0	# z in original
u:	.word	0	# s in original
k:	.word	0	# i in original
.text
li $v0, 5
syscall
la $s4, c
lw $s3, 0($s4)
move $s3, $v0
li $v0, 5
syscall
la $t3, d
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $t0, e
lw $t6, 0($t0)
move $t6, $v0
li $v0, 5
syscall
la $s2, f
lw $t1, 0($s2)
move $t1, $v0
li $v0, 5
syscall
la $t5, g
lw $s6, 0($t5)
move $s6, $v0
li $v0, 5
syscall
la $t9, h
lw $t2, 0($t9)
move $t2, $v0
li $v0, 5
syscall
la $s5, i
lw $s1, 0($s5)
move $s1, $v0
li $v0, 5
syscall
la $t8, j
lw $t4, 0($t8)
move $t4, $v0
li $v0, 5
syscall
la $s0, c
sw $s3, 0($s0)
la $s3, k
lw $s4, 0($s3)
move $s4, $v0
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
sw $t6, 0($s0)
la $t6, m
lw $t0, 0($t6)
move $t0, $v0
li $v0, 5
syscall
la $s0, f
sw $t1, 0($s0)
la $t1, n
lw $s2, 0($t1)
move $s2, $v0
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
sw $t2, 0($s0)
la $t2, p
lw $t9, 0($t2)
move $t9, $v0
li $v0, 5
syscall
la $s0, i
sw $s1, 0($s0)
la $s1, q
lw $s5, 0($s1)
move $s5, $v0
li $v0, 5
syscall
la $s0, j
sw $t4, 0($s0)
la $t4, r
lw $t8, 0($t4)
move $t8, $v0
li $v0, 5
syscall
la $s0, k
sw $s4, 0($s0)
la $s4, s
lw $s3, 0($s4)
move $s3, $v0
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
sw $t0, 0($s0)
la $t0, u
lw $t6, 0($t0)
move $t6, $v0
li $v0, 5
syscall
la $s0, n
sw $s2, 0($s0)
la $s2, v
lw $t1, 0($s2)
move $t1, $v0
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
sw $t9, 0($s0)
la $t9, x
lw $t2, 0($t9)
move $t2, $v0
li $v0, 5
syscall
la $s0, q
sw $s5, 0($s0)
la $s5, y
lw $s1, 0($s5)
move $s1, $v0
li $v0, 5
syscall
la $s0, r
sw $t8, 0($s0)
la $t8, z
lw $t4, 0($t8)
move $t4, $v0
li $v0, 5
syscall
la $s0, s
sw $s3, 0($s0)
la $s3, aa
lw $s4, 0($s3)
move $s4, $v0
li $v0, 5
syscall
la $s0, t
sw $t7, 0($s0)
la $t7, ab
lw $t3, 0($t7)
move $t3, $v0
la $s0, u
sw $t6, 0($s0)
la $t0, c
lw $t6, 0($t0)
move $s2, $t6
la $s0, v
sw $t1, 0($s0)
la $t1, d
lw $t5, 0($t1)
add $s2, $s2, $t5
la $s0, w
sw $s6, 0($s0)
la $s6, e
lw $t9, 0($s6)
add $s2, $s2, $t9
la $s0, x
sw $t2, 0($s0)
la $t2, f
lw $s5, 0($t2)
add $s2, $s2, $s5
la $s0, y
sw $s1, 0($s0)
la $s1, g
lw $t8, 0($s1)
add $s2, $s2, $t8
la $s0, z
sw $t4, 0($s0)
la $t4, h
lw $s3, 0($t4)
add $s2, $s2, $s3
la $s0, aa
sw $s4, 0($s0)
la $s4, i
lw $t7, 0($s4)
add $s2, $s2, $t7
la $s0, ab
sw $t3, 0($s0)
la $t3, j
lw $t0, 0($t3)
add $s2, $s2, $t0
la $s0, c
sw $t6, 0($s0)
la $s0, ac
sw $s2, 0($s0)
la $t6, k
lw $s2, 0($t6)
la $s0, d
sw $t5, 0($s0)
la $t5, ac
lw $t1, 0($t5)
add $t1, $t1, $s2
la $s0, e
sw $t9, 0($s0)
la $s6, l
lw $t9, 0($s6)
add $t1, $t1, $t9
la $s0, f
sw $s5, 0($s0)
la $t2, m
lw $s5, 0($t2)
add $t1, $t1, $s5
la $s0, g
sw $t8, 0($s0)
la $s1, n
lw $t8, 0($s1)
add $t1, $t1, $t8
la $s0, h
sw $s3, 0($s0)
la $t4, o
lw $s3, 0($t4)
add $t1, $t1, $s3
la $s0, i
sw $t7, 0($s0)
la $s4, p
lw $t7, 0($s4)
add $t1, $t1, $t7
la $s0, j
sw $t0, 0($s0)
la $t3, q
lw $t0, 0($t3)
add $t1, $t1, $t0
la $s0, k
sw $s2, 0($s0)
la $t6, r
lw $s2, 0($t6)
add $t1, $t1, $s2
sw $t1, 0($t5)
la $t1, s
lw $t5, 0($t1)
la $s0, l
sw $t9, 0($s0)
la $t9, ac
lw $s6, 0($t9)
add $s6, $s6, $t5
la $s0, m
sw $s5, 0($s0)
la $t2, t
lw $s5, 0($t2)
add $s6, $s6, $s5
la $s0, n
sw $t8, 0($s0)
la $s1, u
lw $t8, 0($s1)
add $s6, $s6, $t8
la $s0, o
sw $s3, 0($s0)
la $t4, v
lw $s3, 0($t4)
add $s6, $s6, $s3
la $s0, p
sw $t7, 0($s0)
la $s4, w
lw $t7, 0($s4)
add $s6, $s6, $t7
la $s0, q
sw $t0, 0($s0)
la $t3, x
lw $t0, 0($t3)
add $s6, $s6, $t0
la $s0, r
sw $s2, 0($s0)
la $t6, y
lw $s2, 0($t6)
add $s6, $s6, $s2
la $s0, s
sw $t5, 0($s0)
la $t1, z
lw $t5, 0($t1)
add $s6, $s6, $t5
sw $s6, 0($t9)
la $s6, aa
lw $t9, 0($s6)
la $s0, t
sw $s5, 0($s0)
la $s5, ac
lw $t2, 0($s5)
add $t2, $t2, $t9
la $s0, u
sw $t8, 0($s0)
la $s1, ab
lw $t8, 0($s1)
add $t2, $t2, $t8
move $t4, $t2
la $s0, v
sw $s3, 0($s0)
la $s3, c
lw $s4, 0($s3)
la $s0, w
sw $t7, 0($s0)
move $t7, $s4
la $s0, x
sw $t0, 0($s0)
la $t3, d
lw $t0, 0($t3)
add $t7, $t7, $t0
la $s0, y
sw $s2, 0($s0)
la $t6, e
lw $s2, 0($t6)
add $t7, $t7, $s2
la $s0, z
sw $t5, 0($s0)
la $t1, f
lw $t5, 0($t1)
add $t7, $t7, $t5
la $s0, aa
sw $t9, 0($s0)
la $s6, g
lw $t9, 0($s6)
add $t7, $t7, $t9
sw $t2, 0($s5)
la $t2, h
lw $s5, 0($t2)
add $t7, $t7, $s5
la $s0, ab
sw $t8, 0($s0)
la $s1, i
lw $t8, 0($s1)
add $t7, $t7, $t8
la $s0, ad
sw $t4, 0($s0)
la $t4, j
lw $s3, 0($t4)
add $t7, $t7, $s3
la $s0, c
sw $s4, 0($s0)
la $s0, ae
sw $t7, 0($s0)
la $s4, k
lw $t7, 0($s4)
la $s0, d
sw $t0, 0($s0)
la $t0, ae
lw $t3, 0($t0)
add $t3, $t3, $t7
la $s0, e
sw $s2, 0($s0)
la $t6, l
lw $s2, 0($t6)
add $t3, $t3, $s2
la $s0, f
sw $t5, 0($s0)
la $t1, m
lw $t5, 0($t1)
add $t3, $t3, $t5
la $s0, g
sw $t9, 0($s0)
la $s6, n
lw $t9, 0($s6)
add $t3, $t3, $t9
la $s0, h
sw $s5, 0($s0)
la $t2, o
lw $s5, 0($t2)
add $t3, $t3, $s5
la $s0, i
sw $t8, 0($s0)
la $s1, p
lw $t8, 0($s1)
add $t3, $t3, $t8
la $s0, j
sw $s3, 0($s0)
la $t4, q
lw $s3, 0($t4)
add $t3, $t3, $s3
la $s0, k
sw $t7, 0($s0)
la $s4, r
lw $t7, 0($s4)
add $t3, $t3, $t7
sw $t3, 0($t0)
la $t3, s
lw $t0, 0($t3)
la $s0, l
sw $s2, 0($s0)
la $s2, ae
lw $t6, 0($s2)
add $t6, $t6, $t0
la $s0, m
sw $t5, 0($s0)
la $t1, t
lw $t5, 0($t1)
add $t6, $t6, $t5
la $s0, n
sw $t9, 0($s0)
la $s6, u
lw $t9, 0($s6)
add $t6, $t6, $t9
la $s0, o
sw $s5, 0($s0)
la $t2, v
lw $s5, 0($t2)
add $t6, $t6, $s5
la $s0, p
sw $t8, 0($s0)
la $s1, w
lw $t8, 0($s1)
add $t6, $t6, $t8
la $s0, q
sw $s3, 0($s0)
la $t4, x
lw $s3, 0($t4)
add $t6, $t6, $s3
la $s0, r
sw $t7, 0($s0)
la $s4, y
lw $t7, 0($s4)
add $t6, $t6, $t7
la $s0, s
sw $t0, 0($s0)
la $t3, z
lw $t0, 0($t3)
add $t6, $t6, $t0
sw $t6, 0($s2)
la $t6, aa
lw $s2, 0($t6)
la $s0, t
sw $t5, 0($s0)
la $t5, ae
lw $t1, 0($t5)
add $t1, $t1, $s2
la $s0, u
sw $t9, 0($s0)
la $s6, ab
lw $t9, 0($s6)
add $t1, $t1, $t9
la $s0, v
sw $s5, 0($s0)
la $s5, ad
lw $t2, 0($s5)
add $t2, $t2, $t1
la $s0, w
sw $t8, 0($s0)
la $s1, c
lw $t8, 0($s1)
move $t4, $t8
la $s0, x
sw $s3, 0($s0)
la $s3, d
lw $s4, 0($s3)
add $t4, $t4, $s4
la $s0, y
sw $t7, 0($s0)
la $t7, e
lw $t3, 0($t7)
add $t4, $t4, $t3
la $s0, z
sw $t0, 0($s0)
la $t0, f
lw $t6, 0($t0)
add $t4, $t4, $t6
la $s0, aa
sw $s2, 0($s0)
sw $t1, 0($t5)
la $s2, g
lw $t1, 0($s2)
add $t4, $t4, $t1
la $t5, h
lw $s6, 0($t5)
add $t4, $t4, $s6
la $s0, ab
sw $t9, 0($s0)
sw $t2, 0($s5)
la $t9, i
lw $t2, 0($t9)
add $t4, $t4, $t2
la $s5, j
lw $s1, 0($s5)
add $t4, $t4, $s1
la $s0, c
sw $t8, 0($s0)
la $s0, af
sw $t4, 0($s0)
la $t8, k
lw $t4, 0($t8)
la $s0, d
sw $s4, 0($s0)
la $s4, af
lw $s3, 0($s4)
add $s3, $s3, $t4
la $s0, e
sw $t3, 0($s0)
la $t7, l
lw $t3, 0($t7)
add $s3, $s3, $t3
la $s0, f
sw $t6, 0($s0)
la $t0, m
lw $t6, 0($t0)
add $s3, $s3, $t6
la $s0, g
sw $t1, 0($s0)
la $s2, n
lw $t1, 0($s2)
add $s3, $s3, $t1
la $s0, h
sw $s6, 0($s0)
la $t5, o
lw $s6, 0($t5)
add $s3, $s3, $s6
la $s0, i
sw $t2, 0($s0)
la $t9, p
lw $t2, 0($t9)
add $s3, $s3, $t2
la $s0, j
sw $s1, 0($s0)
la $s5, q
lw $s1, 0($s5)
add $s3, $s3, $s1
la $s0, k
sw $t4, 0($s0)
la $t8, r
lw $t4, 0($t8)
add $s3, $s3, $t4
sw $s3, 0($s4)
la $s3, s
lw $s4, 0($s3)
la $s0, l
sw $t3, 0($s0)
la $t3, af
lw $t7, 0($t3)
add $t7, $t7, $s4
la $s0, m
sw $t6, 0($s0)
la $t0, t
lw $t6, 0($t0)
add $t7, $t7, $t6
la $s0, n
sw $t1, 0($s0)
la $s2, u
lw $t1, 0($s2)
add $t7, $t7, $t1
la $s0, o
sw $s6, 0($s0)
la $t5, v
lw $s6, 0($t5)
add $t7, $t7, $s6
la $s0, p
sw $t2, 0($s0)
la $t9, w
lw $t2, 0($t9)
add $t7, $t7, $t2
la $s0, q
sw $s1, 0($s0)
la $s5, x
lw $s1, 0($s5)
add $t7, $t7, $s1
la $s0, r
sw $t4, 0($s0)
la $t8, y
lw $t4, 0($t8)
add $t7, $t7, $t4
la $s0, s
sw $s4, 0($s0)
la $s3, z
lw $s4, 0($s3)
add $t7, $t7, $s4
sw $t7, 0($t3)
la $t7, aa
lw $t3, 0($t7)
la $s0, t
sw $t6, 0($s0)
la $t6, af
lw $t0, 0($t6)
add $t0, $t0, $t3
la $s0, u
sw $t1, 0($s0)
la $s2, ab
lw $t1, 0($s2)
add $t0, $t0, $t1
la $s0, v
sw $s6, 0($s0)
la $s6, ad
lw $t5, 0($s6)
add $t5, $t5, $t0
la $s0, w
sw $t2, 0($s0)
la $t9, c
lw $t2, 0($t9)
move $s5, $t2
la $s0, x
sw $s1, 0($s0)
la $s1, d
lw $t8, 0($s1)
add $s5, $s5, $t8
la $s0, y
sw $t4, 0($s0)
la $t4, e
lw $s3, 0($t4)
add $s5, $s5, $s3
la $s0, z
sw $s4, 0($s0)
la $s4, f
lw $t7, 0($s4)
add $s5, $s5, $t7
la $s0, aa
sw $t3, 0($s0)
sw $t0, 0($t6)
la $t3, g
lw $t0, 0($t3)
add $s5, $s5, $t0
la $t6, h
lw $s2, 0($t6)
add $s5, $s5, $s2
la $s0, ab
sw $t1, 0($s0)
sw $t5, 0($s6)
la $t1, i
lw $t5, 0($t1)
add $s5, $s5, $t5
la $s6, j
lw $t9, 0($s6)
add $s5, $s5, $t9
la $s0, c
sw $t2, 0($s0)
la $s0, ag
sw $s5, 0($s0)
la $t2, k
lw $s5, 0($t2)
la $s0, d
sw $t8, 0($s0)
la $t8, ag
lw $s1, 0($t8)
add $s1, $s1, $s5
la $s0, e
sw $s3, 0($s0)
la $t4, l
lw $s3, 0($t4)
add $s1, $s1, $s3
la $s0, f
sw $t7, 0($s0)
la $s4, m
lw $t7, 0($s4)
add $s1, $s1, $t7
la $s0, g
sw $t0, 0($s0)
la $t3, n
lw $t0, 0($t3)
add $s1, $s1, $t0
la $s0, h
sw $s2, 0($s0)
la $t6, o
lw $s2, 0($t6)
add $s1, $s1, $s2
la $s0, i
sw $t5, 0($s0)
la $t1, p
lw $t5, 0($t1)
add $s1, $s1, $t5
la $s0, j
sw $t9, 0($s0)
la $s6, q
lw $t9, 0($s6)
add $s1, $s1, $t9
la $s0, k
sw $s5, 0($s0)
la $t2, r
lw $s5, 0($t2)
add $s1, $s1, $s5
sw $s1, 0($t8)
la $s1, s
lw $t8, 0($s1)
la $s0, l
sw $s3, 0($s0)
la $s3, ag
lw $t4, 0($s3)
add $t4, $t4, $t8
la $s0, m
sw $t7, 0($s0)
la $s4, t
lw $t7, 0($s4)
add $t4, $t4, $t7
la $s0, n
sw $t0, 0($s0)
la $t3, u
lw $t0, 0($t3)
add $t4, $t4, $t0
la $s0, o
sw $s2, 0($s0)
la $t6, v
lw $s2, 0($t6)
add $t4, $t4, $s2
la $s0, p
sw $t5, 0($s0)
la $t1, w
lw $t5, 0($t1)
add $t4, $t4, $t5
la $s0, q
sw $t9, 0($s0)
la $s6, x
lw $t9, 0($s6)
add $t4, $t4, $t9
la $s0, r
sw $s5, 0($s0)
la $t2, y
lw $s5, 0($t2)
add $t4, $t4, $s5
la $s0, s
sw $t8, 0($s0)
la $s1, z
lw $t8, 0($s1)
add $t4, $t4, $t8
sw $t4, 0($s3)
la $t4, aa
lw $s3, 0($t4)
la $s0, t
sw $t7, 0($s0)
la $t7, ag
lw $s4, 0($t7)
add $s4, $s4, $s3
la $s0, u
sw $t0, 0($s0)
la $t3, ab
lw $t0, 0($t3)
add $s4, $s4, $t0
la $s0, v
sw $s2, 0($s0)
la $s2, ad
lw $t6, 0($s2)
add $t6, $t6, $s4
li $v0, 1
move $a0, $t6
syscall
