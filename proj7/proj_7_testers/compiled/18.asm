.data
g:	.word	0	# e in original
w:	.word	0	# u in original
d:	.word	0	# b in original
q:	.word	0	# o in original
x:	.word	0	# v in original
ad:	.word	0	# temp_a in original
p:	.word	0	# n in original
v:	.word	0	# t in original
h:	.word	0	# f in original
ah:	.word	0	# temp_f in original
ab:	.word	0	# z in original
aj:	.word	0	# temp_h in original
n:	.word	0	# l in original
s:	.word	0	# q in original
l:	.word	0	# j in original
r:	.word	0	# p in original
o:	.word	0	# m in original
t:	.word	0	# r in original
u:	.word	0	# s in original
e:	.word	0	# c in original
y:	.word	0	# w in original
ae:	.word	0	# temp_c in original
af:	.word	0	# temp_d in original
ai:	.word	0	# temp_g in original
f:	.word	0	# d in original
aa:	.word	0	# y in original
i:	.word	0	# g in original
z:	.word	0	# x in original
m:	.word	0	# k in original
ag:	.word	0	# temp_e in original
ac:	.word	0	# temp_b in original
c:	.word	0	# a in original
j:	.word	0	# h in original
k:	.word	0	# i in original
.text
li $v0, 5
syscall
la $t2, c
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s5, d
lw $t3, 0($s5)
move $t3, $v0
li $v0, 5
syscall
la $t0, e
lw $s2, 0($t0)
move $s2, $v0
li $v0, 5
syscall
la $s3, f
lw $s6, 0($s3)
move $s6, $v0
li $v0, 5
syscall
la $t6, g
lw $s1, 0($t6)
move $s1, $v0
li $v0, 5
syscall
la $t9, h
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s4, i
lw $t5, 0($s4)
move $t5, $v0
li $v0, 5
syscall
la $t7, j
lw $t1, 0($t7)
move $t1, $v0
li $v0, 5
syscall
la $s0, c
sw $t4, 0($s0)
la $t4, k
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
la $s0, d
sw $t3, 0($s0)
la $t3, l
lw $s5, 0($t3)
move $s5, $v0
li $v0, 5
syscall
la $s0, e
sw $s2, 0($s0)
la $s2, m
lw $t0, 0($s2)
move $t0, $v0
li $v0, 5
syscall
la $s0, f
sw $s6, 0($s0)
la $s6, n
lw $s3, 0($s6)
move $s3, $v0
li $v0, 5
syscall
la $s0, g
sw $s1, 0($s0)
la $s1, o
lw $t6, 0($s1)
move $t6, $v0
li $v0, 5
syscall
la $s0, h
sw $t8, 0($s0)
la $t8, p
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, i
sw $t5, 0($s0)
la $t5, q
lw $s4, 0($t5)
move $s4, $v0
li $v0, 5
syscall
la $s0, j
sw $t1, 0($s0)
la $t1, r
lw $t7, 0($t1)
move $t7, $v0
li $v0, 5
syscall
la $s0, k
sw $t2, 0($s0)
la $t2, s
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s0, l
sw $s5, 0($s0)
la $s5, t
lw $t3, 0($s5)
move $t3, $v0
li $v0, 5
syscall
la $s0, m
sw $t0, 0($s0)
la $t0, u
lw $s2, 0($t0)
move $s2, $v0
li $v0, 5
syscall
la $s0, n
sw $s3, 0($s0)
la $s3, v
lw $s6, 0($s3)
move $s6, $v0
li $v0, 5
syscall
la $s0, o
sw $t6, 0($s0)
la $t6, w
lw $s1, 0($t6)
move $s1, $v0
li $v0, 5
syscall
la $s0, p
sw $t9, 0($s0)
la $t9, x
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s0, q
sw $s4, 0($s0)
la $s4, y
lw $t5, 0($s4)
move $t5, $v0
li $v0, 5
syscall
la $s0, r
sw $t7, 0($s0)
la $t7, z
lw $t1, 0($t7)
move $t1, $v0
li $v0, 5
syscall
la $s0, s
sw $t4, 0($s0)
la $t4, aa
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
la $s0, t
sw $t3, 0($s0)
la $t3, ab
lw $s5, 0($t3)
move $s5, $v0
la $s0, u
sw $s2, 0($s0)
la $t0, c
lw $s2, 0($t0)
move $s3, $s2
la $s0, v
sw $s6, 0($s0)
la $s6, d
lw $t6, 0($s6)
add $s3, $s3, $t6
la $s0, w
sw $s1, 0($s0)
la $s1, e
lw $t9, 0($s1)
add $s3, $s3, $t9
la $s0, x
sw $t8, 0($s0)
la $t8, f
lw $s4, 0($t8)
add $s3, $s3, $s4
la $s0, y
sw $t5, 0($s0)
la $t5, g
lw $t7, 0($t5)
add $s3, $s3, $t7
la $s0, z
sw $t1, 0($s0)
la $t1, h
lw $t4, 0($t1)
add $s3, $s3, $t4
la $s0, aa
sw $t2, 0($s0)
la $t2, i
lw $t3, 0($t2)
add $s3, $s3, $t3
la $s0, ab
sw $s5, 0($s0)
la $s5, j
lw $t0, 0($s5)
add $s3, $s3, $t0
la $s0, c
sw $s2, 0($s0)
la $s0, ac
sw $s3, 0($s0)
la $s2, k
lw $s3, 0($s2)
la $s0, d
sw $t6, 0($s0)
la $t6, ac
lw $s6, 0($t6)
add $s6, $s6, $s3
la $s0, e
sw $t9, 0($s0)
la $s1, l
lw $t9, 0($s1)
add $s6, $s6, $t9
la $s0, f
sw $s4, 0($s0)
la $t8, m
lw $s4, 0($t8)
add $s6, $s6, $s4
la $s0, g
sw $t7, 0($s0)
la $t5, n
lw $t7, 0($t5)
add $s6, $s6, $t7
la $s0, h
sw $t4, 0($s0)
la $t1, o
lw $t4, 0($t1)
add $s6, $s6, $t4
la $s0, i
sw $t3, 0($s0)
la $t2, p
lw $t3, 0($t2)
add $s6, $s6, $t3
la $s0, j
sw $t0, 0($s0)
la $s5, q
lw $t0, 0($s5)
add $s6, $s6, $t0
la $s0, k
sw $s3, 0($s0)
la $s2, r
lw $s3, 0($s2)
add $s6, $s6, $s3
sw $s6, 0($t6)
la $s6, s
lw $t6, 0($s6)
la $s0, l
sw $t9, 0($s0)
la $t9, ac
lw $s1, 0($t9)
add $s1, $s1, $t6
la $s0, m
sw $s4, 0($s0)
la $t8, t
lw $s4, 0($t8)
add $s1, $s1, $s4
la $s0, n
sw $t7, 0($s0)
la $t5, u
lw $t7, 0($t5)
add $s1, $s1, $t7
la $s0, o
sw $t4, 0($s0)
la $t1, v
lw $t4, 0($t1)
add $s1, $s1, $t4
la $s0, p
sw $t3, 0($s0)
la $t2, w
lw $t3, 0($t2)
add $s1, $s1, $t3
la $s0, q
sw $t0, 0($s0)
la $s5, x
lw $t0, 0($s5)
add $s1, $s1, $t0
la $s0, r
sw $s3, 0($s0)
la $s2, y
lw $s3, 0($s2)
add $s1, $s1, $s3
la $s0, s
sw $t6, 0($s0)
la $s6, z
lw $t6, 0($s6)
add $s1, $s1, $t6
sw $s1, 0($t9)
la $s1, aa
lw $t9, 0($s1)
la $s0, t
sw $s4, 0($s0)
la $s4, ac
lw $t8, 0($s4)
add $t8, $t8, $t9
la $s0, u
sw $t7, 0($s0)
la $t5, ab
lw $t7, 0($t5)
add $t8, $t8, $t7
move $t1, $t8
la $s0, v
sw $t4, 0($s0)
la $t4, c
lw $t2, 0($t4)
la $s0, w
sw $t3, 0($s0)
move $t3, $t2
la $s0, x
sw $t0, 0($s0)
la $s5, d
lw $t0, 0($s5)
add $t3, $t3, $t0
la $s0, y
sw $s3, 0($s0)
la $s2, e
lw $s3, 0($s2)
add $t3, $t3, $s3
la $s0, z
sw $t6, 0($s0)
la $s6, f
lw $t6, 0($s6)
add $t3, $t3, $t6
la $s0, aa
sw $t9, 0($s0)
la $s1, g
lw $t9, 0($s1)
add $t3, $t3, $t9
sw $t8, 0($s4)
la $t8, h
lw $s4, 0($t8)
add $t3, $t3, $s4
la $s0, ab
sw $t7, 0($s0)
la $t5, i
lw $t7, 0($t5)
add $t3, $t3, $t7
la $s0, ad
sw $t1, 0($s0)
la $t1, j
lw $t4, 0($t1)
add $t3, $t3, $t4
la $s0, c
sw $t2, 0($s0)
la $s0, ae
sw $t3, 0($s0)
la $t2, k
lw $t3, 0($t2)
la $s0, d
sw $t0, 0($s0)
la $t0, ae
lw $s5, 0($t0)
add $s5, $s5, $t3
la $s0, e
sw $s3, 0($s0)
la $s2, l
lw $s3, 0($s2)
add $s5, $s5, $s3
la $s0, f
sw $t6, 0($s0)
la $s6, m
lw $t6, 0($s6)
add $s5, $s5, $t6
la $s0, g
sw $t9, 0($s0)
la $s1, n
lw $t9, 0($s1)
add $s5, $s5, $t9
la $s0, h
sw $s4, 0($s0)
la $t8, o
lw $s4, 0($t8)
add $s5, $s5, $s4
la $s0, i
sw $t7, 0($s0)
la $t5, p
lw $t7, 0($t5)
add $s5, $s5, $t7
la $s0, j
sw $t4, 0($s0)
la $t1, q
lw $t4, 0($t1)
add $s5, $s5, $t4
la $s0, k
sw $t3, 0($s0)
la $t2, r
lw $t3, 0($t2)
add $s5, $s5, $t3
sw $s5, 0($t0)
la $s5, s
lw $t0, 0($s5)
la $s0, l
sw $s3, 0($s0)
la $s3, ae
lw $s2, 0($s3)
add $s2, $s2, $t0
la $s0, m
sw $t6, 0($s0)
la $s6, t
lw $t6, 0($s6)
add $s2, $s2, $t6
la $s0, n
sw $t9, 0($s0)
la $s1, u
lw $t9, 0($s1)
add $s2, $s2, $t9
la $s0, o
sw $s4, 0($s0)
la $t8, v
lw $s4, 0($t8)
add $s2, $s2, $s4
la $s0, p
sw $t7, 0($s0)
la $t5, w
lw $t7, 0($t5)
add $s2, $s2, $t7
la $s0, q
sw $t4, 0($s0)
la $t1, x
lw $t4, 0($t1)
add $s2, $s2, $t4
la $s0, r
sw $t3, 0($s0)
la $t2, y
lw $t3, 0($t2)
add $s2, $s2, $t3
la $s0, s
sw $t0, 0($s0)
la $s5, z
lw $t0, 0($s5)
add $s2, $s2, $t0
sw $s2, 0($s3)
la $s2, aa
lw $s3, 0($s2)
la $s0, t
sw $t6, 0($s0)
la $t6, ae
lw $s6, 0($t6)
add $s6, $s6, $s3
la $s0, u
sw $t9, 0($s0)
la $s1, ab
lw $t9, 0($s1)
add $s6, $s6, $t9
la $s0, v
sw $s4, 0($s0)
la $s4, ad
lw $t8, 0($s4)
sub $t8, $t8, $s6
la $s0, w
sw $t7, 0($s0)
la $t5, c
lw $t7, 0($t5)
move $t1, $t7
la $s0, x
sw $t4, 0($s0)
la $t4, d
lw $t2, 0($t4)
add $t1, $t1, $t2
la $s0, y
sw $t3, 0($s0)
la $t3, e
lw $s5, 0($t3)
add $t1, $t1, $s5
la $s0, z
sw $t0, 0($s0)
la $t0, f
lw $s2, 0($t0)
add $t1, $t1, $s2
la $s0, aa
sw $s3, 0($s0)
sw $s6, 0($t6)
la $s3, g
lw $s6, 0($s3)
add $t1, $t1, $s6
la $t6, h
lw $s1, 0($t6)
add $t1, $t1, $s1
la $s0, ab
sw $t9, 0($s0)
sw $t8, 0($s4)
la $t9, i
lw $t8, 0($t9)
add $t1, $t1, $t8
la $s4, j
lw $t5, 0($s4)
add $t1, $t1, $t5
la $s0, c
sw $t7, 0($s0)
la $s0, af
sw $t1, 0($s0)
la $t7, k
lw $t1, 0($t7)
la $s0, d
sw $t2, 0($s0)
la $t2, af
lw $t4, 0($t2)
add $t4, $t4, $t1
la $s0, e
sw $s5, 0($s0)
la $t3, l
lw $s5, 0($t3)
add $t4, $t4, $s5
la $s0, f
sw $s2, 0($s0)
la $t0, m
lw $s2, 0($t0)
add $t4, $t4, $s2
la $s0, g
sw $s6, 0($s0)
la $s3, n
lw $s6, 0($s3)
add $t4, $t4, $s6
la $s0, h
sw $s1, 0($s0)
la $t6, o
lw $s1, 0($t6)
add $t4, $t4, $s1
la $s0, i
sw $t8, 0($s0)
la $t9, p
lw $t8, 0($t9)
add $t4, $t4, $t8
la $s0, j
sw $t5, 0($s0)
la $s4, q
lw $t5, 0($s4)
add $t4, $t4, $t5
la $s0, k
sw $t1, 0($s0)
la $t7, r
lw $t1, 0($t7)
add $t4, $t4, $t1
sw $t4, 0($t2)
la $t4, s
lw $t2, 0($t4)
la $s0, l
sw $s5, 0($s0)
la $s5, af
lw $t3, 0($s5)
add $t3, $t3, $t2
la $s0, m
sw $s2, 0($s0)
la $t0, t
lw $s2, 0($t0)
add $t3, $t3, $s2
la $s0, n
sw $s6, 0($s0)
la $s3, u
lw $s6, 0($s3)
add $t3, $t3, $s6
la $s0, o
sw $s1, 0($s0)
la $t6, v
lw $s1, 0($t6)
add $t3, $t3, $s1
la $s0, p
sw $t8, 0($s0)
la $t9, w
lw $t8, 0($t9)
add $t3, $t3, $t8
la $s0, q
sw $t5, 0($s0)
la $s4, x
lw $t5, 0($s4)
add $t3, $t3, $t5
la $s0, r
sw $t1, 0($s0)
la $t7, y
lw $t1, 0($t7)
add $t3, $t3, $t1
la $s0, s
sw $t2, 0($s0)
la $t4, z
lw $t2, 0($t4)
add $t3, $t3, $t2
sw $t3, 0($s5)
la $t3, aa
lw $s5, 0($t3)
la $s0, t
sw $s2, 0($s0)
la $s2, af
lw $t0, 0($s2)
add $t0, $t0, $s5
la $s0, u
sw $s6, 0($s0)
la $s3, ab
lw $s6, 0($s3)
add $t0, $t0, $s6
la $s0, v
sw $s1, 0($s0)
la $s1, ad
lw $t6, 0($s1)
add $t6, $t6, $t0
la $s0, w
sw $t8, 0($s0)
la $t9, c
lw $t8, 0($t9)
move $s4, $t8
la $s0, x
sw $t5, 0($s0)
la $t5, d
lw $t7, 0($t5)
add $s4, $s4, $t7
la $s0, y
sw $t1, 0($s0)
la $t1, e
lw $t4, 0($t1)
add $s4, $s4, $t4
la $s0, z
sw $t2, 0($s0)
la $t2, f
lw $t3, 0($t2)
add $s4, $s4, $t3
la $s0, aa
sw $s5, 0($s0)
sw $t0, 0($s2)
la $s5, g
lw $t0, 0($s5)
add $s4, $s4, $t0
la $s2, h
lw $s3, 0($s2)
add $s4, $s4, $s3
la $s0, ab
sw $s6, 0($s0)
sw $t6, 0($s1)
la $s6, i
lw $t6, 0($s6)
add $s4, $s4, $t6
la $s1, j
lw $t9, 0($s1)
add $s4, $s4, $t9
la $s0, c
sw $t8, 0($s0)
la $s0, ag
sw $s4, 0($s0)
la $t8, k
lw $s4, 0($t8)
la $s0, d
sw $t7, 0($s0)
la $t7, ag
lw $t5, 0($t7)
add $t5, $t5, $s4
la $s0, e
sw $t4, 0($s0)
la $t1, l
lw $t4, 0($t1)
add $t5, $t5, $t4
la $s0, f
sw $t3, 0($s0)
la $t2, m
lw $t3, 0($t2)
add $t5, $t5, $t3
la $s0, g
sw $t0, 0($s0)
la $s5, n
lw $t0, 0($s5)
add $t5, $t5, $t0
la $s0, h
sw $s3, 0($s0)
la $s2, o
lw $s3, 0($s2)
add $t5, $t5, $s3
la $s0, i
sw $t6, 0($s0)
la $s6, p
lw $t6, 0($s6)
add $t5, $t5, $t6
la $s0, j
sw $t9, 0($s0)
la $s1, q
lw $t9, 0($s1)
add $t5, $t5, $t9
la $s0, k
sw $s4, 0($s0)
la $t8, r
lw $s4, 0($t8)
add $t5, $t5, $s4
sw $t5, 0($t7)
la $t5, s
lw $t7, 0($t5)
la $s0, l
sw $t4, 0($s0)
la $t4, ag
lw $t1, 0($t4)
add $t1, $t1, $t7
la $s0, m
sw $t3, 0($s0)
la $t2, t
lw $t3, 0($t2)
add $t1, $t1, $t3
la $s0, n
sw $t0, 0($s0)
la $s5, u
lw $t0, 0($s5)
add $t1, $t1, $t0
la $s0, o
sw $s3, 0($s0)
la $s2, v
lw $s3, 0($s2)
add $t1, $t1, $s3
la $s0, p
sw $t6, 0($s0)
la $s6, w
lw $t6, 0($s6)
add $t1, $t1, $t6
la $s0, q
sw $t9, 0($s0)
la $s1, x
lw $t9, 0($s1)
add $t1, $t1, $t9
la $s0, r
sw $s4, 0($s0)
la $t8, y
lw $s4, 0($t8)
add $t1, $t1, $s4
la $s0, s
sw $t7, 0($s0)
la $t5, z
lw $t7, 0($t5)
add $t1, $t1, $t7
sw $t1, 0($t4)
la $t1, aa
lw $t4, 0($t1)
la $s0, t
sw $t3, 0($s0)
la $t3, ag
lw $t2, 0($t3)
add $t2, $t2, $t4
la $s0, u
sw $t0, 0($s0)
la $s5, ab
lw $t0, 0($s5)
add $t2, $t2, $t0
la $s0, v
sw $s3, 0($s0)
la $s3, ad
lw $s2, 0($s3)
sub $s2, $s2, $t2
la $s0, w
sw $t6, 0($s0)
la $s6, c
lw $t6, 0($s6)
move $s1, $t6
la $s0, x
sw $t9, 0($s0)
la $t9, d
lw $t8, 0($t9)
add $s1, $s1, $t8
la $s0, y
sw $s4, 0($s0)
la $s4, e
lw $t5, 0($s4)
add $s1, $s1, $t5
la $s0, z
sw $t7, 0($s0)
la $t7, f
lw $t1, 0($t7)
add $s1, $s1, $t1
la $s0, aa
sw $t4, 0($s0)
sw $t2, 0($t3)
la $t4, g
lw $t2, 0($t4)
add $s1, $s1, $t2
la $t3, h
lw $s5, 0($t3)
add $s1, $s1, $s5
la $s0, ab
sw $t0, 0($s0)
sw $s2, 0($s3)
la $t0, i
lw $s2, 0($t0)
add $s1, $s1, $s2
la $s3, j
lw $s6, 0($s3)
add $s1, $s1, $s6
la $s0, c
sw $t6, 0($s0)
la $s0, ah
sw $s1, 0($s0)
la $t6, k
lw $s1, 0($t6)
la $s0, d
sw $t8, 0($s0)
la $t8, ah
lw $t9, 0($t8)
add $t9, $t9, $s1
la $s0, e
sw $t5, 0($s0)
la $s4, l
lw $t5, 0($s4)
add $t9, $t9, $t5
la $s0, f
sw $t1, 0($s0)
la $t7, m
lw $t1, 0($t7)
add $t9, $t9, $t1
la $s0, g
sw $t2, 0($s0)
la $t4, n
lw $t2, 0($t4)
add $t9, $t9, $t2
la $s0, h
sw $s5, 0($s0)
la $t3, o
lw $s5, 0($t3)
add $t9, $t9, $s5
la $s0, i
sw $s2, 0($s0)
la $t0, p
lw $s2, 0($t0)
add $t9, $t9, $s2
la $s0, j
sw $s6, 0($s0)
la $s3, q
lw $s6, 0($s3)
add $t9, $t9, $s6
la $s0, k
sw $s1, 0($s0)
la $t6, r
lw $s1, 0($t6)
add $t9, $t9, $s1
sw $t9, 0($t8)
la $t9, s
lw $t8, 0($t9)
la $s0, l
sw $t5, 0($s0)
la $t5, ah
lw $s4, 0($t5)
add $s4, $s4, $t8
la $s0, m
sw $t1, 0($s0)
la $t7, t
lw $t1, 0($t7)
add $s4, $s4, $t1
la $s0, n
sw $t2, 0($s0)
la $t4, u
lw $t2, 0($t4)
add $s4, $s4, $t2
la $s0, o
sw $s5, 0($s0)
la $t3, v
lw $s5, 0($t3)
add $s4, $s4, $s5
la $s0, p
sw $s2, 0($s0)
la $t0, w
lw $s2, 0($t0)
add $s4, $s4, $s2
la $s0, q
sw $s6, 0($s0)
la $s3, x
lw $s6, 0($s3)
add $s4, $s4, $s6
la $s0, r
sw $s1, 0($s0)
la $t6, y
lw $s1, 0($t6)
add $s4, $s4, $s1
la $s0, s
sw $t8, 0($s0)
la $t9, z
lw $t8, 0($t9)
add $s4, $s4, $t8
sw $s4, 0($t5)
la $s4, aa
lw $t5, 0($s4)
la $s0, t
sw $t1, 0($s0)
la $t1, ah
lw $t7, 0($t1)
add $t7, $t7, $t5
la $s0, u
sw $t2, 0($s0)
la $t4, ab
lw $t2, 0($t4)
add $t7, $t7, $t2
la $s0, v
sw $s5, 0($s0)
la $s5, ad
lw $t3, 0($s5)
add $t3, $t3, $t7
la $s0, w
sw $s2, 0($s0)
la $t0, c
lw $s2, 0($t0)
move $s3, $s2
la $s0, x
sw $s6, 0($s0)
la $s6, d
lw $t6, 0($s6)
add $s3, $s3, $t6
la $s0, y
sw $s1, 0($s0)
la $s1, e
lw $t9, 0($s1)
add $s3, $s3, $t9
la $s0, z
sw $t8, 0($s0)
la $t8, f
lw $s4, 0($t8)
add $s3, $s3, $s4
la $s0, aa
sw $t5, 0($s0)
sw $t7, 0($t1)
la $t5, g
lw $t7, 0($t5)
add $s3, $s3, $t7
la $t1, h
lw $t4, 0($t1)
add $s3, $s3, $t4
la $s0, ab
sw $t2, 0($s0)
sw $t3, 0($s5)
la $t2, i
lw $t3, 0($t2)
add $s3, $s3, $t3
la $s5, j
lw $t0, 0($s5)
add $s3, $s3, $t0
la $s0, c
sw $s2, 0($s0)
la $s0, ai
sw $s3, 0($s0)
la $s2, k
lw $s3, 0($s2)
la $s0, d
sw $t6, 0($s0)
la $t6, ai
lw $s6, 0($t6)
add $s6, $s6, $s3
la $s0, e
sw $t9, 0($s0)
la $s1, l
lw $t9, 0($s1)
add $s6, $s6, $t9
la $s0, f
sw $s4, 0($s0)
la $t8, m
lw $s4, 0($t8)
add $s6, $s6, $s4
la $s0, g
sw $t7, 0($s0)
la $t5, n
lw $t7, 0($t5)
add $s6, $s6, $t7
la $s0, h
sw $t4, 0($s0)
la $t1, o
lw $t4, 0($t1)
add $s6, $s6, $t4
la $s0, i
sw $t3, 0($s0)
la $t2, p
lw $t3, 0($t2)
add $s6, $s6, $t3
la $s0, j
sw $t0, 0($s0)
la $s5, q
lw $t0, 0($s5)
add $s6, $s6, $t0
la $s0, k
sw $s3, 0($s0)
la $s2, r
lw $s3, 0($s2)
add $s6, $s6, $s3
sw $s6, 0($t6)
la $s6, s
lw $t6, 0($s6)
la $s0, l
sw $t9, 0($s0)
la $t9, ai
lw $s1, 0($t9)
add $s1, $s1, $t6
la $s0, m
sw $s4, 0($s0)
la $t8, t
lw $s4, 0($t8)
add $s1, $s1, $s4
la $s0, n
sw $t7, 0($s0)
la $t5, u
lw $t7, 0($t5)
add $s1, $s1, $t7
la $s0, o
sw $t4, 0($s0)
la $t1, v
lw $t4, 0($t1)
add $s1, $s1, $t4
la $s0, p
sw $t3, 0($s0)
la $t2, w
lw $t3, 0($t2)
add $s1, $s1, $t3
la $s0, q
sw $t0, 0($s0)
la $s5, x
lw $t0, 0($s5)
add $s1, $s1, $t0
la $s0, r
sw $s3, 0($s0)
la $s2, y
lw $s3, 0($s2)
add $s1, $s1, $s3
la $s0, s
sw $t6, 0($s0)
la $s6, z
lw $t6, 0($s6)
add $s1, $s1, $t6
sw $s1, 0($t9)
la $s1, aa
lw $t9, 0($s1)
la $s0, t
sw $s4, 0($s0)
la $s4, ai
lw $t8, 0($s4)
add $t8, $t8, $t9
la $s0, u
sw $t7, 0($s0)
la $t5, ab
lw $t7, 0($t5)
add $t8, $t8, $t7
la $s0, v
sw $t4, 0($s0)
la $t4, ad
lw $t1, 0($t4)
sub $t1, $t1, $t8
la $s0, w
sw $t3, 0($s0)
la $t2, c
lw $t3, 0($t2)
move $s5, $t3
la $s0, x
sw $t0, 0($s0)
la $t0, d
lw $s2, 0($t0)
add $s5, $s5, $s2
la $s0, y
sw $s3, 0($s0)
la $s3, e
lw $s6, 0($s3)
add $s5, $s5, $s6
la $s0, z
sw $t6, 0($s0)
la $t6, f
lw $s1, 0($t6)
add $s5, $s5, $s1
la $s0, aa
sw $t9, 0($s0)
sw $t8, 0($s4)
la $t9, g
lw $t8, 0($t9)
add $s5, $s5, $t8
la $s4, h
lw $t5, 0($s4)
add $s5, $s5, $t5
la $s0, ab
sw $t7, 0($s0)
sw $t1, 0($t4)
la $t7, i
lw $t1, 0($t7)
add $s5, $s5, $t1
la $t4, j
lw $t2, 0($t4)
add $s5, $s5, $t2
la $s0, c
sw $t3, 0($s0)
la $s0, aj
sw $s5, 0($s0)
la $t3, k
lw $s5, 0($t3)
la $s0, d
sw $s2, 0($s0)
la $s2, aj
lw $t0, 0($s2)
add $t0, $t0, $s5
la $s0, e
sw $s6, 0($s0)
la $s3, l
lw $s6, 0($s3)
add $t0, $t0, $s6
la $s0, f
sw $s1, 0($s0)
la $t6, m
lw $s1, 0($t6)
add $t0, $t0, $s1
la $s0, g
sw $t8, 0($s0)
la $t9, n
lw $t8, 0($t9)
add $t0, $t0, $t8
la $s0, h
sw $t5, 0($s0)
la $s4, o
lw $t5, 0($s4)
add $t0, $t0, $t5
la $s0, i
sw $t1, 0($s0)
la $t7, p
lw $t1, 0($t7)
add $t0, $t0, $t1
la $s0, j
sw $t2, 0($s0)
la $t4, q
lw $t2, 0($t4)
add $t0, $t0, $t2
la $s0, k
sw $s5, 0($s0)
la $t3, r
lw $s5, 0($t3)
add $t0, $t0, $s5
sw $t0, 0($s2)
la $t0, s
lw $s2, 0($t0)
la $s0, l
sw $s6, 0($s0)
la $s6, aj
lw $s3, 0($s6)
add $s3, $s3, $s2
la $s0, m
sw $s1, 0($s0)
la $t6, t
lw $s1, 0($t6)
add $s3, $s3, $s1
la $s0, n
sw $t8, 0($s0)
la $t9, u
lw $t8, 0($t9)
add $s3, $s3, $t8
la $s0, o
sw $t5, 0($s0)
la $s4, v
lw $t5, 0($s4)
add $s3, $s3, $t5
la $s0, p
sw $t1, 0($s0)
la $t7, w
lw $t1, 0($t7)
add $s3, $s3, $t1
la $s0, q
sw $t2, 0($s0)
la $t4, x
lw $t2, 0($t4)
add $s3, $s3, $t2
la $s0, r
sw $s5, 0($s0)
la $t3, y
lw $s5, 0($t3)
add $s3, $s3, $s5
la $s0, s
sw $s2, 0($s0)
la $t0, z
lw $s2, 0($t0)
add $s3, $s3, $s2
sw $s3, 0($s6)
la $s3, aa
lw $s6, 0($s3)
la $s0, t
sw $s1, 0($s0)
la $s1, aj
lw $t6, 0($s1)
add $t6, $t6, $s6
la $s0, u
sw $t8, 0($s0)
la $t9, ab
lw $t8, 0($t9)
add $t6, $t6, $t8
la $s0, v
sw $t5, 0($s0)
la $t5, ad
lw $s4, 0($t5)
add $s4, $s4, $t6
li $v0, 1
move $a0, $s4
syscall
