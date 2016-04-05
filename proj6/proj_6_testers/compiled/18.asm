.data
c:	.word	0	# a in original
ah:	.word	0	# temp_f in original
o:	.word	0	# m in original
j:	.word	0	# h in original
t:	.word	0	# r in original
g:	.word	0	# e in original
m:	.word	0	# k in original
f:	.word	0	# d in original
ai:	.word	0	# temp_g in original
aj:	.word	0	# temp_h in original
k:	.word	0	# i in original
h:	.word	0	# f in original
p:	.word	0	# n in original
ac:	.word	0	# temp_b in original
l:	.word	0	# j in original
r:	.word	0	# p in original
u:	.word	0	# s in original
e:	.word	0	# c in original
i:	.word	0	# g in original
w:	.word	0	# u in original
s:	.word	0	# q in original
n:	.word	0	# l in original
v:	.word	0	# t in original
x:	.word	0	# v in original
aa:	.word	0	# y in original
ab:	.word	0	# z in original
ad:	.word	0	# temp_a in original
q:	.word	0	# o in original
ag:	.word	0	# temp_e in original
z:	.word	0	# x in original
d:	.word	0	# b in original
y:	.word	0	# w in original
af:	.word	0	# temp_d in original
ae:	.word	0	# temp_c in original
.text
li $v0, 5
syscall
la $s3, c
lw $s6, 0($s3)
move $s6, $v0
li $v0, 5
syscall
la $t9, d
lw $t5, 0($t9)
move $t5, $v0
li $v0, 5
syscall
la $t1, e
lw $s2, 0($t1)
move $s2, $v0
li $v0, 5
syscall
la $t0, f
lw $t6, 0($t0)
move $t6, $v0
li $v0, 5
syscall
la $t7, g
lw $s4, 0($t7)
move $s4, $v0
li $v0, 5
syscall
la $t2, h
lw $s5, 0($t2)
move $s5, $v0
li $v0, 5
syscall
la $s1, i
lw $t8, 0($s1)
move $t8, $v0
li $v0, 5
syscall
la $t4, j
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $s0, c
sw $s6, 0($s0)
la $s6, k
lw $s3, 0($s6)
move $s3, $v0
li $v0, 5
syscall
la $s0, d
sw $t5, 0($s0)
la $t5, l
lw $t9, 0($t5)
move $t9, $v0
li $v0, 5
syscall
la $s0, e
sw $s2, 0($s0)
la $s2, m
lw $t1, 0($s2)
move $t1, $v0
li $v0, 5
syscall
la $s0, f
sw $t6, 0($s0)
la $t6, n
lw $t0, 0($t6)
move $t0, $v0
li $v0, 5
syscall
la $s0, g
sw $s4, 0($s0)
la $s4, o
lw $t7, 0($s4)
move $t7, $v0
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
sw $t8, 0($s0)
la $t8, q
lw $s1, 0($t8)
move $s1, $v0
li $v0, 5
syscall
la $s0, j
sw $t3, 0($s0)
la $t3, r
lw $t4, 0($t3)
move $t4, $v0
li $v0, 5
syscall
la $s0, k
sw $s3, 0($s0)
la $s3, s
lw $s6, 0($s3)
move $s6, $v0
li $v0, 5
syscall
la $s0, l
sw $t9, 0($s0)
la $t9, t
lw $t5, 0($t9)
move $t5, $v0
li $v0, 5
syscall
la $s0, m
sw $t1, 0($s0)
la $t1, u
lw $s2, 0($t1)
move $s2, $v0
li $v0, 5
syscall
la $s0, n
sw $t0, 0($s0)
la $t0, v
lw $t6, 0($t0)
move $t6, $v0
li $v0, 5
syscall
la $s0, o
sw $t7, 0($s0)
la $t7, w
lw $s4, 0($t7)
move $s4, $v0
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
lw $t8, 0($s1)
move $t8, $v0
li $v0, 5
syscall
la $s0, r
sw $t4, 0($s0)
la $t4, z
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $s0, s
sw $s6, 0($s0)
la $s6, aa
lw $s3, 0($s6)
move $s3, $v0
li $v0, 5
syscall
la $s0, t
sw $t5, 0($s0)
la $t5, ab
lw $t9, 0($t5)
move $t9, $v0
la $s0, u
sw $s2, 0($s0)
la $t1, c
lw $s2, 0($t1)
move $t0, $s2
la $s0, v
sw $t6, 0($s0)
la $t6, d
lw $t7, 0($t6)
add $t0, $t0, $t7
la $s0, w
sw $s4, 0($s0)
la $s4, e
lw $t2, 0($s4)
add $t0, $t0, $t2
la $s0, x
sw $s5, 0($s0)
la $s5, f
lw $s1, 0($s5)
add $t0, $t0, $s1
la $s0, y
sw $t8, 0($s0)
la $t8, g
lw $t4, 0($t8)
add $t0, $t0, $t4
la $s0, z
sw $t3, 0($s0)
la $t3, h
lw $s6, 0($t3)
add $t0, $t0, $s6
la $s0, aa
sw $s3, 0($s0)
la $s3, i
lw $t5, 0($s3)
add $t0, $t0, $t5
la $s0, ab
sw $t9, 0($s0)
la $t9, j
lw $t1, 0($t9)
add $t0, $t0, $t1
la $s0, c
sw $s2, 0($s0)
la $s0, ac
sw $t0, 0($s0)
la $s2, k
lw $t0, 0($s2)
la $s0, d
sw $t7, 0($s0)
la $t7, ac
lw $t6, 0($t7)
add $t6, $t6, $t0
la $s0, e
sw $t2, 0($s0)
la $s4, l
lw $t2, 0($s4)
add $t6, $t6, $t2
la $s0, f
sw $s1, 0($s0)
la $s5, m
lw $s1, 0($s5)
add $t6, $t6, $s1
la $s0, g
sw $t4, 0($s0)
la $t8, n
lw $t4, 0($t8)
add $t6, $t6, $t4
la $s0, h
sw $s6, 0($s0)
la $t3, o
lw $s6, 0($t3)
add $t6, $t6, $s6
la $s0, i
sw $t5, 0($s0)
la $s3, p
lw $t5, 0($s3)
add $t6, $t6, $t5
la $s0, j
sw $t1, 0($s0)
la $t9, q
lw $t1, 0($t9)
add $t6, $t6, $t1
la $s0, k
sw $t0, 0($s0)
la $s2, r
lw $t0, 0($s2)
add $t6, $t6, $t0
sw $t6, 0($t7)
la $t6, s
lw $t7, 0($t6)
la $s0, l
sw $t2, 0($s0)
la $t2, ac
lw $s4, 0($t2)
add $s4, $s4, $t7
la $s0, m
sw $s1, 0($s0)
la $s5, t
lw $s1, 0($s5)
add $s4, $s4, $s1
la $s0, n
sw $t4, 0($s0)
la $t8, u
lw $t4, 0($t8)
add $s4, $s4, $t4
la $s0, o
sw $s6, 0($s0)
la $t3, v
lw $s6, 0($t3)
add $s4, $s4, $s6
la $s0, p
sw $t5, 0($s0)
la $s3, w
lw $t5, 0($s3)
add $s4, $s4, $t5
la $s0, q
sw $t1, 0($s0)
la $t9, x
lw $t1, 0($t9)
add $s4, $s4, $t1
la $s0, r
sw $t0, 0($s0)
la $s2, y
lw $t0, 0($s2)
add $s4, $s4, $t0
la $s0, s
sw $t7, 0($s0)
la $t6, z
lw $t7, 0($t6)
add $s4, $s4, $t7
sw $s4, 0($t2)
la $s4, aa
lw $t2, 0($s4)
la $s0, t
sw $s1, 0($s0)
la $s1, ac
lw $s5, 0($s1)
add $s5, $s5, $t2
la $s0, u
sw $t4, 0($s0)
la $t8, ab
lw $t4, 0($t8)
add $s5, $s5, $t4
move $t3, $s5
la $s0, v
sw $s6, 0($s0)
la $s6, c
lw $s3, 0($s6)
la $s0, w
sw $t5, 0($s0)
move $t5, $s3
la $s0, x
sw $t1, 0($s0)
la $t9, d
lw $t1, 0($t9)
add $t5, $t5, $t1
la $s0, y
sw $t0, 0($s0)
la $s2, e
lw $t0, 0($s2)
add $t5, $t5, $t0
la $s0, z
sw $t7, 0($s0)
la $t6, f
lw $t7, 0($t6)
add $t5, $t5, $t7
la $s0, aa
sw $t2, 0($s0)
la $s4, g
lw $t2, 0($s4)
add $t5, $t5, $t2
sw $s5, 0($s1)
la $s5, h
lw $s1, 0($s5)
add $t5, $t5, $s1
la $s0, ab
sw $t4, 0($s0)
la $t8, i
lw $t4, 0($t8)
add $t5, $t5, $t4
la $s0, ad
sw $t3, 0($s0)
la $t3, j
lw $s6, 0($t3)
add $t5, $t5, $s6
la $s0, c
sw $s3, 0($s0)
la $s0, ae
sw $t5, 0($s0)
la $s3, k
lw $t5, 0($s3)
la $s0, d
sw $t1, 0($s0)
la $t1, ae
lw $t9, 0($t1)
add $t9, $t9, $t5
la $s0, e
sw $t0, 0($s0)
la $s2, l
lw $t0, 0($s2)
add $t9, $t9, $t0
la $s0, f
sw $t7, 0($s0)
la $t6, m
lw $t7, 0($t6)
add $t9, $t9, $t7
la $s0, g
sw $t2, 0($s0)
la $s4, n
lw $t2, 0($s4)
add $t9, $t9, $t2
la $s0, h
sw $s1, 0($s0)
la $s5, o
lw $s1, 0($s5)
add $t9, $t9, $s1
la $s0, i
sw $t4, 0($s0)
la $t8, p
lw $t4, 0($t8)
add $t9, $t9, $t4
la $s0, j
sw $s6, 0($s0)
la $t3, q
lw $s6, 0($t3)
add $t9, $t9, $s6
la $s0, k
sw $t5, 0($s0)
la $s3, r
lw $t5, 0($s3)
add $t9, $t9, $t5
sw $t9, 0($t1)
la $t9, s
lw $t1, 0($t9)
la $s0, l
sw $t0, 0($s0)
la $t0, ae
lw $s2, 0($t0)
add $s2, $s2, $t1
la $s0, m
sw $t7, 0($s0)
la $t6, t
lw $t7, 0($t6)
add $s2, $s2, $t7
la $s0, n
sw $t2, 0($s0)
la $s4, u
lw $t2, 0($s4)
add $s2, $s2, $t2
la $s0, o
sw $s1, 0($s0)
la $s5, v
lw $s1, 0($s5)
add $s2, $s2, $s1
la $s0, p
sw $t4, 0($s0)
la $t8, w
lw $t4, 0($t8)
add $s2, $s2, $t4
la $s0, q
sw $s6, 0($s0)
la $t3, x
lw $s6, 0($t3)
add $s2, $s2, $s6
la $s0, r
sw $t5, 0($s0)
la $s3, y
lw $t5, 0($s3)
add $s2, $s2, $t5
la $s0, s
sw $t1, 0($s0)
la $t9, z
lw $t1, 0($t9)
add $s2, $s2, $t1
sw $s2, 0($t0)
la $s2, aa
lw $t0, 0($s2)
la $s0, t
sw $t7, 0($s0)
la $t7, ae
lw $t6, 0($t7)
add $t6, $t6, $t0
la $s0, u
sw $t2, 0($s0)
la $s4, ab
lw $t2, 0($s4)
add $t6, $t6, $t2
la $s0, v
sw $s1, 0($s0)
la $s1, ad
lw $s5, 0($s1)
sub $s5, $s5, $t6
la $s0, w
sw $t4, 0($s0)
la $t8, c
lw $t4, 0($t8)
move $t3, $t4
la $s0, x
sw $s6, 0($s0)
la $s6, d
lw $s3, 0($s6)
add $t3, $t3, $s3
la $s0, y
sw $t5, 0($s0)
la $t5, e
lw $t9, 0($t5)
add $t3, $t3, $t9
la $s0, z
sw $t1, 0($s0)
la $t1, f
lw $s2, 0($t1)
add $t3, $t3, $s2
la $s0, aa
sw $t0, 0($s0)
sw $t6, 0($t7)
la $t0, g
lw $t6, 0($t0)
add $t3, $t3, $t6
la $t7, h
lw $s4, 0($t7)
add $t3, $t3, $s4
la $s0, ab
sw $t2, 0($s0)
sw $s5, 0($s1)
la $t2, i
lw $s5, 0($t2)
add $t3, $t3, $s5
la $s1, j
lw $t8, 0($s1)
add $t3, $t3, $t8
la $s0, c
sw $t4, 0($s0)
la $s0, af
sw $t3, 0($s0)
la $t4, k
lw $t3, 0($t4)
la $s0, d
sw $s3, 0($s0)
la $s3, af
lw $s6, 0($s3)
add $s6, $s6, $t3
la $s0, e
sw $t9, 0($s0)
la $t5, l
lw $t9, 0($t5)
add $s6, $s6, $t9
la $s0, f
sw $s2, 0($s0)
la $t1, m
lw $s2, 0($t1)
add $s6, $s6, $s2
la $s0, g
sw $t6, 0($s0)
la $t0, n
lw $t6, 0($t0)
add $s6, $s6, $t6
la $s0, h
sw $s4, 0($s0)
la $t7, o
lw $s4, 0($t7)
add $s6, $s6, $s4
la $s0, i
sw $s5, 0($s0)
la $t2, p
lw $s5, 0($t2)
add $s6, $s6, $s5
la $s0, j
sw $t8, 0($s0)
la $s1, q
lw $t8, 0($s1)
add $s6, $s6, $t8
la $s0, k
sw $t3, 0($s0)
la $t4, r
lw $t3, 0($t4)
add $s6, $s6, $t3
sw $s6, 0($s3)
la $s6, s
lw $s3, 0($s6)
la $s0, l
sw $t9, 0($s0)
la $t9, af
lw $t5, 0($t9)
add $t5, $t5, $s3
la $s0, m
sw $s2, 0($s0)
la $t1, t
lw $s2, 0($t1)
add $t5, $t5, $s2
la $s0, n
sw $t6, 0($s0)
la $t0, u
lw $t6, 0($t0)
add $t5, $t5, $t6
la $s0, o
sw $s4, 0($s0)
la $t7, v
lw $s4, 0($t7)
add $t5, $t5, $s4
la $s0, p
sw $s5, 0($s0)
la $t2, w
lw $s5, 0($t2)
add $t5, $t5, $s5
la $s0, q
sw $t8, 0($s0)
la $s1, x
lw $t8, 0($s1)
add $t5, $t5, $t8
la $s0, r
sw $t3, 0($s0)
la $t4, y
lw $t3, 0($t4)
add $t5, $t5, $t3
la $s0, s
sw $s3, 0($s0)
la $s6, z
lw $s3, 0($s6)
add $t5, $t5, $s3
sw $t5, 0($t9)
la $t5, aa
lw $t9, 0($t5)
la $s0, t
sw $s2, 0($s0)
la $s2, af
lw $t1, 0($s2)
add $t1, $t1, $t9
la $s0, u
sw $t6, 0($s0)
la $t0, ab
lw $t6, 0($t0)
add $t1, $t1, $t6
la $s0, v
sw $s4, 0($s0)
la $s4, ad
lw $t7, 0($s4)
add $t7, $t7, $t1
la $s0, w
sw $s5, 0($s0)
la $t2, c
lw $s5, 0($t2)
move $s1, $s5
la $s0, x
sw $t8, 0($s0)
la $t8, d
lw $t4, 0($t8)
add $s1, $s1, $t4
la $s0, y
sw $t3, 0($s0)
la $t3, e
lw $s6, 0($t3)
add $s1, $s1, $s6
la $s0, z
sw $s3, 0($s0)
la $s3, f
lw $t5, 0($s3)
add $s1, $s1, $t5
la $s0, aa
sw $t9, 0($s0)
sw $t1, 0($s2)
la $t9, g
lw $t1, 0($t9)
add $s1, $s1, $t1
la $s2, h
lw $t0, 0($s2)
add $s1, $s1, $t0
la $s0, ab
sw $t6, 0($s0)
sw $t7, 0($s4)
la $t6, i
lw $t7, 0($t6)
add $s1, $s1, $t7
la $s4, j
lw $t2, 0($s4)
add $s1, $s1, $t2
la $s0, c
sw $s5, 0($s0)
la $s0, ag
sw $s1, 0($s0)
la $s5, k
lw $s1, 0($s5)
la $s0, d
sw $t4, 0($s0)
la $t4, ag
lw $t8, 0($t4)
add $t8, $t8, $s1
la $s0, e
sw $s6, 0($s0)
la $t3, l
lw $s6, 0($t3)
add $t8, $t8, $s6
la $s0, f
sw $t5, 0($s0)
la $s3, m
lw $t5, 0($s3)
add $t8, $t8, $t5
la $s0, g
sw $t1, 0($s0)
la $t9, n
lw $t1, 0($t9)
add $t8, $t8, $t1
la $s0, h
sw $t0, 0($s0)
la $s2, o
lw $t0, 0($s2)
add $t8, $t8, $t0
la $s0, i
sw $t7, 0($s0)
la $t6, p
lw $t7, 0($t6)
add $t8, $t8, $t7
la $s0, j
sw $t2, 0($s0)
la $s4, q
lw $t2, 0($s4)
add $t8, $t8, $t2
la $s0, k
sw $s1, 0($s0)
la $s5, r
lw $s1, 0($s5)
add $t8, $t8, $s1
sw $t8, 0($t4)
la $t8, s
lw $t4, 0($t8)
la $s0, l
sw $s6, 0($s0)
la $s6, ag
lw $t3, 0($s6)
add $t3, $t3, $t4
la $s0, m
sw $t5, 0($s0)
la $s3, t
lw $t5, 0($s3)
add $t3, $t3, $t5
la $s0, n
sw $t1, 0($s0)
la $t9, u
lw $t1, 0($t9)
add $t3, $t3, $t1
la $s0, o
sw $t0, 0($s0)
la $s2, v
lw $t0, 0($s2)
add $t3, $t3, $t0
la $s0, p
sw $t7, 0($s0)
la $t6, w
lw $t7, 0($t6)
add $t3, $t3, $t7
la $s0, q
sw $t2, 0($s0)
la $s4, x
lw $t2, 0($s4)
add $t3, $t3, $t2
la $s0, r
sw $s1, 0($s0)
la $s5, y
lw $s1, 0($s5)
add $t3, $t3, $s1
la $s0, s
sw $t4, 0($s0)
la $t8, z
lw $t4, 0($t8)
add $t3, $t3, $t4
sw $t3, 0($s6)
la $t3, aa
lw $s6, 0($t3)
la $s0, t
sw $t5, 0($s0)
la $t5, ag
lw $s3, 0($t5)
add $s3, $s3, $s6
la $s0, u
sw $t1, 0($s0)
la $t9, ab
lw $t1, 0($t9)
add $s3, $s3, $t1
la $s0, v
sw $t0, 0($s0)
la $t0, ad
lw $s2, 0($t0)
sub $s2, $s2, $s3
la $s0, w
sw $t7, 0($s0)
la $t6, c
lw $t7, 0($t6)
move $s4, $t7
la $s0, x
sw $t2, 0($s0)
la $t2, d
lw $s5, 0($t2)
add $s4, $s4, $s5
la $s0, y
sw $s1, 0($s0)
la $s1, e
lw $t8, 0($s1)
add $s4, $s4, $t8
la $s0, z
sw $t4, 0($s0)
la $t4, f
lw $t3, 0($t4)
add $s4, $s4, $t3
la $s0, aa
sw $s6, 0($s0)
sw $s3, 0($t5)
la $s6, g
lw $s3, 0($s6)
add $s4, $s4, $s3
la $t5, h
lw $t9, 0($t5)
add $s4, $s4, $t9
la $s0, ab
sw $t1, 0($s0)
sw $s2, 0($t0)
la $t1, i
lw $s2, 0($t1)
add $s4, $s4, $s2
la $t0, j
lw $t6, 0($t0)
add $s4, $s4, $t6
la $s0, c
sw $t7, 0($s0)
la $s0, ah
sw $s4, 0($s0)
la $t7, k
lw $s4, 0($t7)
la $s0, d
sw $s5, 0($s0)
la $s5, ah
lw $t2, 0($s5)
add $t2, $t2, $s4
la $s0, e
sw $t8, 0($s0)
la $s1, l
lw $t8, 0($s1)
add $t2, $t2, $t8
la $s0, f
sw $t3, 0($s0)
la $t4, m
lw $t3, 0($t4)
add $t2, $t2, $t3
la $s0, g
sw $s3, 0($s0)
la $s6, n
lw $s3, 0($s6)
add $t2, $t2, $s3
la $s0, h
sw $t9, 0($s0)
la $t5, o
lw $t9, 0($t5)
add $t2, $t2, $t9
la $s0, i
sw $s2, 0($s0)
la $t1, p
lw $s2, 0($t1)
add $t2, $t2, $s2
la $s0, j
sw $t6, 0($s0)
la $t0, q
lw $t6, 0($t0)
add $t2, $t2, $t6
la $s0, k
sw $s4, 0($s0)
la $t7, r
lw $s4, 0($t7)
add $t2, $t2, $s4
sw $t2, 0($s5)
la $t2, s
lw $s5, 0($t2)
la $s0, l
sw $t8, 0($s0)
la $t8, ah
lw $s1, 0($t8)
add $s1, $s1, $s5
la $s0, m
sw $t3, 0($s0)
la $t4, t
lw $t3, 0($t4)
add $s1, $s1, $t3
la $s0, n
sw $s3, 0($s0)
la $s6, u
lw $s3, 0($s6)
add $s1, $s1, $s3
la $s0, o
sw $t9, 0($s0)
la $t5, v
lw $t9, 0($t5)
add $s1, $s1, $t9
la $s0, p
sw $s2, 0($s0)
la $t1, w
lw $s2, 0($t1)
add $s1, $s1, $s2
la $s0, q
sw $t6, 0($s0)
la $t0, x
lw $t6, 0($t0)
add $s1, $s1, $t6
la $s0, r
sw $s4, 0($s0)
la $t7, y
lw $s4, 0($t7)
add $s1, $s1, $s4
la $s0, s
sw $s5, 0($s0)
la $t2, z
lw $s5, 0($t2)
add $s1, $s1, $s5
sw $s1, 0($t8)
la $s1, aa
lw $t8, 0($s1)
la $s0, t
sw $t3, 0($s0)
la $t3, ah
lw $t4, 0($t3)
add $t4, $t4, $t8
la $s0, u
sw $s3, 0($s0)
la $s6, ab
lw $s3, 0($s6)
add $t4, $t4, $s3
la $s0, v
sw $t9, 0($s0)
la $t9, ad
lw $t5, 0($t9)
add $t5, $t5, $t4
la $s0, w
sw $s2, 0($s0)
la $t1, c
lw $s2, 0($t1)
move $t0, $s2
la $s0, x
sw $t6, 0($s0)
la $t6, d
lw $t7, 0($t6)
add $t0, $t0, $t7
la $s0, y
sw $s4, 0($s0)
la $s4, e
lw $t2, 0($s4)
add $t0, $t0, $t2
la $s0, z
sw $s5, 0($s0)
la $s5, f
lw $s1, 0($s5)
add $t0, $t0, $s1
la $s0, aa
sw $t8, 0($s0)
sw $t4, 0($t3)
la $t8, g
lw $t4, 0($t8)
add $t0, $t0, $t4
la $t3, h
lw $s6, 0($t3)
add $t0, $t0, $s6
la $s0, ab
sw $s3, 0($s0)
sw $t5, 0($t9)
la $s3, i
lw $t5, 0($s3)
add $t0, $t0, $t5
la $t9, j
lw $t1, 0($t9)
add $t0, $t0, $t1
la $s0, c
sw $s2, 0($s0)
la $s0, ai
sw $t0, 0($s0)
la $s2, k
lw $t0, 0($s2)
la $s0, d
sw $t7, 0($s0)
la $t7, ai
lw $t6, 0($t7)
add $t6, $t6, $t0
la $s0, e
sw $t2, 0($s0)
la $s4, l
lw $t2, 0($s4)
add $t6, $t6, $t2
la $s0, f
sw $s1, 0($s0)
la $s5, m
lw $s1, 0($s5)
add $t6, $t6, $s1
la $s0, g
sw $t4, 0($s0)
la $t8, n
lw $t4, 0($t8)
add $t6, $t6, $t4
la $s0, h
sw $s6, 0($s0)
la $t3, o
lw $s6, 0($t3)
add $t6, $t6, $s6
la $s0, i
sw $t5, 0($s0)
la $s3, p
lw $t5, 0($s3)
add $t6, $t6, $t5
la $s0, j
sw $t1, 0($s0)
la $t9, q
lw $t1, 0($t9)
add $t6, $t6, $t1
la $s0, k
sw $t0, 0($s0)
la $s2, r
lw $t0, 0($s2)
add $t6, $t6, $t0
sw $t6, 0($t7)
la $t6, s
lw $t7, 0($t6)
la $s0, l
sw $t2, 0($s0)
la $t2, ai
lw $s4, 0($t2)
add $s4, $s4, $t7
la $s0, m
sw $s1, 0($s0)
la $s5, t
lw $s1, 0($s5)
add $s4, $s4, $s1
la $s0, n
sw $t4, 0($s0)
la $t8, u
lw $t4, 0($t8)
add $s4, $s4, $t4
la $s0, o
sw $s6, 0($s0)
la $t3, v
lw $s6, 0($t3)
add $s4, $s4, $s6
la $s0, p
sw $t5, 0($s0)
la $s3, w
lw $t5, 0($s3)
add $s4, $s4, $t5
la $s0, q
sw $t1, 0($s0)
la $t9, x
lw $t1, 0($t9)
add $s4, $s4, $t1
la $s0, r
sw $t0, 0($s0)
la $s2, y
lw $t0, 0($s2)
add $s4, $s4, $t0
la $s0, s
sw $t7, 0($s0)
la $t6, z
lw $t7, 0($t6)
add $s4, $s4, $t7
sw $s4, 0($t2)
la $s4, aa
lw $t2, 0($s4)
la $s0, t
sw $s1, 0($s0)
la $s1, ai
lw $s5, 0($s1)
add $s5, $s5, $t2
la $s0, u
sw $t4, 0($s0)
la $t8, ab
lw $t4, 0($t8)
add $s5, $s5, $t4
la $s0, v
sw $s6, 0($s0)
la $s6, ad
lw $t3, 0($s6)
sub $t3, $t3, $s5
la $s0, w
sw $t5, 0($s0)
la $s3, c
lw $t5, 0($s3)
move $t9, $t5
la $s0, x
sw $t1, 0($s0)
la $t1, d
lw $s2, 0($t1)
add $t9, $t9, $s2
la $s0, y
sw $t0, 0($s0)
la $t0, e
lw $t6, 0($t0)
add $t9, $t9, $t6
la $s0, z
sw $t7, 0($s0)
la $t7, f
lw $s4, 0($t7)
add $t9, $t9, $s4
la $s0, aa
sw $t2, 0($s0)
sw $s5, 0($s1)
la $t2, g
lw $s5, 0($t2)
add $t9, $t9, $s5
la $s1, h
lw $t8, 0($s1)
add $t9, $t9, $t8
la $s0, ab
sw $t4, 0($s0)
sw $t3, 0($s6)
la $t4, i
lw $t3, 0($t4)
add $t9, $t9, $t3
la $s6, j
lw $s3, 0($s6)
add $t9, $t9, $s3
la $s0, c
sw $t5, 0($s0)
la $s0, aj
sw $t9, 0($s0)
la $t5, k
lw $t9, 0($t5)
la $s0, d
sw $s2, 0($s0)
la $s2, aj
lw $t1, 0($s2)
add $t1, $t1, $t9
la $s0, e
sw $t6, 0($s0)
la $t0, l
lw $t6, 0($t0)
add $t1, $t1, $t6
la $s0, f
sw $s4, 0($s0)
la $t7, m
lw $s4, 0($t7)
add $t1, $t1, $s4
la $s0, g
sw $s5, 0($s0)
la $t2, n
lw $s5, 0($t2)
add $t1, $t1, $s5
la $s0, h
sw $t8, 0($s0)
la $s1, o
lw $t8, 0($s1)
add $t1, $t1, $t8
la $s0, i
sw $t3, 0($s0)
la $t4, p
lw $t3, 0($t4)
add $t1, $t1, $t3
la $s0, j
sw $s3, 0($s0)
la $s6, q
lw $s3, 0($s6)
add $t1, $t1, $s3
la $s0, k
sw $t9, 0($s0)
la $t5, r
lw $t9, 0($t5)
add $t1, $t1, $t9
sw $t1, 0($s2)
la $t1, s
lw $s2, 0($t1)
la $s0, l
sw $t6, 0($s0)
la $t6, aj
lw $t0, 0($t6)
add $t0, $t0, $s2
la $s0, m
sw $s4, 0($s0)
la $t7, t
lw $s4, 0($t7)
add $t0, $t0, $s4
la $s0, n
sw $s5, 0($s0)
la $t2, u
lw $s5, 0($t2)
add $t0, $t0, $s5
la $s0, o
sw $t8, 0($s0)
la $s1, v
lw $t8, 0($s1)
add $t0, $t0, $t8
la $s0, p
sw $t3, 0($s0)
la $t4, w
lw $t3, 0($t4)
add $t0, $t0, $t3
la $s0, q
sw $s3, 0($s0)
la $s6, x
lw $s3, 0($s6)
add $t0, $t0, $s3
la $s0, r
sw $t9, 0($s0)
la $t5, y
lw $t9, 0($t5)
add $t0, $t0, $t9
la $s0, s
sw $s2, 0($s0)
la $t1, z
lw $s2, 0($t1)
add $t0, $t0, $s2
sw $t0, 0($t6)
la $t0, aa
lw $t6, 0($t0)
la $s0, t
sw $s4, 0($s0)
la $s4, aj
lw $t7, 0($s4)
add $t7, $t7, $t6
la $s0, u
sw $s5, 0($s0)
la $t2, ab
lw $s5, 0($t2)
add $t7, $t7, $s5
la $s0, v
sw $t8, 0($s0)
la $t8, ad
lw $s1, 0($t8)
add $s1, $s1, $t7
li $v0, 1
move $a0, $s1
syscall
