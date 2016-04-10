.data
o:	.word	0	# m in original
k:	.word	0	# i in original
ac:	.word	0	# temp_b in original
u:	.word	0	# s in original
m:	.word	0	# k in original
v:	.word	0	# t in original
l:	.word	0	# j in original
t:	.word	0	# r in original
e:	.word	0	# c in original
p:	.word	0	# n in original
w:	.word	0	# u in original
j:	.word	0	# h in original
ad:	.word	0	# temp_a in original
aj:	.word	0	# temp_h in original
ag:	.word	0	# temp_e in original
z:	.word	0	# x in original
i:	.word	0	# g in original
ab:	.word	0	# z in original
ah:	.word	0	# temp_f in original
s:	.word	0	# q in original
n:	.word	0	# l in original
c:	.word	0	# a in original
h:	.word	0	# f in original
y:	.word	0	# w in original
f:	.word	0	# d in original
g:	.word	0	# e in original
x:	.word	0	# v in original
q:	.word	0	# o in original
af:	.word	0	# temp_d in original
aa:	.word	0	# y in original
d:	.word	0	# b in original
r:	.word	0	# p in original
ae:	.word	0	# temp_c in original
ai:	.word	0	# temp_g in original
.text
li $v0, 5
syscall
la $t0, c
lw $t8, 0($t0)
move $t8, $v0
li $v0, 5
syscall
la $t1, d
lw $s4, 0($t1)
move $s4, $v0
li $v0, 5
syscall
la $t9, e
lw $s6, 0($t9)
move $s6, $v0
li $v0, 5
syscall
la $s5, f
lw $t6, 0($s5)
move $t6, $v0
li $v0, 5
syscall
la $t3, g
lw $t4, 0($t3)
move $t4, $v0
li $v0, 5
syscall
la $t7, h
lw $s3, 0($t7)
move $s3, $v0
li $v0, 5
syscall
la $t2, i
lw $t5, 0($t2)
move $t5, $v0
li $v0, 5
syscall
la $s1, j
lw $s2, 0($s1)
move $s2, $v0
li $v0, 5
syscall
la $s0, c
sw $t8, 0($s0)
la $t8, k
lw $t0, 0($t8)
move $t0, $v0
li $v0, 5
syscall
la $s0, d
sw $s4, 0($s0)
la $s4, l
lw $t1, 0($s4)
move $t1, $v0
li $v0, 5
syscall
la $s0, e
sw $s6, 0($s0)
la $s6, m
lw $t9, 0($s6)
move $t9, $v0
li $v0, 5
syscall
la $s0, f
sw $t6, 0($s0)
la $t6, n
lw $s5, 0($t6)
move $s5, $v0
li $v0, 5
syscall
la $s0, g
sw $t4, 0($s0)
la $t4, o
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $s0, h
sw $s3, 0($s0)
la $s3, p
lw $t7, 0($s3)
move $t7, $v0
li $v0, 5
syscall
la $s0, i
sw $t5, 0($s0)
la $t5, q
lw $t2, 0($t5)
move $t2, $v0
li $v0, 5
syscall
la $s0, j
sw $s2, 0($s0)
la $s2, r
lw $s1, 0($s2)
move $s1, $v0
li $v0, 5
syscall
la $s0, k
sw $t0, 0($s0)
la $t0, s
lw $t8, 0($t0)
move $t8, $v0
li $v0, 5
syscall
la $s0, l
sw $t1, 0($s0)
la $t1, t
lw $s4, 0($t1)
move $s4, $v0
li $v0, 5
syscall
la $s0, m
sw $t9, 0($s0)
la $t9, u
lw $s6, 0($t9)
move $s6, $v0
li $v0, 5
syscall
la $s0, n
sw $s5, 0($s0)
la $s5, v
lw $t6, 0($s5)
move $t6, $v0
li $v0, 5
syscall
la $s0, o
sw $t3, 0($s0)
la $t3, w
lw $t4, 0($t3)
move $t4, $v0
li $v0, 5
syscall
la $s0, p
sw $t7, 0($s0)
la $t7, x
lw $s3, 0($t7)
move $s3, $v0
li $v0, 5
syscall
la $s0, q
sw $t2, 0($s0)
la $t2, y
lw $t5, 0($t2)
move $t5, $v0
li $v0, 5
syscall
la $s0, r
sw $s1, 0($s0)
la $s1, z
lw $s2, 0($s1)
move $s2, $v0
li $v0, 5
syscall
la $s0, s
sw $t8, 0($s0)
la $t8, aa
lw $t0, 0($t8)
move $t0, $v0
li $v0, 5
syscall
la $s0, t
sw $s4, 0($s0)
la $s4, ab
lw $t1, 0($s4)
move $t1, $v0
la $s0, u
sw $s6, 0($s0)
la $t9, c
lw $s6, 0($t9)
move $s5, $s6
la $s0, v
sw $t6, 0($s0)
la $t6, d
lw $t3, 0($t6)
add $s5, $s5, $t3
la $s0, w
sw $t4, 0($s0)
la $t4, e
lw $t7, 0($t4)
add $s5, $s5, $t7
la $s0, x
sw $s3, 0($s0)
la $s3, f
lw $t2, 0($s3)
add $s5, $s5, $t2
la $s0, y
sw $t5, 0($s0)
la $t5, g
lw $s1, 0($t5)
add $s5, $s5, $s1
la $s0, z
sw $s2, 0($s0)
la $s2, h
lw $t8, 0($s2)
add $s5, $s5, $t8
la $s0, aa
sw $t0, 0($s0)
la $t0, i
lw $s4, 0($t0)
add $s5, $s5, $s4
la $s0, ab
sw $t1, 0($s0)
la $t1, j
lw $t9, 0($t1)
add $s5, $s5, $t9
la $s0, c
sw $s6, 0($s0)
la $s0, ac
sw $s5, 0($s0)
la $s6, k
lw $s5, 0($s6)
la $s0, d
sw $t3, 0($s0)
la $t3, ac
lw $t6, 0($t3)
add $t6, $t6, $s5
la $s0, e
sw $t7, 0($s0)
la $t4, l
lw $t7, 0($t4)
add $t6, $t6, $t7
la $s0, f
sw $t2, 0($s0)
la $s3, m
lw $t2, 0($s3)
add $t6, $t6, $t2
la $s0, g
sw $s1, 0($s0)
la $t5, n
lw $s1, 0($t5)
add $t6, $t6, $s1
la $s0, h
sw $t8, 0($s0)
la $s2, o
lw $t8, 0($s2)
add $t6, $t6, $t8
la $s0, i
sw $s4, 0($s0)
la $t0, p
lw $s4, 0($t0)
add $t6, $t6, $s4
la $s0, j
sw $t9, 0($s0)
la $t1, q
lw $t9, 0($t1)
add $t6, $t6, $t9
la $s0, k
sw $s5, 0($s0)
la $s6, r
lw $s5, 0($s6)
add $t6, $t6, $s5
sw $t6, 0($t3)
la $t6, s
lw $t3, 0($t6)
la $s0, l
sw $t7, 0($s0)
la $t7, ac
lw $t4, 0($t7)
add $t4, $t4, $t3
la $s0, m
sw $t2, 0($s0)
la $s3, t
lw $t2, 0($s3)
add $t4, $t4, $t2
la $s0, n
sw $s1, 0($s0)
la $t5, u
lw $s1, 0($t5)
add $t4, $t4, $s1
la $s0, o
sw $t8, 0($s0)
la $s2, v
lw $t8, 0($s2)
add $t4, $t4, $t8
la $s0, p
sw $s4, 0($s0)
la $t0, w
lw $s4, 0($t0)
add $t4, $t4, $s4
la $s0, q
sw $t9, 0($s0)
la $t1, x
lw $t9, 0($t1)
add $t4, $t4, $t9
la $s0, r
sw $s5, 0($s0)
la $s6, y
lw $s5, 0($s6)
add $t4, $t4, $s5
la $s0, s
sw $t3, 0($s0)
la $t6, z
lw $t3, 0($t6)
add $t4, $t4, $t3
sw $t4, 0($t7)
la $t4, aa
lw $t7, 0($t4)
la $s0, t
sw $t2, 0($s0)
la $t2, ac
lw $s3, 0($t2)
add $s3, $s3, $t7
la $s0, u
sw $s1, 0($s0)
la $t5, ab
lw $s1, 0($t5)
add $s3, $s3, $s1
move $s2, $s3
la $s0, v
sw $t8, 0($s0)
la $t8, c
lw $t0, 0($t8)
la $s0, w
sw $s4, 0($s0)
move $s4, $t0
la $s0, x
sw $t9, 0($s0)
la $t1, d
lw $t9, 0($t1)
add $s4, $s4, $t9
la $s0, y
sw $s5, 0($s0)
la $s6, e
lw $s5, 0($s6)
add $s4, $s4, $s5
la $s0, z
sw $t3, 0($s0)
la $t6, f
lw $t3, 0($t6)
add $s4, $s4, $t3
la $s0, aa
sw $t7, 0($s0)
la $t4, g
lw $t7, 0($t4)
add $s4, $s4, $t7
sw $s3, 0($t2)
la $s3, h
lw $t2, 0($s3)
add $s4, $s4, $t2
la $s0, ab
sw $s1, 0($s0)
la $t5, i
lw $s1, 0($t5)
add $s4, $s4, $s1
la $s0, ad
sw $s2, 0($s0)
la $s2, j
lw $t8, 0($s2)
add $s4, $s4, $t8
la $s0, c
sw $t0, 0($s0)
la $s0, ae
sw $s4, 0($s0)
la $t0, k
lw $s4, 0($t0)
la $s0, d
sw $t9, 0($s0)
la $t9, ae
lw $t1, 0($t9)
add $t1, $t1, $s4
la $s0, e
sw $s5, 0($s0)
la $s6, l
lw $s5, 0($s6)
add $t1, $t1, $s5
la $s0, f
sw $t3, 0($s0)
la $t6, m
lw $t3, 0($t6)
add $t1, $t1, $t3
la $s0, g
sw $t7, 0($s0)
la $t4, n
lw $t7, 0($t4)
add $t1, $t1, $t7
la $s0, h
sw $t2, 0($s0)
la $s3, o
lw $t2, 0($s3)
add $t1, $t1, $t2
la $s0, i
sw $s1, 0($s0)
la $t5, p
lw $s1, 0($t5)
add $t1, $t1, $s1
la $s0, j
sw $t8, 0($s0)
la $s2, q
lw $t8, 0($s2)
add $t1, $t1, $t8
la $s0, k
sw $s4, 0($s0)
la $t0, r
lw $s4, 0($t0)
add $t1, $t1, $s4
sw $t1, 0($t9)
la $t1, s
lw $t9, 0($t1)
la $s0, l
sw $s5, 0($s0)
la $s5, ae
lw $s6, 0($s5)
add $s6, $s6, $t9
la $s0, m
sw $t3, 0($s0)
la $t6, t
lw $t3, 0($t6)
add $s6, $s6, $t3
la $s0, n
sw $t7, 0($s0)
la $t4, u
lw $t7, 0($t4)
add $s6, $s6, $t7
la $s0, o
sw $t2, 0($s0)
la $s3, v
lw $t2, 0($s3)
add $s6, $s6, $t2
la $s0, p
sw $s1, 0($s0)
la $t5, w
lw $s1, 0($t5)
add $s6, $s6, $s1
la $s0, q
sw $t8, 0($s0)
la $s2, x
lw $t8, 0($s2)
add $s6, $s6, $t8
la $s0, r
sw $s4, 0($s0)
la $t0, y
lw $s4, 0($t0)
add $s6, $s6, $s4
la $s0, s
sw $t9, 0($s0)
la $t1, z
lw $t9, 0($t1)
add $s6, $s6, $t9
sw $s6, 0($s5)
la $s6, aa
lw $s5, 0($s6)
la $s0, t
sw $t3, 0($s0)
la $t3, ae
lw $t6, 0($t3)
add $t6, $t6, $s5
la $s0, u
sw $t7, 0($s0)
la $t4, ab
lw $t7, 0($t4)
add $t6, $t6, $t7
la $s0, v
sw $t2, 0($s0)
la $t2, ad
lw $s3, 0($t2)
sub $s3, $s3, $t6
la $s0, w
sw $s1, 0($s0)
la $t5, c
lw $s1, 0($t5)
move $s2, $s1
la $s0, x
sw $t8, 0($s0)
la $t8, d
lw $t0, 0($t8)
add $s2, $s2, $t0
la $s0, y
sw $s4, 0($s0)
la $s4, e
lw $t1, 0($s4)
add $s2, $s2, $t1
la $s0, z
sw $t9, 0($s0)
la $t9, f
lw $s6, 0($t9)
add $s2, $s2, $s6
la $s0, aa
sw $s5, 0($s0)
sw $t6, 0($t3)
la $s5, g
lw $t6, 0($s5)
add $s2, $s2, $t6
la $t3, h
lw $t4, 0($t3)
add $s2, $s2, $t4
la $s0, ab
sw $t7, 0($s0)
sw $s3, 0($t2)
la $t7, i
lw $s3, 0($t7)
add $s2, $s2, $s3
la $t2, j
lw $t5, 0($t2)
add $s2, $s2, $t5
la $s0, c
sw $s1, 0($s0)
la $s0, af
sw $s2, 0($s0)
la $s1, k
lw $s2, 0($s1)
la $s0, d
sw $t0, 0($s0)
la $t0, af
lw $t8, 0($t0)
add $t8, $t8, $s2
la $s0, e
sw $t1, 0($s0)
la $s4, l
lw $t1, 0($s4)
add $t8, $t8, $t1
la $s0, f
sw $s6, 0($s0)
la $t9, m
lw $s6, 0($t9)
add $t8, $t8, $s6
la $s0, g
sw $t6, 0($s0)
la $s5, n
lw $t6, 0($s5)
add $t8, $t8, $t6
la $s0, h
sw $t4, 0($s0)
la $t3, o
lw $t4, 0($t3)
add $t8, $t8, $t4
la $s0, i
sw $s3, 0($s0)
la $t7, p
lw $s3, 0($t7)
add $t8, $t8, $s3
la $s0, j
sw $t5, 0($s0)
la $t2, q
lw $t5, 0($t2)
add $t8, $t8, $t5
la $s0, k
sw $s2, 0($s0)
la $s1, r
lw $s2, 0($s1)
add $t8, $t8, $s2
sw $t8, 0($t0)
la $t8, s
lw $t0, 0($t8)
la $s0, l
sw $t1, 0($s0)
la $t1, af
lw $s4, 0($t1)
add $s4, $s4, $t0
la $s0, m
sw $s6, 0($s0)
la $t9, t
lw $s6, 0($t9)
add $s4, $s4, $s6
la $s0, n
sw $t6, 0($s0)
la $s5, u
lw $t6, 0($s5)
add $s4, $s4, $t6
la $s0, o
sw $t4, 0($s0)
la $t3, v
lw $t4, 0($t3)
add $s4, $s4, $t4
la $s0, p
sw $s3, 0($s0)
la $t7, w
lw $s3, 0($t7)
add $s4, $s4, $s3
la $s0, q
sw $t5, 0($s0)
la $t2, x
lw $t5, 0($t2)
add $s4, $s4, $t5
la $s0, r
sw $s2, 0($s0)
la $s1, y
lw $s2, 0($s1)
add $s4, $s4, $s2
la $s0, s
sw $t0, 0($s0)
la $t8, z
lw $t0, 0($t8)
add $s4, $s4, $t0
sw $s4, 0($t1)
la $s4, aa
lw $t1, 0($s4)
la $s0, t
sw $s6, 0($s0)
la $s6, af
lw $t9, 0($s6)
add $t9, $t9, $t1
la $s0, u
sw $t6, 0($s0)
la $s5, ab
lw $t6, 0($s5)
add $t9, $t9, $t6
la $s0, v
sw $t4, 0($s0)
la $t4, ad
lw $t3, 0($t4)
add $t3, $t3, $t9
la $s0, w
sw $s3, 0($s0)
la $t7, c
lw $s3, 0($t7)
move $t2, $s3
la $s0, x
sw $t5, 0($s0)
la $t5, d
lw $s1, 0($t5)
add $t2, $t2, $s1
la $s0, y
sw $s2, 0($s0)
la $s2, e
lw $t8, 0($s2)
add $t2, $t2, $t8
la $s0, z
sw $t0, 0($s0)
la $t0, f
lw $s4, 0($t0)
add $t2, $t2, $s4
la $s0, aa
sw $t1, 0($s0)
sw $t9, 0($s6)
la $t1, g
lw $t9, 0($t1)
add $t2, $t2, $t9
la $s6, h
lw $s5, 0($s6)
add $t2, $t2, $s5
la $s0, ab
sw $t6, 0($s0)
sw $t3, 0($t4)
la $t6, i
lw $t3, 0($t6)
add $t2, $t2, $t3
la $t4, j
lw $t7, 0($t4)
add $t2, $t2, $t7
la $s0, c
sw $s3, 0($s0)
la $s0, ag
sw $t2, 0($s0)
la $s3, k
lw $t2, 0($s3)
la $s0, d
sw $s1, 0($s0)
la $s1, ag
lw $t5, 0($s1)
add $t5, $t5, $t2
la $s0, e
sw $t8, 0($s0)
la $s2, l
lw $t8, 0($s2)
add $t5, $t5, $t8
la $s0, f
sw $s4, 0($s0)
la $t0, m
lw $s4, 0($t0)
add $t5, $t5, $s4
la $s0, g
sw $t9, 0($s0)
la $t1, n
lw $t9, 0($t1)
add $t5, $t5, $t9
la $s0, h
sw $s5, 0($s0)
la $s6, o
lw $s5, 0($s6)
add $t5, $t5, $s5
la $s0, i
sw $t3, 0($s0)
la $t6, p
lw $t3, 0($t6)
add $t5, $t5, $t3
la $s0, j
sw $t7, 0($s0)
la $t4, q
lw $t7, 0($t4)
add $t5, $t5, $t7
la $s0, k
sw $t2, 0($s0)
la $s3, r
lw $t2, 0($s3)
add $t5, $t5, $t2
sw $t5, 0($s1)
la $t5, s
lw $s1, 0($t5)
la $s0, l
sw $t8, 0($s0)
la $t8, ag
lw $s2, 0($t8)
add $s2, $s2, $s1
la $s0, m
sw $s4, 0($s0)
la $t0, t
lw $s4, 0($t0)
add $s2, $s2, $s4
la $s0, n
sw $t9, 0($s0)
la $t1, u
lw $t9, 0($t1)
add $s2, $s2, $t9
la $s0, o
sw $s5, 0($s0)
la $s6, v
lw $s5, 0($s6)
add $s2, $s2, $s5
la $s0, p
sw $t3, 0($s0)
la $t6, w
lw $t3, 0($t6)
add $s2, $s2, $t3
la $s0, q
sw $t7, 0($s0)
la $t4, x
lw $t7, 0($t4)
add $s2, $s2, $t7
la $s0, r
sw $t2, 0($s0)
la $s3, y
lw $t2, 0($s3)
add $s2, $s2, $t2
la $s0, s
sw $s1, 0($s0)
la $t5, z
lw $s1, 0($t5)
add $s2, $s2, $s1
sw $s2, 0($t8)
la $s2, aa
lw $t8, 0($s2)
la $s0, t
sw $s4, 0($s0)
la $s4, ag
lw $t0, 0($s4)
add $t0, $t0, $t8
la $s0, u
sw $t9, 0($s0)
la $t1, ab
lw $t9, 0($t1)
add $t0, $t0, $t9
la $s0, v
sw $s5, 0($s0)
la $s5, ad
lw $s6, 0($s5)
sub $s6, $s6, $t0
la $s0, w
sw $t3, 0($s0)
la $t6, c
lw $t3, 0($t6)
move $t4, $t3
la $s0, x
sw $t7, 0($s0)
la $t7, d
lw $s3, 0($t7)
add $t4, $t4, $s3
la $s0, y
sw $t2, 0($s0)
la $t2, e
lw $t5, 0($t2)
add $t4, $t4, $t5
la $s0, z
sw $s1, 0($s0)
la $s1, f
lw $s2, 0($s1)
add $t4, $t4, $s2
la $s0, aa
sw $t8, 0($s0)
sw $t0, 0($s4)
la $t8, g
lw $t0, 0($t8)
add $t4, $t4, $t0
la $s4, h
lw $t1, 0($s4)
add $t4, $t4, $t1
la $s0, ab
sw $t9, 0($s0)
sw $s6, 0($s5)
la $t9, i
lw $s6, 0($t9)
add $t4, $t4, $s6
la $s5, j
lw $t6, 0($s5)
add $t4, $t4, $t6
la $s0, c
sw $t3, 0($s0)
la $s0, ah
sw $t4, 0($s0)
la $t3, k
lw $t4, 0($t3)
la $s0, d
sw $s3, 0($s0)
la $s3, ah
lw $t7, 0($s3)
add $t7, $t7, $t4
la $s0, e
sw $t5, 0($s0)
la $t2, l
lw $t5, 0($t2)
add $t7, $t7, $t5
la $s0, f
sw $s2, 0($s0)
la $s1, m
lw $s2, 0($s1)
add $t7, $t7, $s2
la $s0, g
sw $t0, 0($s0)
la $t8, n
lw $t0, 0($t8)
add $t7, $t7, $t0
la $s0, h
sw $t1, 0($s0)
la $s4, o
lw $t1, 0($s4)
add $t7, $t7, $t1
la $s0, i
sw $s6, 0($s0)
la $t9, p
lw $s6, 0($t9)
add $t7, $t7, $s6
la $s0, j
sw $t6, 0($s0)
la $s5, q
lw $t6, 0($s5)
add $t7, $t7, $t6
la $s0, k
sw $t4, 0($s0)
la $t3, r
lw $t4, 0($t3)
add $t7, $t7, $t4
sw $t7, 0($s3)
la $t7, s
lw $s3, 0($t7)
la $s0, l
sw $t5, 0($s0)
la $t5, ah
lw $t2, 0($t5)
add $t2, $t2, $s3
la $s0, m
sw $s2, 0($s0)
la $s1, t
lw $s2, 0($s1)
add $t2, $t2, $s2
la $s0, n
sw $t0, 0($s0)
la $t8, u
lw $t0, 0($t8)
add $t2, $t2, $t0
la $s0, o
sw $t1, 0($s0)
la $s4, v
lw $t1, 0($s4)
add $t2, $t2, $t1
la $s0, p
sw $s6, 0($s0)
la $t9, w
lw $s6, 0($t9)
add $t2, $t2, $s6
la $s0, q
sw $t6, 0($s0)
la $s5, x
lw $t6, 0($s5)
add $t2, $t2, $t6
la $s0, r
sw $t4, 0($s0)
la $t3, y
lw $t4, 0($t3)
add $t2, $t2, $t4
la $s0, s
sw $s3, 0($s0)
la $t7, z
lw $s3, 0($t7)
add $t2, $t2, $s3
sw $t2, 0($t5)
la $t2, aa
lw $t5, 0($t2)
la $s0, t
sw $s2, 0($s0)
la $s2, ah
lw $s1, 0($s2)
add $s1, $s1, $t5
la $s0, u
sw $t0, 0($s0)
la $t8, ab
lw $t0, 0($t8)
add $s1, $s1, $t0
la $s0, v
sw $t1, 0($s0)
la $t1, ad
lw $s4, 0($t1)
add $s4, $s4, $s1
la $s0, w
sw $s6, 0($s0)
la $t9, c
lw $s6, 0($t9)
move $s5, $s6
la $s0, x
sw $t6, 0($s0)
la $t6, d
lw $t3, 0($t6)
add $s5, $s5, $t3
la $s0, y
sw $t4, 0($s0)
la $t4, e
lw $t7, 0($t4)
add $s5, $s5, $t7
la $s0, z
sw $s3, 0($s0)
la $s3, f
lw $t2, 0($s3)
add $s5, $s5, $t2
la $s0, aa
sw $t5, 0($s0)
sw $s1, 0($s2)
la $t5, g
lw $s1, 0($t5)
add $s5, $s5, $s1
la $s2, h
lw $t8, 0($s2)
add $s5, $s5, $t8
la $s0, ab
sw $t0, 0($s0)
sw $s4, 0($t1)
la $t0, i
lw $s4, 0($t0)
add $s5, $s5, $s4
la $t1, j
lw $t9, 0($t1)
add $s5, $s5, $t9
la $s0, c
sw $s6, 0($s0)
la $s0, ai
sw $s5, 0($s0)
la $s6, k
lw $s5, 0($s6)
la $s0, d
sw $t3, 0($s0)
la $t3, ai
lw $t6, 0($t3)
add $t6, $t6, $s5
la $s0, e
sw $t7, 0($s0)
la $t4, l
lw $t7, 0($t4)
add $t6, $t6, $t7
la $s0, f
sw $t2, 0($s0)
la $s3, m
lw $t2, 0($s3)
add $t6, $t6, $t2
la $s0, g
sw $s1, 0($s0)
la $t5, n
lw $s1, 0($t5)
add $t6, $t6, $s1
la $s0, h
sw $t8, 0($s0)
la $s2, o
lw $t8, 0($s2)
add $t6, $t6, $t8
la $s0, i
sw $s4, 0($s0)
la $t0, p
lw $s4, 0($t0)
add $t6, $t6, $s4
la $s0, j
sw $t9, 0($s0)
la $t1, q
lw $t9, 0($t1)
add $t6, $t6, $t9
la $s0, k
sw $s5, 0($s0)
la $s6, r
lw $s5, 0($s6)
add $t6, $t6, $s5
sw $t6, 0($t3)
la $t6, s
lw $t3, 0($t6)
la $s0, l
sw $t7, 0($s0)
la $t7, ai
lw $t4, 0($t7)
add $t4, $t4, $t3
la $s0, m
sw $t2, 0($s0)
la $s3, t
lw $t2, 0($s3)
add $t4, $t4, $t2
la $s0, n
sw $s1, 0($s0)
la $t5, u
lw $s1, 0($t5)
add $t4, $t4, $s1
la $s0, o
sw $t8, 0($s0)
la $s2, v
lw $t8, 0($s2)
add $t4, $t4, $t8
la $s0, p
sw $s4, 0($s0)
la $t0, w
lw $s4, 0($t0)
add $t4, $t4, $s4
la $s0, q
sw $t9, 0($s0)
la $t1, x
lw $t9, 0($t1)
add $t4, $t4, $t9
la $s0, r
sw $s5, 0($s0)
la $s6, y
lw $s5, 0($s6)
add $t4, $t4, $s5
la $s0, s
sw $t3, 0($s0)
la $t6, z
lw $t3, 0($t6)
add $t4, $t4, $t3
sw $t4, 0($t7)
la $t4, aa
lw $t7, 0($t4)
la $s0, t
sw $t2, 0($s0)
la $t2, ai
lw $s3, 0($t2)
add $s3, $s3, $t7
la $s0, u
sw $s1, 0($s0)
la $t5, ab
lw $s1, 0($t5)
add $s3, $s3, $s1
la $s0, v
sw $t8, 0($s0)
la $t8, ad
lw $s2, 0($t8)
sub $s2, $s2, $s3
la $s0, w
sw $s4, 0($s0)
la $t0, c
lw $s4, 0($t0)
move $t1, $s4
la $s0, x
sw $t9, 0($s0)
la $t9, d
lw $s6, 0($t9)
add $t1, $t1, $s6
la $s0, y
sw $s5, 0($s0)
la $s5, e
lw $t6, 0($s5)
add $t1, $t1, $t6
la $s0, z
sw $t3, 0($s0)
la $t3, f
lw $t4, 0($t3)
add $t1, $t1, $t4
la $s0, aa
sw $t7, 0($s0)
sw $s3, 0($t2)
la $t7, g
lw $s3, 0($t7)
add $t1, $t1, $s3
la $t2, h
lw $t5, 0($t2)
add $t1, $t1, $t5
la $s0, ab
sw $s1, 0($s0)
sw $s2, 0($t8)
la $s1, i
lw $s2, 0($s1)
add $t1, $t1, $s2
la $t8, j
lw $t0, 0($t8)
add $t1, $t1, $t0
la $s0, c
sw $s4, 0($s0)
la $s0, aj
sw $t1, 0($s0)
la $s4, k
lw $t1, 0($s4)
la $s0, d
sw $s6, 0($s0)
la $s6, aj
lw $t9, 0($s6)
add $t9, $t9, $t1
la $s0, e
sw $t6, 0($s0)
la $s5, l
lw $t6, 0($s5)
add $t9, $t9, $t6
la $s0, f
sw $t4, 0($s0)
la $t3, m
lw $t4, 0($t3)
add $t9, $t9, $t4
la $s0, g
sw $s3, 0($s0)
la $t7, n
lw $s3, 0($t7)
add $t9, $t9, $s3
la $s0, h
sw $t5, 0($s0)
la $t2, o
lw $t5, 0($t2)
add $t9, $t9, $t5
la $s0, i
sw $s2, 0($s0)
la $s1, p
lw $s2, 0($s1)
add $t9, $t9, $s2
la $s0, j
sw $t0, 0($s0)
la $t8, q
lw $t0, 0($t8)
add $t9, $t9, $t0
la $s0, k
sw $t1, 0($s0)
la $s4, r
lw $t1, 0($s4)
add $t9, $t9, $t1
sw $t9, 0($s6)
la $t9, s
lw $s6, 0($t9)
la $s0, l
sw $t6, 0($s0)
la $t6, aj
lw $s5, 0($t6)
add $s5, $s5, $s6
la $s0, m
sw $t4, 0($s0)
la $t3, t
lw $t4, 0($t3)
add $s5, $s5, $t4
la $s0, n
sw $s3, 0($s0)
la $t7, u
lw $s3, 0($t7)
add $s5, $s5, $s3
la $s0, o
sw $t5, 0($s0)
la $t2, v
lw $t5, 0($t2)
add $s5, $s5, $t5
la $s0, p
sw $s2, 0($s0)
la $s1, w
lw $s2, 0($s1)
add $s5, $s5, $s2
la $s0, q
sw $t0, 0($s0)
la $t8, x
lw $t0, 0($t8)
add $s5, $s5, $t0
la $s0, r
sw $t1, 0($s0)
la $s4, y
lw $t1, 0($s4)
add $s5, $s5, $t1
la $s0, s
sw $s6, 0($s0)
la $t9, z
lw $s6, 0($t9)
add $s5, $s5, $s6
sw $s5, 0($t6)
la $s5, aa
lw $t6, 0($s5)
la $s0, t
sw $t4, 0($s0)
la $t4, aj
lw $t3, 0($t4)
add $t3, $t3, $t6
la $s0, u
sw $s3, 0($s0)
la $t7, ab
lw $s3, 0($t7)
add $t3, $t3, $s3
la $s0, v
sw $t5, 0($s0)
la $t5, ad
lw $t2, 0($t5)
add $t2, $t2, $t3
li $v0, 1
move $a0, $t2
syscall
