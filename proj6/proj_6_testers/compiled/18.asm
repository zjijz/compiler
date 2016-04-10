.data
y:	.word	0	# w in original
h:	.word	0	# f in original
af:	.word	0	# temp_d in original
f:	.word	0	# d in original
c:	.word	0	# a in original
r:	.word	0	# p in original
t:	.word	0	# r in original
x:	.word	0	# v in original
z:	.word	0	# x in original
j:	.word	0	# h in original
w:	.word	0	# u in original
p:	.word	0	# n in original
d:	.word	0	# b in original
o:	.word	0	# m in original
ac:	.word	0	# temp_b in original
ah:	.word	0	# temp_f in original
ae:	.word	0	# temp_c in original
n:	.word	0	# l in original
q:	.word	0	# o in original
aa:	.word	0	# y in original
ag:	.word	0	# temp_e in original
k:	.word	0	# i in original
ai:	.word	0	# temp_g in original
ad:	.word	0	# temp_a in original
v:	.word	0	# t in original
aj:	.word	0	# temp_h in original
s:	.word	0	# q in original
l:	.word	0	# j in original
m:	.word	0	# k in original
i:	.word	0	# g in original
ab:	.word	0	# z in original
e:	.word	0	# c in original
u:	.word	0	# s in original
g:	.word	0	# e in original
.text
li $v0, 5
syscall
la $t7, c
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s2, d
lw $t6, 0($s2)
move $t6, $v0
li $v0, 5
syscall
la $s4, e
lw $s6, 0($s4)
move $s6, $v0
li $v0, 5
syscall
la $t0, f
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
la $s3, g
lw $s5, 0($s3)
move $s5, $v0
li $v0, 5
syscall
la $t4, h
lw $s1, 0($t4)
move $s1, $v0
li $v0, 5
syscall
la $t9, i
lw $t5, 0($t9)
move $t5, $v0
li $v0, 5
syscall
la $t8, j
lw $t2, 0($t8)
move $t2, $v0
li $v0, 5
syscall
la $s0, c
sw $t3, 0($s0)
la $t3, k
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s0, d
sw $t6, 0($s0)
la $t6, l
lw $s2, 0($t6)
move $s2, $v0
li $v0, 5
syscall
la $s0, e
sw $s6, 0($s0)
la $s6, m
lw $s4, 0($s6)
move $s4, $v0
li $v0, 5
syscall
la $s0, f
sw $t1, 0($s0)
la $t1, n
lw $t0, 0($t1)
move $t0, $v0
li $v0, 5
syscall
la $s0, g
sw $s5, 0($s0)
la $s5, o
lw $s3, 0($s5)
move $s3, $v0
li $v0, 5
syscall
la $s0, h
sw $s1, 0($s0)
la $s1, p
lw $t4, 0($s1)
move $t4, $v0
li $v0, 5
syscall
la $s0, i
sw $t5, 0($s0)
la $t5, q
lw $t9, 0($t5)
move $t9, $v0
li $v0, 5
syscall
la $s0, j
sw $t2, 0($s0)
la $t2, r
lw $t8, 0($t2)
move $t8, $v0
li $v0, 5
syscall
la $s0, k
sw $t7, 0($s0)
la $t7, s
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s0, l
sw $s2, 0($s0)
la $s2, t
lw $t6, 0($s2)
move $t6, $v0
li $v0, 5
syscall
la $s0, m
sw $s4, 0($s0)
la $s4, u
lw $s6, 0($s4)
move $s6, $v0
li $v0, 5
syscall
la $s0, n
sw $t0, 0($s0)
la $t0, v
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
la $s0, o
sw $s3, 0($s0)
la $s3, w
lw $s5, 0($s3)
move $s5, $v0
li $v0, 5
syscall
la $s0, p
sw $t4, 0($s0)
la $t4, x
lw $s1, 0($t4)
move $s1, $v0
li $v0, 5
syscall
la $s0, q
sw $t9, 0($s0)
la $t9, y
lw $t5, 0($t9)
move $t5, $v0
li $v0, 5
syscall
la $s0, r
sw $t8, 0($s0)
la $t8, z
lw $t2, 0($t8)
move $t2, $v0
li $v0, 5
syscall
la $s0, s
sw $t3, 0($s0)
la $t3, aa
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s0, t
sw $t6, 0($s0)
la $t6, ab
lw $s2, 0($t6)
move $s2, $v0
la $s0, u
sw $s6, 0($s0)
la $s4, c
lw $s6, 0($s4)
move $t0, $s6
la $s0, v
sw $t1, 0($s0)
la $t1, d
lw $s3, 0($t1)
add $t0, $t0, $s3
la $s0, w
sw $s5, 0($s0)
la $s5, e
lw $t4, 0($s5)
add $t0, $t0, $t4
la $s0, x
sw $s1, 0($s0)
la $s1, f
lw $t9, 0($s1)
add $t0, $t0, $t9
la $s0, y
sw $t5, 0($s0)
la $t5, g
lw $t8, 0($t5)
add $t0, $t0, $t8
la $s0, z
sw $t2, 0($s0)
la $t2, h
lw $t3, 0($t2)
add $t0, $t0, $t3
la $s0, aa
sw $t7, 0($s0)
la $t7, i
lw $t6, 0($t7)
add $t0, $t0, $t6
la $s0, ab
sw $s2, 0($s0)
la $s2, j
lw $s4, 0($s2)
add $t0, $t0, $s4
la $s0, c
sw $s6, 0($s0)
la $s0, ac
sw $t0, 0($s0)
la $s6, k
lw $t0, 0($s6)
la $s0, d
sw $s3, 0($s0)
la $s3, ac
lw $t1, 0($s3)
add $t1, $t1, $t0
la $s0, e
sw $t4, 0($s0)
la $s5, l
lw $t4, 0($s5)
add $t1, $t1, $t4
la $s0, f
sw $t9, 0($s0)
la $s1, m
lw $t9, 0($s1)
add $t1, $t1, $t9
la $s0, g
sw $t8, 0($s0)
la $t5, n
lw $t8, 0($t5)
add $t1, $t1, $t8
la $s0, h
sw $t3, 0($s0)
la $t2, o
lw $t3, 0($t2)
add $t1, $t1, $t3
la $s0, i
sw $t6, 0($s0)
la $t7, p
lw $t6, 0($t7)
add $t1, $t1, $t6
la $s0, j
sw $s4, 0($s0)
la $s2, q
lw $s4, 0($s2)
add $t1, $t1, $s4
la $s0, k
sw $t0, 0($s0)
la $s6, r
lw $t0, 0($s6)
add $t1, $t1, $t0
sw $t1, 0($s3)
la $t1, s
lw $s3, 0($t1)
la $s0, l
sw $t4, 0($s0)
la $t4, ac
lw $s5, 0($t4)
add $s5, $s5, $s3
la $s0, m
sw $t9, 0($s0)
la $s1, t
lw $t9, 0($s1)
add $s5, $s5, $t9
la $s0, n
sw $t8, 0($s0)
la $t5, u
lw $t8, 0($t5)
add $s5, $s5, $t8
la $s0, o
sw $t3, 0($s0)
la $t2, v
lw $t3, 0($t2)
add $s5, $s5, $t3
la $s0, p
sw $t6, 0($s0)
la $t7, w
lw $t6, 0($t7)
add $s5, $s5, $t6
la $s0, q
sw $s4, 0($s0)
la $s2, x
lw $s4, 0($s2)
add $s5, $s5, $s4
la $s0, r
sw $t0, 0($s0)
la $s6, y
lw $t0, 0($s6)
add $s5, $s5, $t0
la $s0, s
sw $s3, 0($s0)
la $t1, z
lw $s3, 0($t1)
add $s5, $s5, $s3
sw $s5, 0($t4)
la $s5, aa
lw $t4, 0($s5)
la $s0, t
sw $t9, 0($s0)
la $t9, ac
lw $s1, 0($t9)
add $s1, $s1, $t4
la $s0, u
sw $t8, 0($s0)
la $t5, ab
lw $t8, 0($t5)
add $s1, $s1, $t8
move $t2, $s1
la $s0, v
sw $t3, 0($s0)
la $t3, c
lw $t7, 0($t3)
la $s0, w
sw $t6, 0($s0)
move $t6, $t7
la $s0, x
sw $s4, 0($s0)
la $s2, d
lw $s4, 0($s2)
add $t6, $t6, $s4
la $s0, y
sw $t0, 0($s0)
la $s6, e
lw $t0, 0($s6)
add $t6, $t6, $t0
la $s0, z
sw $s3, 0($s0)
la $t1, f
lw $s3, 0($t1)
add $t6, $t6, $s3
la $s0, aa
sw $t4, 0($s0)
la $s5, g
lw $t4, 0($s5)
add $t6, $t6, $t4
sw $s1, 0($t9)
la $s1, h
lw $t9, 0($s1)
add $t6, $t6, $t9
la $s0, ab
sw $t8, 0($s0)
la $t5, i
lw $t8, 0($t5)
add $t6, $t6, $t8
la $s0, ad
sw $t2, 0($s0)
la $t2, j
lw $t3, 0($t2)
add $t6, $t6, $t3
la $s0, c
sw $t7, 0($s0)
la $s0, ae
sw $t6, 0($s0)
la $t7, k
lw $t6, 0($t7)
la $s0, d
sw $s4, 0($s0)
la $s4, ae
lw $s2, 0($s4)
add $s2, $s2, $t6
la $s0, e
sw $t0, 0($s0)
la $s6, l
lw $t0, 0($s6)
add $s2, $s2, $t0
la $s0, f
sw $s3, 0($s0)
la $t1, m
lw $s3, 0($t1)
add $s2, $s2, $s3
la $s0, g
sw $t4, 0($s0)
la $s5, n
lw $t4, 0($s5)
add $s2, $s2, $t4
la $s0, h
sw $t9, 0($s0)
la $s1, o
lw $t9, 0($s1)
add $s2, $s2, $t9
la $s0, i
sw $t8, 0($s0)
la $t5, p
lw $t8, 0($t5)
add $s2, $s2, $t8
la $s0, j
sw $t3, 0($s0)
la $t2, q
lw $t3, 0($t2)
add $s2, $s2, $t3
la $s0, k
sw $t6, 0($s0)
la $t7, r
lw $t6, 0($t7)
add $s2, $s2, $t6
sw $s2, 0($s4)
la $s2, s
lw $s4, 0($s2)
la $s0, l
sw $t0, 0($s0)
la $t0, ae
lw $s6, 0($t0)
add $s6, $s6, $s4
la $s0, m
sw $s3, 0($s0)
la $t1, t
lw $s3, 0($t1)
add $s6, $s6, $s3
la $s0, n
sw $t4, 0($s0)
la $s5, u
lw $t4, 0($s5)
add $s6, $s6, $t4
la $s0, o
sw $t9, 0($s0)
la $s1, v
lw $t9, 0($s1)
add $s6, $s6, $t9
la $s0, p
sw $t8, 0($s0)
la $t5, w
lw $t8, 0($t5)
add $s6, $s6, $t8
la $s0, q
sw $t3, 0($s0)
la $t2, x
lw $t3, 0($t2)
add $s6, $s6, $t3
la $s0, r
sw $t6, 0($s0)
la $t7, y
lw $t6, 0($t7)
add $s6, $s6, $t6
la $s0, s
sw $s4, 0($s0)
la $s2, z
lw $s4, 0($s2)
add $s6, $s6, $s4
sw $s6, 0($t0)
la $s6, aa
lw $t0, 0($s6)
la $s0, t
sw $s3, 0($s0)
la $s3, ae
lw $t1, 0($s3)
add $t1, $t1, $t0
la $s0, u
sw $t4, 0($s0)
la $s5, ab
lw $t4, 0($s5)
add $t1, $t1, $t4
la $s0, v
sw $t9, 0($s0)
la $t9, ad
lw $s1, 0($t9)
sub $s1, $s1, $t1
la $s0, w
sw $t8, 0($s0)
la $t5, c
lw $t8, 0($t5)
move $t2, $t8
la $s0, x
sw $t3, 0($s0)
la $t3, d
lw $t7, 0($t3)
add $t2, $t2, $t7
la $s0, y
sw $t6, 0($s0)
la $t6, e
lw $s2, 0($t6)
add $t2, $t2, $s2
la $s0, z
sw $s4, 0($s0)
la $s4, f
lw $s6, 0($s4)
add $t2, $t2, $s6
la $s0, aa
sw $t0, 0($s0)
sw $t1, 0($s3)
la $t0, g
lw $t1, 0($t0)
add $t2, $t2, $t1
la $s3, h
lw $s5, 0($s3)
add $t2, $t2, $s5
la $s0, ab
sw $t4, 0($s0)
sw $s1, 0($t9)
la $t4, i
lw $s1, 0($t4)
add $t2, $t2, $s1
la $t9, j
lw $t5, 0($t9)
add $t2, $t2, $t5
la $s0, c
sw $t8, 0($s0)
la $s0, af
sw $t2, 0($s0)
la $t8, k
lw $t2, 0($t8)
la $s0, d
sw $t7, 0($s0)
la $t7, af
lw $t3, 0($t7)
add $t3, $t3, $t2
la $s0, e
sw $s2, 0($s0)
la $t6, l
lw $s2, 0($t6)
add $t3, $t3, $s2
la $s0, f
sw $s6, 0($s0)
la $s4, m
lw $s6, 0($s4)
add $t3, $t3, $s6
la $s0, g
sw $t1, 0($s0)
la $t0, n
lw $t1, 0($t0)
add $t3, $t3, $t1
la $s0, h
sw $s5, 0($s0)
la $s3, o
lw $s5, 0($s3)
add $t3, $t3, $s5
la $s0, i
sw $s1, 0($s0)
la $t4, p
lw $s1, 0($t4)
add $t3, $t3, $s1
la $s0, j
sw $t5, 0($s0)
la $t9, q
lw $t5, 0($t9)
add $t3, $t3, $t5
la $s0, k
sw $t2, 0($s0)
la $t8, r
lw $t2, 0($t8)
add $t3, $t3, $t2
sw $t3, 0($t7)
la $t3, s
lw $t7, 0($t3)
la $s0, l
sw $s2, 0($s0)
la $s2, af
lw $t6, 0($s2)
add $t6, $t6, $t7
la $s0, m
sw $s6, 0($s0)
la $s4, t
lw $s6, 0($s4)
add $t6, $t6, $s6
la $s0, n
sw $t1, 0($s0)
la $t0, u
lw $t1, 0($t0)
add $t6, $t6, $t1
la $s0, o
sw $s5, 0($s0)
la $s3, v
lw $s5, 0($s3)
add $t6, $t6, $s5
la $s0, p
sw $s1, 0($s0)
la $t4, w
lw $s1, 0($t4)
add $t6, $t6, $s1
la $s0, q
sw $t5, 0($s0)
la $t9, x
lw $t5, 0($t9)
add $t6, $t6, $t5
la $s0, r
sw $t2, 0($s0)
la $t8, y
lw $t2, 0($t8)
add $t6, $t6, $t2
la $s0, s
sw $t7, 0($s0)
la $t3, z
lw $t7, 0($t3)
add $t6, $t6, $t7
sw $t6, 0($s2)
la $t6, aa
lw $s2, 0($t6)
la $s0, t
sw $s6, 0($s0)
la $s6, af
lw $s4, 0($s6)
add $s4, $s4, $s2
la $s0, u
sw $t1, 0($s0)
la $t0, ab
lw $t1, 0($t0)
add $s4, $s4, $t1
la $s0, v
sw $s5, 0($s0)
la $s5, ad
lw $s3, 0($s5)
add $s3, $s3, $s4
la $s0, w
sw $s1, 0($s0)
la $t4, c
lw $s1, 0($t4)
move $t9, $s1
la $s0, x
sw $t5, 0($s0)
la $t5, d
lw $t8, 0($t5)
add $t9, $t9, $t8
la $s0, y
sw $t2, 0($s0)
la $t2, e
lw $t3, 0($t2)
add $t9, $t9, $t3
la $s0, z
sw $t7, 0($s0)
la $t7, f
lw $t6, 0($t7)
add $t9, $t9, $t6
la $s0, aa
sw $s2, 0($s0)
sw $s4, 0($s6)
la $s2, g
lw $s4, 0($s2)
add $t9, $t9, $s4
la $s6, h
lw $t0, 0($s6)
add $t9, $t9, $t0
la $s0, ab
sw $t1, 0($s0)
sw $s3, 0($s5)
la $t1, i
lw $s3, 0($t1)
add $t9, $t9, $s3
la $s5, j
lw $t4, 0($s5)
add $t9, $t9, $t4
la $s0, c
sw $s1, 0($s0)
la $s0, ag
sw $t9, 0($s0)
la $s1, k
lw $t9, 0($s1)
la $s0, d
sw $t8, 0($s0)
la $t8, ag
lw $t5, 0($t8)
add $t5, $t5, $t9
la $s0, e
sw $t3, 0($s0)
la $t2, l
lw $t3, 0($t2)
add $t5, $t5, $t3
la $s0, f
sw $t6, 0($s0)
la $t7, m
lw $t6, 0($t7)
add $t5, $t5, $t6
la $s0, g
sw $s4, 0($s0)
la $s2, n
lw $s4, 0($s2)
add $t5, $t5, $s4
la $s0, h
sw $t0, 0($s0)
la $s6, o
lw $t0, 0($s6)
add $t5, $t5, $t0
la $s0, i
sw $s3, 0($s0)
la $t1, p
lw $s3, 0($t1)
add $t5, $t5, $s3
la $s0, j
sw $t4, 0($s0)
la $s5, q
lw $t4, 0($s5)
add $t5, $t5, $t4
la $s0, k
sw $t9, 0($s0)
la $s1, r
lw $t9, 0($s1)
add $t5, $t5, $t9
sw $t5, 0($t8)
la $t5, s
lw $t8, 0($t5)
la $s0, l
sw $t3, 0($s0)
la $t3, ag
lw $t2, 0($t3)
add $t2, $t2, $t8
la $s0, m
sw $t6, 0($s0)
la $t7, t
lw $t6, 0($t7)
add $t2, $t2, $t6
la $s0, n
sw $s4, 0($s0)
la $s2, u
lw $s4, 0($s2)
add $t2, $t2, $s4
la $s0, o
sw $t0, 0($s0)
la $s6, v
lw $t0, 0($s6)
add $t2, $t2, $t0
la $s0, p
sw $s3, 0($s0)
la $t1, w
lw $s3, 0($t1)
add $t2, $t2, $s3
la $s0, q
sw $t4, 0($s0)
la $s5, x
lw $t4, 0($s5)
add $t2, $t2, $t4
la $s0, r
sw $t9, 0($s0)
la $s1, y
lw $t9, 0($s1)
add $t2, $t2, $t9
la $s0, s
sw $t8, 0($s0)
la $t5, z
lw $t8, 0($t5)
add $t2, $t2, $t8
sw $t2, 0($t3)
la $t2, aa
lw $t3, 0($t2)
la $s0, t
sw $t6, 0($s0)
la $t6, ag
lw $t7, 0($t6)
add $t7, $t7, $t3
la $s0, u
sw $s4, 0($s0)
la $s2, ab
lw $s4, 0($s2)
add $t7, $t7, $s4
la $s0, v
sw $t0, 0($s0)
la $t0, ad
lw $s6, 0($t0)
sub $s6, $s6, $t7
la $s0, w
sw $s3, 0($s0)
la $t1, c
lw $s3, 0($t1)
move $s5, $s3
la $s0, x
sw $t4, 0($s0)
la $t4, d
lw $s1, 0($t4)
add $s5, $s5, $s1
la $s0, y
sw $t9, 0($s0)
la $t9, e
lw $t5, 0($t9)
add $s5, $s5, $t5
la $s0, z
sw $t8, 0($s0)
la $t8, f
lw $t2, 0($t8)
add $s5, $s5, $t2
la $s0, aa
sw $t3, 0($s0)
sw $t7, 0($t6)
la $t3, g
lw $t7, 0($t3)
add $s5, $s5, $t7
la $t6, h
lw $s2, 0($t6)
add $s5, $s5, $s2
la $s0, ab
sw $s4, 0($s0)
sw $s6, 0($t0)
la $s4, i
lw $s6, 0($s4)
add $s5, $s5, $s6
la $t0, j
lw $t1, 0($t0)
add $s5, $s5, $t1
la $s0, c
sw $s3, 0($s0)
la $s0, ah
sw $s5, 0($s0)
la $s3, k
lw $s5, 0($s3)
la $s0, d
sw $s1, 0($s0)
la $s1, ah
lw $t4, 0($s1)
add $t4, $t4, $s5
la $s0, e
sw $t5, 0($s0)
la $t9, l
lw $t5, 0($t9)
add $t4, $t4, $t5
la $s0, f
sw $t2, 0($s0)
la $t8, m
lw $t2, 0($t8)
add $t4, $t4, $t2
la $s0, g
sw $t7, 0($s0)
la $t3, n
lw $t7, 0($t3)
add $t4, $t4, $t7
la $s0, h
sw $s2, 0($s0)
la $t6, o
lw $s2, 0($t6)
add $t4, $t4, $s2
la $s0, i
sw $s6, 0($s0)
la $s4, p
lw $s6, 0($s4)
add $t4, $t4, $s6
la $s0, j
sw $t1, 0($s0)
la $t0, q
lw $t1, 0($t0)
add $t4, $t4, $t1
la $s0, k
sw $s5, 0($s0)
la $s3, r
lw $s5, 0($s3)
add $t4, $t4, $s5
sw $t4, 0($s1)
la $t4, s
lw $s1, 0($t4)
la $s0, l
sw $t5, 0($s0)
la $t5, ah
lw $t9, 0($t5)
add $t9, $t9, $s1
la $s0, m
sw $t2, 0($s0)
la $t8, t
lw $t2, 0($t8)
add $t9, $t9, $t2
la $s0, n
sw $t7, 0($s0)
la $t3, u
lw $t7, 0($t3)
add $t9, $t9, $t7
la $s0, o
sw $s2, 0($s0)
la $t6, v
lw $s2, 0($t6)
add $t9, $t9, $s2
la $s0, p
sw $s6, 0($s0)
la $s4, w
lw $s6, 0($s4)
add $t9, $t9, $s6
la $s0, q
sw $t1, 0($s0)
la $t0, x
lw $t1, 0($t0)
add $t9, $t9, $t1
la $s0, r
sw $s5, 0($s0)
la $s3, y
lw $s5, 0($s3)
add $t9, $t9, $s5
la $s0, s
sw $s1, 0($s0)
la $t4, z
lw $s1, 0($t4)
add $t9, $t9, $s1
sw $t9, 0($t5)
la $t9, aa
lw $t5, 0($t9)
la $s0, t
sw $t2, 0($s0)
la $t2, ah
lw $t8, 0($t2)
add $t8, $t8, $t5
la $s0, u
sw $t7, 0($s0)
la $t3, ab
lw $t7, 0($t3)
add $t8, $t8, $t7
la $s0, v
sw $s2, 0($s0)
la $s2, ad
lw $t6, 0($s2)
add $t6, $t6, $t8
la $s0, w
sw $s6, 0($s0)
la $s4, c
lw $s6, 0($s4)
move $t0, $s6
la $s0, x
sw $t1, 0($s0)
la $t1, d
lw $s3, 0($t1)
add $t0, $t0, $s3
la $s0, y
sw $s5, 0($s0)
la $s5, e
lw $t4, 0($s5)
add $t0, $t0, $t4
la $s0, z
sw $s1, 0($s0)
la $s1, f
lw $t9, 0($s1)
add $t0, $t0, $t9
la $s0, aa
sw $t5, 0($s0)
sw $t8, 0($t2)
la $t5, g
lw $t8, 0($t5)
add $t0, $t0, $t8
la $t2, h
lw $t3, 0($t2)
add $t0, $t0, $t3
la $s0, ab
sw $t7, 0($s0)
sw $t6, 0($s2)
la $t7, i
lw $t6, 0($t7)
add $t0, $t0, $t6
la $s2, j
lw $s4, 0($s2)
add $t0, $t0, $s4
la $s0, c
sw $s6, 0($s0)
la $s0, ai
sw $t0, 0($s0)
la $s6, k
lw $t0, 0($s6)
la $s0, d
sw $s3, 0($s0)
la $s3, ai
lw $t1, 0($s3)
add $t1, $t1, $t0
la $s0, e
sw $t4, 0($s0)
la $s5, l
lw $t4, 0($s5)
add $t1, $t1, $t4
la $s0, f
sw $t9, 0($s0)
la $s1, m
lw $t9, 0($s1)
add $t1, $t1, $t9
la $s0, g
sw $t8, 0($s0)
la $t5, n
lw $t8, 0($t5)
add $t1, $t1, $t8
la $s0, h
sw $t3, 0($s0)
la $t2, o
lw $t3, 0($t2)
add $t1, $t1, $t3
la $s0, i
sw $t6, 0($s0)
la $t7, p
lw $t6, 0($t7)
add $t1, $t1, $t6
la $s0, j
sw $s4, 0($s0)
la $s2, q
lw $s4, 0($s2)
add $t1, $t1, $s4
la $s0, k
sw $t0, 0($s0)
la $s6, r
lw $t0, 0($s6)
add $t1, $t1, $t0
sw $t1, 0($s3)
la $t1, s
lw $s3, 0($t1)
la $s0, l
sw $t4, 0($s0)
la $t4, ai
lw $s5, 0($t4)
add $s5, $s5, $s3
la $s0, m
sw $t9, 0($s0)
la $s1, t
lw $t9, 0($s1)
add $s5, $s5, $t9
la $s0, n
sw $t8, 0($s0)
la $t5, u
lw $t8, 0($t5)
add $s5, $s5, $t8
la $s0, o
sw $t3, 0($s0)
la $t2, v
lw $t3, 0($t2)
add $s5, $s5, $t3
la $s0, p
sw $t6, 0($s0)
la $t7, w
lw $t6, 0($t7)
add $s5, $s5, $t6
la $s0, q
sw $s4, 0($s0)
la $s2, x
lw $s4, 0($s2)
add $s5, $s5, $s4
la $s0, r
sw $t0, 0($s0)
la $s6, y
lw $t0, 0($s6)
add $s5, $s5, $t0
la $s0, s
sw $s3, 0($s0)
la $t1, z
lw $s3, 0($t1)
add $s5, $s5, $s3
sw $s5, 0($t4)
la $s5, aa
lw $t4, 0($s5)
la $s0, t
sw $t9, 0($s0)
la $t9, ai
lw $s1, 0($t9)
add $s1, $s1, $t4
la $s0, u
sw $t8, 0($s0)
la $t5, ab
lw $t8, 0($t5)
add $s1, $s1, $t8
la $s0, v
sw $t3, 0($s0)
la $t3, ad
lw $t2, 0($t3)
sub $t2, $t2, $s1
la $s0, w
sw $t6, 0($s0)
la $t7, c
lw $t6, 0($t7)
move $s2, $t6
la $s0, x
sw $s4, 0($s0)
la $s4, d
lw $s6, 0($s4)
add $s2, $s2, $s6
la $s0, y
sw $t0, 0($s0)
la $t0, e
lw $t1, 0($t0)
add $s2, $s2, $t1
la $s0, z
sw $s3, 0($s0)
la $s3, f
lw $s5, 0($s3)
add $s2, $s2, $s5
la $s0, aa
sw $t4, 0($s0)
sw $s1, 0($t9)
la $t4, g
lw $s1, 0($t4)
add $s2, $s2, $s1
la $t9, h
lw $t5, 0($t9)
add $s2, $s2, $t5
la $s0, ab
sw $t8, 0($s0)
sw $t2, 0($t3)
la $t8, i
lw $t2, 0($t8)
add $s2, $s2, $t2
la $t3, j
lw $t7, 0($t3)
add $s2, $s2, $t7
la $s0, c
sw $t6, 0($s0)
la $s0, aj
sw $s2, 0($s0)
la $t6, k
lw $s2, 0($t6)
la $s0, d
sw $s6, 0($s0)
la $s6, aj
lw $s4, 0($s6)
add $s4, $s4, $s2
la $s0, e
sw $t1, 0($s0)
la $t0, l
lw $t1, 0($t0)
add $s4, $s4, $t1
la $s0, f
sw $s5, 0($s0)
la $s3, m
lw $s5, 0($s3)
add $s4, $s4, $s5
la $s0, g
sw $s1, 0($s0)
la $t4, n
lw $s1, 0($t4)
add $s4, $s4, $s1
la $s0, h
sw $t5, 0($s0)
la $t9, o
lw $t5, 0($t9)
add $s4, $s4, $t5
la $s0, i
sw $t2, 0($s0)
la $t8, p
lw $t2, 0($t8)
add $s4, $s4, $t2
la $s0, j
sw $t7, 0($s0)
la $t3, q
lw $t7, 0($t3)
add $s4, $s4, $t7
la $s0, k
sw $s2, 0($s0)
la $t6, r
lw $s2, 0($t6)
add $s4, $s4, $s2
sw $s4, 0($s6)
la $s4, s
lw $s6, 0($s4)
la $s0, l
sw $t1, 0($s0)
la $t1, aj
lw $t0, 0($t1)
add $t0, $t0, $s6
la $s0, m
sw $s5, 0($s0)
la $s3, t
lw $s5, 0($s3)
add $t0, $t0, $s5
la $s0, n
sw $s1, 0($s0)
la $t4, u
lw $s1, 0($t4)
add $t0, $t0, $s1
la $s0, o
sw $t5, 0($s0)
la $t9, v
lw $t5, 0($t9)
add $t0, $t0, $t5
la $s0, p
sw $t2, 0($s0)
la $t8, w
lw $t2, 0($t8)
add $t0, $t0, $t2
la $s0, q
sw $t7, 0($s0)
la $t3, x
lw $t7, 0($t3)
add $t0, $t0, $t7
la $s0, r
sw $s2, 0($s0)
la $t6, y
lw $s2, 0($t6)
add $t0, $t0, $s2
la $s0, s
sw $s6, 0($s0)
la $s4, z
lw $s6, 0($s4)
add $t0, $t0, $s6
sw $t0, 0($t1)
la $t0, aa
lw $t1, 0($t0)
la $s0, t
sw $s5, 0($s0)
la $s5, aj
lw $s3, 0($s5)
add $s3, $s3, $t1
la $s0, u
sw $s1, 0($s0)
la $t4, ab
lw $s1, 0($t4)
add $s3, $s3, $s1
la $s0, v
sw $t5, 0($s0)
la $t5, ad
lw $t9, 0($t5)
add $t9, $t9, $s3
li $v0, 1
move $a0, $t9
syscall
