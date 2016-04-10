.data
g:	.word	0	# e in original
f:	.word	0	# d in original
o:	.word	0	# m in original
u:	.word	0	# s in original
y:	.word	0	# w in original
ad:	.word	0	# temp_a in original
p:	.word	0	# n in original
e:	.word	0	# c in original
ac:	.word	0	# temp_b in original
v:	.word	0	# t in original
w:	.word	0	# u in original
i:	.word	0	# g in original
q:	.word	0	# o in original
t:	.word	0	# r in original
n:	.word	0	# l in original
ah:	.word	0	# temp_f in original
ab:	.word	0	# z in original
k:	.word	0	# i in original
m:	.word	0	# k in original
af:	.word	0	# temp_d in original
l:	.word	0	# j in original
ai:	.word	0	# temp_g in original
x:	.word	0	# v in original
ag:	.word	0	# temp_e in original
s:	.word	0	# q in original
r:	.word	0	# p in original
j:	.word	0	# h in original
aj:	.word	0	# temp_h in original
ae:	.word	0	# temp_c in original
aa:	.word	0	# y in original
z:	.word	0	# x in original
c:	.word	0	# a in original
h:	.word	0	# f in original
d:	.word	0	# b in original
.text
li $v0, 5
syscall
la $t3, c
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $t5, d
lw $t9, 0($t5)
move $t9, $v0
li $v0, 5
syscall
la $s2, e
lw $s5, 0($s2)
move $s5, $v0
li $v0, 5
syscall
la $t1, f
lw $t4, 0($t1)
move $t4, $v0
li $v0, 5
syscall
la $t8, g
lw $s3, 0($t8)
move $s3, $v0
li $v0, 5
syscall
la $t0, h
lw $t6, 0($t0)
move $t6, $v0
li $v0, 5
syscall
la $t2, i
lw $s6, 0($t2)
move $s6, $v0
li $v0, 5
syscall
la $s4, j
lw $s1, 0($s4)
move $s1, $v0
li $v0, 5
syscall
la $s0, c
sw $t7, 0($s0)
la $t7, k
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s0, d
sw $t9, 0($s0)
la $t9, l
lw $t5, 0($t9)
move $t5, $v0
li $v0, 5
syscall
la $s0, e
sw $s5, 0($s0)
la $s5, m
lw $s2, 0($s5)
move $s2, $v0
li $v0, 5
syscall
la $s0, f
sw $t4, 0($s0)
la $t4, n
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $s0, g
sw $s3, 0($s0)
la $s3, o
lw $t8, 0($s3)
move $t8, $v0
li $v0, 5
syscall
la $s0, h
sw $t6, 0($s0)
la $t6, p
lw $t0, 0($t6)
move $t0, $v0
li $v0, 5
syscall
la $s0, i
sw $s6, 0($s0)
la $s6, q
lw $t2, 0($s6)
move $t2, $v0
li $v0, 5
syscall
la $s0, j
sw $s1, 0($s0)
la $s1, r
lw $s4, 0($s1)
move $s4, $v0
li $v0, 5
syscall
la $s0, k
sw $t3, 0($s0)
la $t3, s
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s0, l
sw $t5, 0($s0)
la $t5, t
lw $t9, 0($t5)
move $t9, $v0
li $v0, 5
syscall
la $s0, m
sw $s2, 0($s0)
la $s2, u
lw $s5, 0($s2)
move $s5, $v0
li $v0, 5
syscall
la $s0, n
sw $t1, 0($s0)
la $t1, v
lw $t4, 0($t1)
move $t4, $v0
li $v0, 5
syscall
la $s0, o
sw $t8, 0($s0)
la $t8, w
lw $s3, 0($t8)
move $s3, $v0
li $v0, 5
syscall
la $s0, p
sw $t0, 0($s0)
la $t0, x
lw $t6, 0($t0)
move $t6, $v0
li $v0, 5
syscall
la $s0, q
sw $t2, 0($s0)
la $t2, y
lw $s6, 0($t2)
move $s6, $v0
li $v0, 5
syscall
la $s0, r
sw $s4, 0($s0)
la $s4, z
lw $s1, 0($s4)
move $s1, $v0
li $v0, 5
syscall
la $s0, s
sw $t7, 0($s0)
la $t7, aa
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s0, t
sw $t9, 0($s0)
la $t9, ab
lw $t5, 0($t9)
move $t5, $v0
la $s0, u
sw $s5, 0($s0)
la $s2, c
lw $s5, 0($s2)
move $t1, $s5
la $s0, v
sw $t4, 0($s0)
la $t4, d
lw $t8, 0($t4)
add $t1, $t1, $t8
la $s0, w
sw $s3, 0($s0)
la $s3, e
lw $t0, 0($s3)
add $t1, $t1, $t0
la $s0, x
sw $t6, 0($s0)
la $t6, f
lw $t2, 0($t6)
add $t1, $t1, $t2
la $s0, y
sw $s6, 0($s0)
la $s6, g
lw $s4, 0($s6)
add $t1, $t1, $s4
la $s0, z
sw $s1, 0($s0)
la $s1, h
lw $t7, 0($s1)
add $t1, $t1, $t7
la $s0, aa
sw $t3, 0($s0)
la $t3, i
lw $t9, 0($t3)
add $t1, $t1, $t9
la $s0, ab
sw $t5, 0($s0)
la $t5, j
lw $s2, 0($t5)
add $t1, $t1, $s2
la $s0, c
sw $s5, 0($s0)
la $s0, ac
sw $t1, 0($s0)
la $s5, k
lw $t1, 0($s5)
la $s0, d
sw $t8, 0($s0)
la $t8, ac
lw $t4, 0($t8)
add $t4, $t4, $t1
la $s0, e
sw $t0, 0($s0)
la $s3, l
lw $t0, 0($s3)
add $t4, $t4, $t0
la $s0, f
sw $t2, 0($s0)
la $t6, m
lw $t2, 0($t6)
add $t4, $t4, $t2
la $s0, g
sw $s4, 0($s0)
la $s6, n
lw $s4, 0($s6)
add $t4, $t4, $s4
la $s0, h
sw $t7, 0($s0)
la $s1, o
lw $t7, 0($s1)
add $t4, $t4, $t7
la $s0, i
sw $t9, 0($s0)
la $t3, p
lw $t9, 0($t3)
add $t4, $t4, $t9
la $s0, j
sw $s2, 0($s0)
la $t5, q
lw $s2, 0($t5)
add $t4, $t4, $s2
la $s0, k
sw $t1, 0($s0)
la $s5, r
lw $t1, 0($s5)
add $t4, $t4, $t1
sw $t4, 0($t8)
la $t4, s
lw $t8, 0($t4)
la $s0, l
sw $t0, 0($s0)
la $t0, ac
lw $s3, 0($t0)
add $s3, $s3, $t8
la $s0, m
sw $t2, 0($s0)
la $t6, t
lw $t2, 0($t6)
add $s3, $s3, $t2
la $s0, n
sw $s4, 0($s0)
la $s6, u
lw $s4, 0($s6)
add $s3, $s3, $s4
la $s0, o
sw $t7, 0($s0)
la $s1, v
lw $t7, 0($s1)
add $s3, $s3, $t7
la $s0, p
sw $t9, 0($s0)
la $t3, w
lw $t9, 0($t3)
add $s3, $s3, $t9
la $s0, q
sw $s2, 0($s0)
la $t5, x
lw $s2, 0($t5)
add $s3, $s3, $s2
la $s0, r
sw $t1, 0($s0)
la $s5, y
lw $t1, 0($s5)
add $s3, $s3, $t1
la $s0, s
sw $t8, 0($s0)
la $t4, z
lw $t8, 0($t4)
add $s3, $s3, $t8
sw $s3, 0($t0)
la $s3, aa
lw $t0, 0($s3)
la $s0, t
sw $t2, 0($s0)
la $t2, ac
lw $t6, 0($t2)
add $t6, $t6, $t0
la $s0, u
sw $s4, 0($s0)
la $s6, ab
lw $s4, 0($s6)
add $t6, $t6, $s4
move $s1, $t6
la $s0, v
sw $t7, 0($s0)
la $t7, c
lw $t3, 0($t7)
la $s0, w
sw $t9, 0($s0)
move $t9, $t3
la $s0, x
sw $s2, 0($s0)
la $t5, d
lw $s2, 0($t5)
add $t9, $t9, $s2
la $s0, y
sw $t1, 0($s0)
la $s5, e
lw $t1, 0($s5)
add $t9, $t9, $t1
la $s0, z
sw $t8, 0($s0)
la $t4, f
lw $t8, 0($t4)
add $t9, $t9, $t8
la $s0, aa
sw $t0, 0($s0)
la $s3, g
lw $t0, 0($s3)
add $t9, $t9, $t0
sw $t6, 0($t2)
la $t6, h
lw $t2, 0($t6)
add $t9, $t9, $t2
la $s0, ab
sw $s4, 0($s0)
la $s6, i
lw $s4, 0($s6)
add $t9, $t9, $s4
la $s0, ad
sw $s1, 0($s0)
la $s1, j
lw $t7, 0($s1)
add $t9, $t9, $t7
la $s0, c
sw $t3, 0($s0)
la $s0, ae
sw $t9, 0($s0)
la $t3, k
lw $t9, 0($t3)
la $s0, d
sw $s2, 0($s0)
la $s2, ae
lw $t5, 0($s2)
add $t5, $t5, $t9
la $s0, e
sw $t1, 0($s0)
la $s5, l
lw $t1, 0($s5)
add $t5, $t5, $t1
la $s0, f
sw $t8, 0($s0)
la $t4, m
lw $t8, 0($t4)
add $t5, $t5, $t8
la $s0, g
sw $t0, 0($s0)
la $s3, n
lw $t0, 0($s3)
add $t5, $t5, $t0
la $s0, h
sw $t2, 0($s0)
la $t6, o
lw $t2, 0($t6)
add $t5, $t5, $t2
la $s0, i
sw $s4, 0($s0)
la $s6, p
lw $s4, 0($s6)
add $t5, $t5, $s4
la $s0, j
sw $t7, 0($s0)
la $s1, q
lw $t7, 0($s1)
add $t5, $t5, $t7
la $s0, k
sw $t9, 0($s0)
la $t3, r
lw $t9, 0($t3)
add $t5, $t5, $t9
sw $t5, 0($s2)
la $t5, s
lw $s2, 0($t5)
la $s0, l
sw $t1, 0($s0)
la $t1, ae
lw $s5, 0($t1)
add $s5, $s5, $s2
la $s0, m
sw $t8, 0($s0)
la $t4, t
lw $t8, 0($t4)
add $s5, $s5, $t8
la $s0, n
sw $t0, 0($s0)
la $s3, u
lw $t0, 0($s3)
add $s5, $s5, $t0
la $s0, o
sw $t2, 0($s0)
la $t6, v
lw $t2, 0($t6)
add $s5, $s5, $t2
la $s0, p
sw $s4, 0($s0)
la $s6, w
lw $s4, 0($s6)
add $s5, $s5, $s4
la $s0, q
sw $t7, 0($s0)
la $s1, x
lw $t7, 0($s1)
add $s5, $s5, $t7
la $s0, r
sw $t9, 0($s0)
la $t3, y
lw $t9, 0($t3)
add $s5, $s5, $t9
la $s0, s
sw $s2, 0($s0)
la $t5, z
lw $s2, 0($t5)
add $s5, $s5, $s2
sw $s5, 0($t1)
la $s5, aa
lw $t1, 0($s5)
la $s0, t
sw $t8, 0($s0)
la $t8, ae
lw $t4, 0($t8)
add $t4, $t4, $t1
la $s0, u
sw $t0, 0($s0)
la $s3, ab
lw $t0, 0($s3)
add $t4, $t4, $t0
la $s0, v
sw $t2, 0($s0)
la $t2, ad
lw $t6, 0($t2)
sub $t6, $t6, $t4
la $s0, w
sw $s4, 0($s0)
la $s6, c
lw $s4, 0($s6)
move $s1, $s4
la $s0, x
sw $t7, 0($s0)
la $t7, d
lw $t3, 0($t7)
add $s1, $s1, $t3
la $s0, y
sw $t9, 0($s0)
la $t9, e
lw $t5, 0($t9)
add $s1, $s1, $t5
la $s0, z
sw $s2, 0($s0)
la $s2, f
lw $s5, 0($s2)
add $s1, $s1, $s5
la $s0, aa
sw $t1, 0($s0)
sw $t4, 0($t8)
la $t1, g
lw $t4, 0($t1)
add $s1, $s1, $t4
la $t8, h
lw $s3, 0($t8)
add $s1, $s1, $s3
la $s0, ab
sw $t0, 0($s0)
sw $t6, 0($t2)
la $t0, i
lw $t6, 0($t0)
add $s1, $s1, $t6
la $t2, j
lw $s6, 0($t2)
add $s1, $s1, $s6
la $s0, c
sw $s4, 0($s0)
la $s0, af
sw $s1, 0($s0)
la $s4, k
lw $s1, 0($s4)
la $s0, d
sw $t3, 0($s0)
la $t3, af
lw $t7, 0($t3)
add $t7, $t7, $s1
la $s0, e
sw $t5, 0($s0)
la $t9, l
lw $t5, 0($t9)
add $t7, $t7, $t5
la $s0, f
sw $s5, 0($s0)
la $s2, m
lw $s5, 0($s2)
add $t7, $t7, $s5
la $s0, g
sw $t4, 0($s0)
la $t1, n
lw $t4, 0($t1)
add $t7, $t7, $t4
la $s0, h
sw $s3, 0($s0)
la $t8, o
lw $s3, 0($t8)
add $t7, $t7, $s3
la $s0, i
sw $t6, 0($s0)
la $t0, p
lw $t6, 0($t0)
add $t7, $t7, $t6
la $s0, j
sw $s6, 0($s0)
la $t2, q
lw $s6, 0($t2)
add $t7, $t7, $s6
la $s0, k
sw $s1, 0($s0)
la $s4, r
lw $s1, 0($s4)
add $t7, $t7, $s1
sw $t7, 0($t3)
la $t7, s
lw $t3, 0($t7)
la $s0, l
sw $t5, 0($s0)
la $t5, af
lw $t9, 0($t5)
add $t9, $t9, $t3
la $s0, m
sw $s5, 0($s0)
la $s2, t
lw $s5, 0($s2)
add $t9, $t9, $s5
la $s0, n
sw $t4, 0($s0)
la $t1, u
lw $t4, 0($t1)
add $t9, $t9, $t4
la $s0, o
sw $s3, 0($s0)
la $t8, v
lw $s3, 0($t8)
add $t9, $t9, $s3
la $s0, p
sw $t6, 0($s0)
la $t0, w
lw $t6, 0($t0)
add $t9, $t9, $t6
la $s0, q
sw $s6, 0($s0)
la $t2, x
lw $s6, 0($t2)
add $t9, $t9, $s6
la $s0, r
sw $s1, 0($s0)
la $s4, y
lw $s1, 0($s4)
add $t9, $t9, $s1
la $s0, s
sw $t3, 0($s0)
la $t7, z
lw $t3, 0($t7)
add $t9, $t9, $t3
sw $t9, 0($t5)
la $t9, aa
lw $t5, 0($t9)
la $s0, t
sw $s5, 0($s0)
la $s5, af
lw $s2, 0($s5)
add $s2, $s2, $t5
la $s0, u
sw $t4, 0($s0)
la $t1, ab
lw $t4, 0($t1)
add $s2, $s2, $t4
la $s0, v
sw $s3, 0($s0)
la $s3, ad
lw $t8, 0($s3)
add $t8, $t8, $s2
la $s0, w
sw $t6, 0($s0)
la $t0, c
lw $t6, 0($t0)
move $t2, $t6
la $s0, x
sw $s6, 0($s0)
la $s6, d
lw $s4, 0($s6)
add $t2, $t2, $s4
la $s0, y
sw $s1, 0($s0)
la $s1, e
lw $t7, 0($s1)
add $t2, $t2, $t7
la $s0, z
sw $t3, 0($s0)
la $t3, f
lw $t9, 0($t3)
add $t2, $t2, $t9
la $s0, aa
sw $t5, 0($s0)
sw $s2, 0($s5)
la $t5, g
lw $s2, 0($t5)
add $t2, $t2, $s2
la $s5, h
lw $t1, 0($s5)
add $t2, $t2, $t1
la $s0, ab
sw $t4, 0($s0)
sw $t8, 0($s3)
la $t4, i
lw $t8, 0($t4)
add $t2, $t2, $t8
la $s3, j
lw $t0, 0($s3)
add $t2, $t2, $t0
la $s0, c
sw $t6, 0($s0)
la $s0, ag
sw $t2, 0($s0)
la $t6, k
lw $t2, 0($t6)
la $s0, d
sw $s4, 0($s0)
la $s4, ag
lw $s6, 0($s4)
add $s6, $s6, $t2
la $s0, e
sw $t7, 0($s0)
la $s1, l
lw $t7, 0($s1)
add $s6, $s6, $t7
la $s0, f
sw $t9, 0($s0)
la $t3, m
lw $t9, 0($t3)
add $s6, $s6, $t9
la $s0, g
sw $s2, 0($s0)
la $t5, n
lw $s2, 0($t5)
add $s6, $s6, $s2
la $s0, h
sw $t1, 0($s0)
la $s5, o
lw $t1, 0($s5)
add $s6, $s6, $t1
la $s0, i
sw $t8, 0($s0)
la $t4, p
lw $t8, 0($t4)
add $s6, $s6, $t8
la $s0, j
sw $t0, 0($s0)
la $s3, q
lw $t0, 0($s3)
add $s6, $s6, $t0
la $s0, k
sw $t2, 0($s0)
la $t6, r
lw $t2, 0($t6)
add $s6, $s6, $t2
sw $s6, 0($s4)
la $s6, s
lw $s4, 0($s6)
la $s0, l
sw $t7, 0($s0)
la $t7, ag
lw $s1, 0($t7)
add $s1, $s1, $s4
la $s0, m
sw $t9, 0($s0)
la $t3, t
lw $t9, 0($t3)
add $s1, $s1, $t9
la $s0, n
sw $s2, 0($s0)
la $t5, u
lw $s2, 0($t5)
add $s1, $s1, $s2
la $s0, o
sw $t1, 0($s0)
la $s5, v
lw $t1, 0($s5)
add $s1, $s1, $t1
la $s0, p
sw $t8, 0($s0)
la $t4, w
lw $t8, 0($t4)
add $s1, $s1, $t8
la $s0, q
sw $t0, 0($s0)
la $s3, x
lw $t0, 0($s3)
add $s1, $s1, $t0
la $s0, r
sw $t2, 0($s0)
la $t6, y
lw $t2, 0($t6)
add $s1, $s1, $t2
la $s0, s
sw $s4, 0($s0)
la $s6, z
lw $s4, 0($s6)
add $s1, $s1, $s4
sw $s1, 0($t7)
la $s1, aa
lw $t7, 0($s1)
la $s0, t
sw $t9, 0($s0)
la $t9, ag
lw $t3, 0($t9)
add $t3, $t3, $t7
la $s0, u
sw $s2, 0($s0)
la $t5, ab
lw $s2, 0($t5)
add $t3, $t3, $s2
la $s0, v
sw $t1, 0($s0)
la $t1, ad
lw $s5, 0($t1)
sub $s5, $s5, $t3
la $s0, w
sw $t8, 0($s0)
la $t4, c
lw $t8, 0($t4)
move $s3, $t8
la $s0, x
sw $t0, 0($s0)
la $t0, d
lw $t6, 0($t0)
add $s3, $s3, $t6
la $s0, y
sw $t2, 0($s0)
la $t2, e
lw $s6, 0($t2)
add $s3, $s3, $s6
la $s0, z
sw $s4, 0($s0)
la $s4, f
lw $s1, 0($s4)
add $s3, $s3, $s1
la $s0, aa
sw $t7, 0($s0)
sw $t3, 0($t9)
la $t7, g
lw $t3, 0($t7)
add $s3, $s3, $t3
la $t9, h
lw $t5, 0($t9)
add $s3, $s3, $t5
la $s0, ab
sw $s2, 0($s0)
sw $s5, 0($t1)
la $s2, i
lw $s5, 0($s2)
add $s3, $s3, $s5
la $t1, j
lw $t4, 0($t1)
add $s3, $s3, $t4
la $s0, c
sw $t8, 0($s0)
la $s0, ah
sw $s3, 0($s0)
la $t8, k
lw $s3, 0($t8)
la $s0, d
sw $t6, 0($s0)
la $t6, ah
lw $t0, 0($t6)
add $t0, $t0, $s3
la $s0, e
sw $s6, 0($s0)
la $t2, l
lw $s6, 0($t2)
add $t0, $t0, $s6
la $s0, f
sw $s1, 0($s0)
la $s4, m
lw $s1, 0($s4)
add $t0, $t0, $s1
la $s0, g
sw $t3, 0($s0)
la $t7, n
lw $t3, 0($t7)
add $t0, $t0, $t3
la $s0, h
sw $t5, 0($s0)
la $t9, o
lw $t5, 0($t9)
add $t0, $t0, $t5
la $s0, i
sw $s5, 0($s0)
la $s2, p
lw $s5, 0($s2)
add $t0, $t0, $s5
la $s0, j
sw $t4, 0($s0)
la $t1, q
lw $t4, 0($t1)
add $t0, $t0, $t4
la $s0, k
sw $s3, 0($s0)
la $t8, r
lw $s3, 0($t8)
add $t0, $t0, $s3
sw $t0, 0($t6)
la $t0, s
lw $t6, 0($t0)
la $s0, l
sw $s6, 0($s0)
la $s6, ah
lw $t2, 0($s6)
add $t2, $t2, $t6
la $s0, m
sw $s1, 0($s0)
la $s4, t
lw $s1, 0($s4)
add $t2, $t2, $s1
la $s0, n
sw $t3, 0($s0)
la $t7, u
lw $t3, 0($t7)
add $t2, $t2, $t3
la $s0, o
sw $t5, 0($s0)
la $t9, v
lw $t5, 0($t9)
add $t2, $t2, $t5
la $s0, p
sw $s5, 0($s0)
la $s2, w
lw $s5, 0($s2)
add $t2, $t2, $s5
la $s0, q
sw $t4, 0($s0)
la $t1, x
lw $t4, 0($t1)
add $t2, $t2, $t4
la $s0, r
sw $s3, 0($s0)
la $t8, y
lw $s3, 0($t8)
add $t2, $t2, $s3
la $s0, s
sw $t6, 0($s0)
la $t0, z
lw $t6, 0($t0)
add $t2, $t2, $t6
sw $t2, 0($s6)
la $t2, aa
lw $s6, 0($t2)
la $s0, t
sw $s1, 0($s0)
la $s1, ah
lw $s4, 0($s1)
add $s4, $s4, $s6
la $s0, u
sw $t3, 0($s0)
la $t7, ab
lw $t3, 0($t7)
add $s4, $s4, $t3
la $s0, v
sw $t5, 0($s0)
la $t5, ad
lw $t9, 0($t5)
add $t9, $t9, $s4
la $s0, w
sw $s5, 0($s0)
la $s2, c
lw $s5, 0($s2)
move $t1, $s5
la $s0, x
sw $t4, 0($s0)
la $t4, d
lw $t8, 0($t4)
add $t1, $t1, $t8
la $s0, y
sw $s3, 0($s0)
la $s3, e
lw $t0, 0($s3)
add $t1, $t1, $t0
la $s0, z
sw $t6, 0($s0)
la $t6, f
lw $t2, 0($t6)
add $t1, $t1, $t2
la $s0, aa
sw $s6, 0($s0)
sw $s4, 0($s1)
la $s6, g
lw $s4, 0($s6)
add $t1, $t1, $s4
la $s1, h
lw $t7, 0($s1)
add $t1, $t1, $t7
la $s0, ab
sw $t3, 0($s0)
sw $t9, 0($t5)
la $t3, i
lw $t9, 0($t3)
add $t1, $t1, $t9
la $t5, j
lw $s2, 0($t5)
add $t1, $t1, $s2
la $s0, c
sw $s5, 0($s0)
la $s0, ai
sw $t1, 0($s0)
la $s5, k
lw $t1, 0($s5)
la $s0, d
sw $t8, 0($s0)
la $t8, ai
lw $t4, 0($t8)
add $t4, $t4, $t1
la $s0, e
sw $t0, 0($s0)
la $s3, l
lw $t0, 0($s3)
add $t4, $t4, $t0
la $s0, f
sw $t2, 0($s0)
la $t6, m
lw $t2, 0($t6)
add $t4, $t4, $t2
la $s0, g
sw $s4, 0($s0)
la $s6, n
lw $s4, 0($s6)
add $t4, $t4, $s4
la $s0, h
sw $t7, 0($s0)
la $s1, o
lw $t7, 0($s1)
add $t4, $t4, $t7
la $s0, i
sw $t9, 0($s0)
la $t3, p
lw $t9, 0($t3)
add $t4, $t4, $t9
la $s0, j
sw $s2, 0($s0)
la $t5, q
lw $s2, 0($t5)
add $t4, $t4, $s2
la $s0, k
sw $t1, 0($s0)
la $s5, r
lw $t1, 0($s5)
add $t4, $t4, $t1
sw $t4, 0($t8)
la $t4, s
lw $t8, 0($t4)
la $s0, l
sw $t0, 0($s0)
la $t0, ai
lw $s3, 0($t0)
add $s3, $s3, $t8
la $s0, m
sw $t2, 0($s0)
la $t6, t
lw $t2, 0($t6)
add $s3, $s3, $t2
la $s0, n
sw $s4, 0($s0)
la $s6, u
lw $s4, 0($s6)
add $s3, $s3, $s4
la $s0, o
sw $t7, 0($s0)
la $s1, v
lw $t7, 0($s1)
add $s3, $s3, $t7
la $s0, p
sw $t9, 0($s0)
la $t3, w
lw $t9, 0($t3)
add $s3, $s3, $t9
la $s0, q
sw $s2, 0($s0)
la $t5, x
lw $s2, 0($t5)
add $s3, $s3, $s2
la $s0, r
sw $t1, 0($s0)
la $s5, y
lw $t1, 0($s5)
add $s3, $s3, $t1
la $s0, s
sw $t8, 0($s0)
la $t4, z
lw $t8, 0($t4)
add $s3, $s3, $t8
sw $s3, 0($t0)
la $s3, aa
lw $t0, 0($s3)
la $s0, t
sw $t2, 0($s0)
la $t2, ai
lw $t6, 0($t2)
add $t6, $t6, $t0
la $s0, u
sw $s4, 0($s0)
la $s6, ab
lw $s4, 0($s6)
add $t6, $t6, $s4
la $s0, v
sw $t7, 0($s0)
la $t7, ad
lw $s1, 0($t7)
sub $s1, $s1, $t6
la $s0, w
sw $t9, 0($s0)
la $t3, c
lw $t9, 0($t3)
move $t5, $t9
la $s0, x
sw $s2, 0($s0)
la $s2, d
lw $s5, 0($s2)
add $t5, $t5, $s5
la $s0, y
sw $t1, 0($s0)
la $t1, e
lw $t4, 0($t1)
add $t5, $t5, $t4
la $s0, z
sw $t8, 0($s0)
la $t8, f
lw $s3, 0($t8)
add $t5, $t5, $s3
la $s0, aa
sw $t0, 0($s0)
sw $t6, 0($t2)
la $t0, g
lw $t6, 0($t0)
add $t5, $t5, $t6
la $t2, h
lw $s6, 0($t2)
add $t5, $t5, $s6
la $s0, ab
sw $s4, 0($s0)
sw $s1, 0($t7)
la $s4, i
lw $s1, 0($s4)
add $t5, $t5, $s1
la $t7, j
lw $t3, 0($t7)
add $t5, $t5, $t3
la $s0, c
sw $t9, 0($s0)
la $s0, aj
sw $t5, 0($s0)
la $t9, k
lw $t5, 0($t9)
la $s0, d
sw $s5, 0($s0)
la $s5, aj
lw $s2, 0($s5)
add $s2, $s2, $t5
la $s0, e
sw $t4, 0($s0)
la $t1, l
lw $t4, 0($t1)
add $s2, $s2, $t4
la $s0, f
sw $s3, 0($s0)
la $t8, m
lw $s3, 0($t8)
add $s2, $s2, $s3
la $s0, g
sw $t6, 0($s0)
la $t0, n
lw $t6, 0($t0)
add $s2, $s2, $t6
la $s0, h
sw $s6, 0($s0)
la $t2, o
lw $s6, 0($t2)
add $s2, $s2, $s6
la $s0, i
sw $s1, 0($s0)
la $s4, p
lw $s1, 0($s4)
add $s2, $s2, $s1
la $s0, j
sw $t3, 0($s0)
la $t7, q
lw $t3, 0($t7)
add $s2, $s2, $t3
la $s0, k
sw $t5, 0($s0)
la $t9, r
lw $t5, 0($t9)
add $s2, $s2, $t5
sw $s2, 0($s5)
la $s2, s
lw $s5, 0($s2)
la $s0, l
sw $t4, 0($s0)
la $t4, aj
lw $t1, 0($t4)
add $t1, $t1, $s5
la $s0, m
sw $s3, 0($s0)
la $t8, t
lw $s3, 0($t8)
add $t1, $t1, $s3
la $s0, n
sw $t6, 0($s0)
la $t0, u
lw $t6, 0($t0)
add $t1, $t1, $t6
la $s0, o
sw $s6, 0($s0)
la $t2, v
lw $s6, 0($t2)
add $t1, $t1, $s6
la $s0, p
sw $s1, 0($s0)
la $s4, w
lw $s1, 0($s4)
add $t1, $t1, $s1
la $s0, q
sw $t3, 0($s0)
la $t7, x
lw $t3, 0($t7)
add $t1, $t1, $t3
la $s0, r
sw $t5, 0($s0)
la $t9, y
lw $t5, 0($t9)
add $t1, $t1, $t5
la $s0, s
sw $s5, 0($s0)
la $s2, z
lw $s5, 0($s2)
add $t1, $t1, $s5
sw $t1, 0($t4)
la $t1, aa
lw $t4, 0($t1)
la $s0, t
sw $s3, 0($s0)
la $s3, aj
lw $t8, 0($s3)
add $t8, $t8, $t4
la $s0, u
sw $t6, 0($s0)
la $t0, ab
lw $t6, 0($t0)
add $t8, $t8, $t6
la $s0, v
sw $s6, 0($s0)
la $s6, ad
lw $t2, 0($s6)
add $t2, $t2, $t8
li $v0, 1
move $a0, $t2
syscall
