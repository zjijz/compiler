.data
e:	.word	0	# c in original
w:	.word	0	# u in original
s:	.word	0	# q in original
v:	.word	0	# t in original
o:	.word	0	# m in original
x:	.word	0	# v in original
j:	.word	0	# h in original
y:	.word	0	# w in original
ae:	.word	0	# temp_c in original
aj:	.word	0	# temp_h in original
c:	.word	0	# a in original
h:	.word	0	# f in original
f:	.word	0	# d in original
p:	.word	0	# n in original
ad:	.word	0	# temp_a in original
l:	.word	0	# j in original
n:	.word	0	# l in original
af:	.word	0	# temp_d in original
ac:	.word	0	# temp_b in original
ah:	.word	0	# temp_f in original
ai:	.word	0	# temp_g in original
r:	.word	0	# p in original
ag:	.word	0	# temp_e in original
u:	.word	0	# s in original
ab:	.word	0	# z in original
d:	.word	0	# b in original
z:	.word	0	# x in original
t:	.word	0	# r in original
i:	.word	0	# g in original
m:	.word	0	# k in original
aa:	.word	0	# y in original
g:	.word	0	# e in original
q:	.word	0	# o in original
k:	.word	0	# i in original
.text
la $s0, c
sw $t2, 0($s0)
la $s0, d
sw $s1, 0($s0)
la $s0, e
sw $t9, 0($s0)
la $s0, f
sw $t7, 0($s0)
la $s0, g
sw $s3, 0($s0)
la $s0, h
sw $s5, 0($s0)
la $s0, i
sw $t6, 0($s0)
la $s0, j
sw $t5, 0($s0)
la $s0, k
sw $t2, 0($s0)
la $s0, l
sw $s1, 0($s0)
la $s0, m
sw $t9, 0($s0)
la $s0, n
sw $t7, 0($s0)
la $s0, o
sw $s3, 0($s0)
la $s0, p
sw $s5, 0($s0)
la $s0, q
sw $t6, 0($s0)
la $s0, r
sw $t5, 0($s0)
la $s0, s
sw $t2, 0($s0)
la $s0, t
sw $s1, 0($s0)
li $v0, 5
syscall
la $s0, u
sw $t9, 0($s0)
la $t9, c
lw $s2, 0($t9)
move $s2, $v0
li $v0, 5
syscall
la $s0, v
sw $t7, 0($s0)
la $t7, d
lw $t4, 0($t7)
move $t4, $v0
li $v0, 5
syscall
la $s0, w
sw $s3, 0($s0)
la $s3, e
lw $t0, 0($s3)
move $t0, $v0
li $v0, 5
syscall
la $s0, x
sw $s5, 0($s0)
la $s5, f
lw $t1, 0($s5)
move $t1, $v0
li $v0, 5
syscall
la $s0, y
sw $t6, 0($s0)
la $t6, g
lw $s4, 0($t6)
move $s4, $v0
li $v0, 5
syscall
la $s0, z
sw $t5, 0($s0)
la $t5, h
lw $t8, 0($t5)
move $t8, $v0
li $v0, 5
syscall
la $s0, aa
sw $t2, 0($s0)
la $t2, i
lw $s6, 0($t2)
move $s6, $v0
li $v0, 5
syscall
la $s0, ab
sw $s1, 0($s0)
la $s1, j
lw $t3, 0($s1)
move $t3, $v0
li $v0, 5
syscall
la $s0, c
sw $s2, 0($s0)
la $s2, k
lw $t9, 0($s2)
move $t9, $v0
li $v0, 5
syscall
la $s0, d
sw $t4, 0($s0)
la $t4, l
lw $t7, 0($t4)
move $t7, $v0
li $v0, 5
syscall
la $s0, e
sw $t0, 0($s0)
la $t0, m
lw $s3, 0($t0)
move $s3, $v0
li $v0, 5
syscall
la $s0, f
sw $t1, 0($s0)
la $t1, n
lw $s5, 0($t1)
move $s5, $v0
li $v0, 5
syscall
la $s0, g
sw $s4, 0($s0)
la $s4, o
lw $t6, 0($s4)
move $t6, $v0
li $v0, 5
syscall
la $s0, h
sw $t8, 0($s0)
la $t8, p
lw $t5, 0($t8)
move $t5, $v0
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
sw $t3, 0($s0)
la $t3, r
lw $s1, 0($t3)
move $s1, $v0
li $v0, 5
syscall
la $s0, k
sw $t9, 0($s0)
la $t9, s
lw $s2, 0($t9)
move $s2, $v0
li $v0, 5
syscall
la $s0, l
sw $t7, 0($s0)
la $t7, t
lw $t4, 0($t7)
move $t4, $v0
li $v0, 5
syscall
la $s0, m
sw $s3, 0($s0)
la $s3, u
lw $t0, 0($s3)
move $t0, $v0
li $v0, 5
syscall
la $s0, n
sw $s5, 0($s0)
la $s5, v
lw $t1, 0($s5)
move $t1, $v0
li $v0, 5
syscall
la $s0, o
sw $t6, 0($s0)
la $t6, w
lw $s4, 0($t6)
move $s4, $v0
li $v0, 5
syscall
la $s0, p
sw $t5, 0($s0)
la $t5, x
lw $t8, 0($t5)
move $t8, $v0
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
sw $s1, 0($s0)
la $s1, z
lw $t3, 0($s1)
move $t3, $v0
li $v0, 5
syscall
la $s0, s
sw $s2, 0($s0)
la $s2, aa
lw $t9, 0($s2)
move $t9, $v0
li $v0, 5
syscall
la $s0, t
sw $t4, 0($s0)
la $t4, ab
lw $t7, 0($t4)
move $t7, $v0
la $s0, u
sw $t0, 0($s0)
la $s3, c
lw $t0, 0($s3)
move $s5, $t0
la $s0, v
sw $t1, 0($s0)
la $t1, d
lw $t6, 0($t1)
add $s5, $s5, $t6
la $s0, w
sw $s4, 0($s0)
la $s4, e
lw $t5, 0($s4)
add $s5, $s5, $t5
la $s0, x
sw $t8, 0($s0)
la $t8, f
lw $t2, 0($t8)
add $s5, $s5, $t2
la $s0, y
sw $s6, 0($s0)
la $s6, g
lw $s1, 0($s6)
add $s5, $s5, $s1
la $s0, z
sw $t3, 0($s0)
la $t3, h
lw $s2, 0($t3)
add $s5, $s5, $s2
la $s0, aa
sw $t9, 0($s0)
la $t9, i
lw $t4, 0($t9)
add $s5, $s5, $t4
la $s0, ab
sw $t7, 0($s0)
la $t7, j
lw $s3, 0($t7)
add $s5, $s5, $s3
la $s0, c
sw $t0, 0($s0)
la $s0, ac
sw $s5, 0($s0)
la $t0, k
lw $s5, 0($t0)
la $s0, d
sw $t6, 0($s0)
la $t6, ac
lw $t1, 0($t6)
add $t1, $t1, $s5
la $s0, e
sw $t5, 0($s0)
la $s4, l
lw $t5, 0($s4)
add $t1, $t1, $t5
la $s0, f
sw $t2, 0($s0)
la $t8, m
lw $t2, 0($t8)
add $t1, $t1, $t2
la $s0, g
sw $s1, 0($s0)
la $s6, n
lw $s1, 0($s6)
add $t1, $t1, $s1
la $s0, h
sw $s2, 0($s0)
la $t3, o
lw $s2, 0($t3)
add $t1, $t1, $s2
la $s0, i
sw $t4, 0($s0)
la $t9, p
lw $t4, 0($t9)
add $t1, $t1, $t4
la $s0, j
sw $s3, 0($s0)
la $t7, q
lw $s3, 0($t7)
add $t1, $t1, $s3
la $s0, k
sw $s5, 0($s0)
la $t0, r
lw $s5, 0($t0)
add $t1, $t1, $s5
sw $t1, 0($t6)
la $t1, s
lw $t6, 0($t1)
la $s0, l
sw $t5, 0($s0)
la $t5, ac
lw $s4, 0($t5)
add $s4, $s4, $t6
la $s0, m
sw $t2, 0($s0)
la $t8, t
lw $t2, 0($t8)
add $s4, $s4, $t2
la $s0, n
sw $s1, 0($s0)
la $s6, u
lw $s1, 0($s6)
add $s4, $s4, $s1
la $s0, o
sw $s2, 0($s0)
la $t3, v
lw $s2, 0($t3)
add $s4, $s4, $s2
la $s0, p
sw $t4, 0($s0)
la $t9, w
lw $t4, 0($t9)
add $s4, $s4, $t4
la $s0, q
sw $s3, 0($s0)
la $t7, x
lw $s3, 0($t7)
add $s4, $s4, $s3
la $s0, r
sw $s5, 0($s0)
la $t0, y
lw $s5, 0($t0)
add $s4, $s4, $s5
la $s0, s
sw $t6, 0($s0)
la $t1, z
lw $t6, 0($t1)
add $s4, $s4, $t6
sw $s4, 0($t5)
la $s4, aa
lw $t5, 0($s4)
la $s0, t
sw $t2, 0($s0)
la $t2, ac
lw $t8, 0($t2)
add $t8, $t8, $t5
la $s0, u
sw $s1, 0($s0)
la $s6, ab
lw $s1, 0($s6)
add $t8, $t8, $s1
move $t3, $t8
la $s0, v
sw $s2, 0($s0)
la $s2, c
lw $t9, 0($s2)
la $s0, w
sw $t4, 0($s0)
move $t4, $t9
la $s0, x
sw $s3, 0($s0)
la $t7, d
lw $s3, 0($t7)
add $t4, $t4, $s3
la $s0, y
sw $s5, 0($s0)
la $t0, e
lw $s5, 0($t0)
add $t4, $t4, $s5
la $s0, z
sw $t6, 0($s0)
la $t1, f
lw $t6, 0($t1)
add $t4, $t4, $t6
la $s0, aa
sw $t5, 0($s0)
la $s4, g
lw $t5, 0($s4)
add $t4, $t4, $t5
sw $t8, 0($t2)
la $t8, h
lw $t2, 0($t8)
add $t4, $t4, $t2
la $s0, ab
sw $s1, 0($s0)
la $s6, i
lw $s1, 0($s6)
add $t4, $t4, $s1
la $s0, ad
sw $t3, 0($s0)
la $t3, j
lw $s2, 0($t3)
add $t4, $t4, $s2
la $s0, c
sw $t9, 0($s0)
la $s0, ae
sw $t4, 0($s0)
la $t9, k
lw $t4, 0($t9)
la $s0, d
sw $s3, 0($s0)
la $s3, ae
lw $t7, 0($s3)
add $t7, $t7, $t4
la $s0, e
sw $s5, 0($s0)
la $t0, l
lw $s5, 0($t0)
add $t7, $t7, $s5
la $s0, f
sw $t6, 0($s0)
la $t1, m
lw $t6, 0($t1)
add $t7, $t7, $t6
la $s0, g
sw $t5, 0($s0)
la $s4, n
lw $t5, 0($s4)
add $t7, $t7, $t5
la $s0, h
sw $t2, 0($s0)
la $t8, o
lw $t2, 0($t8)
add $t7, $t7, $t2
la $s0, i
sw $s1, 0($s0)
la $s6, p
lw $s1, 0($s6)
add $t7, $t7, $s1
la $s0, j
sw $s2, 0($s0)
la $t3, q
lw $s2, 0($t3)
add $t7, $t7, $s2
la $s0, k
sw $t4, 0($s0)
la $t9, r
lw $t4, 0($t9)
add $t7, $t7, $t4
sw $t7, 0($s3)
la $t7, s
lw $s3, 0($t7)
la $s0, l
sw $s5, 0($s0)
la $s5, ae
lw $t0, 0($s5)
add $t0, $t0, $s3
la $s0, m
sw $t6, 0($s0)
la $t1, t
lw $t6, 0($t1)
add $t0, $t0, $t6
la $s0, n
sw $t5, 0($s0)
la $s4, u
lw $t5, 0($s4)
add $t0, $t0, $t5
la $s0, o
sw $t2, 0($s0)
la $t8, v
lw $t2, 0($t8)
add $t0, $t0, $t2
la $s0, p
sw $s1, 0($s0)
la $s6, w
lw $s1, 0($s6)
add $t0, $t0, $s1
la $s0, q
sw $s2, 0($s0)
la $t3, x
lw $s2, 0($t3)
add $t0, $t0, $s2
la $s0, r
sw $t4, 0($s0)
la $t9, y
lw $t4, 0($t9)
add $t0, $t0, $t4
la $s0, s
sw $s3, 0($s0)
la $t7, z
lw $s3, 0($t7)
add $t0, $t0, $s3
sw $t0, 0($s5)
la $t0, aa
lw $s5, 0($t0)
la $s0, t
sw $t6, 0($s0)
la $t6, ae
lw $t1, 0($t6)
add $t1, $t1, $s5
la $s0, u
sw $t5, 0($s0)
la $s4, ab
lw $t5, 0($s4)
add $t1, $t1, $t5
la $s0, v
sw $t2, 0($s0)
la $t2, ad
lw $t8, 0($t2)
sub $t8, $t8, $t1
la $s0, w
sw $s1, 0($s0)
la $s6, c
lw $s1, 0($s6)
move $t3, $s1
la $s0, x
sw $s2, 0($s0)
la $s2, d
lw $t9, 0($s2)
add $t3, $t3, $t9
la $s0, y
sw $t4, 0($s0)
la $t4, e
lw $t7, 0($t4)
add $t3, $t3, $t7
la $s0, z
sw $s3, 0($s0)
la $s3, f
lw $t0, 0($s3)
add $t3, $t3, $t0
la $s0, aa
sw $s5, 0($s0)
sw $t1, 0($t6)
la $s5, g
lw $t1, 0($s5)
add $t3, $t3, $t1
la $t6, h
lw $s4, 0($t6)
add $t3, $t3, $s4
la $s0, ab
sw $t5, 0($s0)
sw $t8, 0($t2)
la $t5, i
lw $t8, 0($t5)
add $t3, $t3, $t8
la $t2, j
lw $s6, 0($t2)
add $t3, $t3, $s6
la $s0, c
sw $s1, 0($s0)
la $s0, af
sw $t3, 0($s0)
la $s1, k
lw $t3, 0($s1)
la $s0, d
sw $t9, 0($s0)
la $t9, af
lw $s2, 0($t9)
add $s2, $s2, $t3
la $s0, e
sw $t7, 0($s0)
la $t4, l
lw $t7, 0($t4)
add $s2, $s2, $t7
la $s0, f
sw $t0, 0($s0)
la $s3, m
lw $t0, 0($s3)
add $s2, $s2, $t0
la $s0, g
sw $t1, 0($s0)
la $s5, n
lw $t1, 0($s5)
add $s2, $s2, $t1
la $s0, h
sw $s4, 0($s0)
la $t6, o
lw $s4, 0($t6)
add $s2, $s2, $s4
la $s0, i
sw $t8, 0($s0)
la $t5, p
lw $t8, 0($t5)
add $s2, $s2, $t8
la $s0, j
sw $s6, 0($s0)
la $t2, q
lw $s6, 0($t2)
add $s2, $s2, $s6
la $s0, k
sw $t3, 0($s0)
la $s1, r
lw $t3, 0($s1)
add $s2, $s2, $t3
sw $s2, 0($t9)
la $s2, s
lw $t9, 0($s2)
la $s0, l
sw $t7, 0($s0)
la $t7, af
lw $t4, 0($t7)
add $t4, $t4, $t9
la $s0, m
sw $t0, 0($s0)
la $s3, t
lw $t0, 0($s3)
add $t4, $t4, $t0
la $s0, n
sw $t1, 0($s0)
la $s5, u
lw $t1, 0($s5)
add $t4, $t4, $t1
la $s0, o
sw $s4, 0($s0)
la $t6, v
lw $s4, 0($t6)
add $t4, $t4, $s4
la $s0, p
sw $t8, 0($s0)
la $t5, w
lw $t8, 0($t5)
add $t4, $t4, $t8
la $s0, q
sw $s6, 0($s0)
la $t2, x
lw $s6, 0($t2)
add $t4, $t4, $s6
la $s0, r
sw $t3, 0($s0)
la $s1, y
lw $t3, 0($s1)
add $t4, $t4, $t3
la $s0, s
sw $t9, 0($s0)
la $s2, z
lw $t9, 0($s2)
add $t4, $t4, $t9
sw $t4, 0($t7)
la $t4, aa
lw $t7, 0($t4)
la $s0, t
sw $t0, 0($s0)
la $t0, af
lw $s3, 0($t0)
add $s3, $s3, $t7
la $s0, u
sw $t1, 0($s0)
la $s5, ab
lw $t1, 0($s5)
add $s3, $s3, $t1
la $s0, v
sw $s4, 0($s0)
la $s4, ad
lw $t6, 0($s4)
add $t6, $t6, $s3
la $s0, w
sw $t8, 0($s0)
la $t5, c
lw $t8, 0($t5)
move $t2, $t8
la $s0, x
sw $s6, 0($s0)
la $s6, d
lw $s1, 0($s6)
add $t2, $t2, $s1
la $s0, y
sw $t3, 0($s0)
la $t3, e
lw $s2, 0($t3)
add $t2, $t2, $s2
la $s0, z
sw $t9, 0($s0)
la $t9, f
lw $t4, 0($t9)
add $t2, $t2, $t4
la $s0, aa
sw $t7, 0($s0)
sw $s3, 0($t0)
la $t7, g
lw $s3, 0($t7)
add $t2, $t2, $s3
la $t0, h
lw $s5, 0($t0)
add $t2, $t2, $s5
la $s0, ab
sw $t1, 0($s0)
sw $t6, 0($s4)
la $t1, i
lw $t6, 0($t1)
add $t2, $t2, $t6
la $s4, j
lw $t5, 0($s4)
add $t2, $t2, $t5
la $s0, c
sw $t8, 0($s0)
la $s0, ag
sw $t2, 0($s0)
la $t8, k
lw $t2, 0($t8)
la $s0, d
sw $s1, 0($s0)
la $s1, ag
lw $s6, 0($s1)
add $s6, $s6, $t2
la $s0, e
sw $s2, 0($s0)
la $t3, l
lw $s2, 0($t3)
add $s6, $s6, $s2
la $s0, f
sw $t4, 0($s0)
la $t9, m
lw $t4, 0($t9)
add $s6, $s6, $t4
la $s0, g
sw $s3, 0($s0)
la $t7, n
lw $s3, 0($t7)
add $s6, $s6, $s3
la $s0, h
sw $s5, 0($s0)
la $t0, o
lw $s5, 0($t0)
add $s6, $s6, $s5
la $s0, i
sw $t6, 0($s0)
la $t1, p
lw $t6, 0($t1)
add $s6, $s6, $t6
la $s0, j
sw $t5, 0($s0)
la $s4, q
lw $t5, 0($s4)
add $s6, $s6, $t5
la $s0, k
sw $t2, 0($s0)
la $t8, r
lw $t2, 0($t8)
add $s6, $s6, $t2
sw $s6, 0($s1)
la $s6, s
lw $s1, 0($s6)
la $s0, l
sw $s2, 0($s0)
la $s2, ag
lw $t3, 0($s2)
add $t3, $t3, $s1
la $s0, m
sw $t4, 0($s0)
la $t9, t
lw $t4, 0($t9)
add $t3, $t3, $t4
la $s0, n
sw $s3, 0($s0)
la $t7, u
lw $s3, 0($t7)
add $t3, $t3, $s3
la $s0, o
sw $s5, 0($s0)
la $t0, v
lw $s5, 0($t0)
add $t3, $t3, $s5
la $s0, p
sw $t6, 0($s0)
la $t1, w
lw $t6, 0($t1)
add $t3, $t3, $t6
la $s0, q
sw $t5, 0($s0)
la $s4, x
lw $t5, 0($s4)
add $t3, $t3, $t5
la $s0, r
sw $t2, 0($s0)
la $t8, y
lw $t2, 0($t8)
add $t3, $t3, $t2
la $s0, s
sw $s1, 0($s0)
la $s6, z
lw $s1, 0($s6)
add $t3, $t3, $s1
sw $t3, 0($s2)
la $t3, aa
lw $s2, 0($t3)
la $s0, t
sw $t4, 0($s0)
la $t4, ag
lw $t9, 0($t4)
add $t9, $t9, $s2
la $s0, u
sw $s3, 0($s0)
la $t7, ab
lw $s3, 0($t7)
add $t9, $t9, $s3
la $s0, v
sw $s5, 0($s0)
la $s5, ad
lw $t0, 0($s5)
sub $t0, $t0, $t9
la $s0, w
sw $t6, 0($s0)
la $t1, c
lw $t6, 0($t1)
move $s4, $t6
la $s0, x
sw $t5, 0($s0)
la $t5, d
lw $t8, 0($t5)
add $s4, $s4, $t8
la $s0, y
sw $t2, 0($s0)
la $t2, e
lw $s6, 0($t2)
add $s4, $s4, $s6
la $s0, z
sw $s1, 0($s0)
la $s1, f
lw $t3, 0($s1)
add $s4, $s4, $t3
la $s0, aa
sw $s2, 0($s0)
sw $t9, 0($t4)
la $s2, g
lw $t9, 0($s2)
add $s4, $s4, $t9
la $t4, h
lw $t7, 0($t4)
add $s4, $s4, $t7
la $s0, ab
sw $s3, 0($s0)
sw $t0, 0($s5)
la $s3, i
lw $t0, 0($s3)
add $s4, $s4, $t0
la $s5, j
lw $t1, 0($s5)
add $s4, $s4, $t1
la $s0, c
sw $t6, 0($s0)
la $s0, ah
sw $s4, 0($s0)
la $t6, k
lw $s4, 0($t6)
la $s0, d
sw $t8, 0($s0)
la $t8, ah
lw $t5, 0($t8)
add $t5, $t5, $s4
la $s0, e
sw $s6, 0($s0)
la $t2, l
lw $s6, 0($t2)
add $t5, $t5, $s6
la $s0, f
sw $t3, 0($s0)
la $s1, m
lw $t3, 0($s1)
add $t5, $t5, $t3
la $s0, g
sw $t9, 0($s0)
la $s2, n
lw $t9, 0($s2)
add $t5, $t5, $t9
la $s0, h
sw $t7, 0($s0)
la $t4, o
lw $t7, 0($t4)
add $t5, $t5, $t7
la $s0, i
sw $t0, 0($s0)
la $s3, p
lw $t0, 0($s3)
add $t5, $t5, $t0
la $s0, j
sw $t1, 0($s0)
la $s5, q
lw $t1, 0($s5)
add $t5, $t5, $t1
la $s0, k
sw $s4, 0($s0)
la $t6, r
lw $s4, 0($t6)
add $t5, $t5, $s4
sw $t5, 0($t8)
la $t5, s
lw $t8, 0($t5)
la $s0, l
sw $s6, 0($s0)
la $s6, ah
lw $t2, 0($s6)
add $t2, $t2, $t8
la $s0, m
sw $t3, 0($s0)
la $s1, t
lw $t3, 0($s1)
add $t2, $t2, $t3
la $s0, n
sw $t9, 0($s0)
la $s2, u
lw $t9, 0($s2)
add $t2, $t2, $t9
la $s0, o
sw $t7, 0($s0)
la $t4, v
lw $t7, 0($t4)
add $t2, $t2, $t7
la $s0, p
sw $t0, 0($s0)
la $s3, w
lw $t0, 0($s3)
add $t2, $t2, $t0
la $s0, q
sw $t1, 0($s0)
la $s5, x
lw $t1, 0($s5)
add $t2, $t2, $t1
la $s0, r
sw $s4, 0($s0)
la $t6, y
lw $s4, 0($t6)
add $t2, $t2, $s4
la $s0, s
sw $t8, 0($s0)
la $t5, z
lw $t8, 0($t5)
add $t2, $t2, $t8
sw $t2, 0($s6)
la $t2, aa
lw $s6, 0($t2)
la $s0, t
sw $t3, 0($s0)
la $t3, ah
lw $s1, 0($t3)
add $s1, $s1, $s6
la $s0, u
sw $t9, 0($s0)
la $s2, ab
lw $t9, 0($s2)
add $s1, $s1, $t9
la $s0, v
sw $t7, 0($s0)
la $t7, ad
lw $t4, 0($t7)
add $t4, $t4, $s1
la $s0, w
sw $t0, 0($s0)
la $s3, c
lw $t0, 0($s3)
move $s5, $t0
la $s0, x
sw $t1, 0($s0)
la $t1, d
lw $t6, 0($t1)
add $s5, $s5, $t6
la $s0, y
sw $s4, 0($s0)
la $s4, e
lw $t5, 0($s4)
add $s5, $s5, $t5
la $s0, z
sw $t8, 0($s0)
la $t8, f
lw $t2, 0($t8)
add $s5, $s5, $t2
la $s0, aa
sw $s6, 0($s0)
sw $s1, 0($t3)
la $s6, g
lw $s1, 0($s6)
add $s5, $s5, $s1
la $t3, h
lw $s2, 0($t3)
add $s5, $s5, $s2
la $s0, ab
sw $t9, 0($s0)
sw $t4, 0($t7)
la $t9, i
lw $t4, 0($t9)
add $s5, $s5, $t4
la $t7, j
lw $s3, 0($t7)
add $s5, $s5, $s3
la $s0, c
sw $t0, 0($s0)
la $s0, ai
sw $s5, 0($s0)
la $t0, k
lw $s5, 0($t0)
la $s0, d
sw $t6, 0($s0)
la $t6, ai
lw $t1, 0($t6)
add $t1, $t1, $s5
la $s0, e
sw $t5, 0($s0)
la $s4, l
lw $t5, 0($s4)
add $t1, $t1, $t5
la $s0, f
sw $t2, 0($s0)
la $t8, m
lw $t2, 0($t8)
add $t1, $t1, $t2
la $s0, g
sw $s1, 0($s0)
la $s6, n
lw $s1, 0($s6)
add $t1, $t1, $s1
la $s0, h
sw $s2, 0($s0)
la $t3, o
lw $s2, 0($t3)
add $t1, $t1, $s2
la $s0, i
sw $t4, 0($s0)
la $t9, p
lw $t4, 0($t9)
add $t1, $t1, $t4
la $s0, j
sw $s3, 0($s0)
la $t7, q
lw $s3, 0($t7)
add $t1, $t1, $s3
la $s0, k
sw $s5, 0($s0)
la $t0, r
lw $s5, 0($t0)
add $t1, $t1, $s5
sw $t1, 0($t6)
la $t1, s
lw $t6, 0($t1)
la $s0, l
sw $t5, 0($s0)
la $t5, ai
lw $s4, 0($t5)
add $s4, $s4, $t6
la $s0, m
sw $t2, 0($s0)
la $t8, t
lw $t2, 0($t8)
add $s4, $s4, $t2
la $s0, n
sw $s1, 0($s0)
la $s6, u
lw $s1, 0($s6)
add $s4, $s4, $s1
la $s0, o
sw $s2, 0($s0)
la $t3, v
lw $s2, 0($t3)
add $s4, $s4, $s2
la $s0, p
sw $t4, 0($s0)
la $t9, w
lw $t4, 0($t9)
add $s4, $s4, $t4
la $s0, q
sw $s3, 0($s0)
la $t7, x
lw $s3, 0($t7)
add $s4, $s4, $s3
la $s0, r
sw $s5, 0($s0)
la $t0, y
lw $s5, 0($t0)
add $s4, $s4, $s5
la $s0, s
sw $t6, 0($s0)
la $t1, z
lw $t6, 0($t1)
add $s4, $s4, $t6
sw $s4, 0($t5)
la $s4, aa
lw $t5, 0($s4)
la $s0, t
sw $t2, 0($s0)
la $t2, ai
lw $t8, 0($t2)
add $t8, $t8, $t5
la $s0, u
sw $s1, 0($s0)
la $s6, ab
lw $s1, 0($s6)
add $t8, $t8, $s1
la $s0, v
sw $s2, 0($s0)
la $s2, ad
lw $t3, 0($s2)
sub $t3, $t3, $t8
la $s0, w
sw $t4, 0($s0)
la $t9, c
lw $t4, 0($t9)
move $t7, $t4
la $s0, x
sw $s3, 0($s0)
la $s3, d
lw $t0, 0($s3)
add $t7, $t7, $t0
la $s0, y
sw $s5, 0($s0)
la $s5, e
lw $t1, 0($s5)
add $t7, $t7, $t1
la $s0, z
sw $t6, 0($s0)
la $t6, f
lw $s4, 0($t6)
add $t7, $t7, $s4
la $s0, aa
sw $t5, 0($s0)
sw $t8, 0($t2)
la $t5, g
lw $t8, 0($t5)
add $t7, $t7, $t8
la $t2, h
lw $s6, 0($t2)
add $t7, $t7, $s6
la $s0, ab
sw $s1, 0($s0)
sw $t3, 0($s2)
la $s1, i
lw $t3, 0($s1)
add $t7, $t7, $t3
la $s2, j
lw $t9, 0($s2)
add $t7, $t7, $t9
la $s0, c
sw $t4, 0($s0)
la $s0, aj
sw $t7, 0($s0)
la $t4, k
lw $t7, 0($t4)
la $s0, d
sw $t0, 0($s0)
la $t0, aj
lw $s3, 0($t0)
add $s3, $s3, $t7
la $s0, e
sw $t1, 0($s0)
la $s5, l
lw $t1, 0($s5)
add $s3, $s3, $t1
la $s0, f
sw $s4, 0($s0)
la $t6, m
lw $s4, 0($t6)
add $s3, $s3, $s4
la $s0, g
sw $t8, 0($s0)
la $t5, n
lw $t8, 0($t5)
add $s3, $s3, $t8
la $s0, h
sw $s6, 0($s0)
la $t2, o
lw $s6, 0($t2)
add $s3, $s3, $s6
la $s0, i
sw $t3, 0($s0)
la $s1, p
lw $t3, 0($s1)
add $s3, $s3, $t3
la $s0, j
sw $t9, 0($s0)
la $s2, q
lw $t9, 0($s2)
add $s3, $s3, $t9
la $s0, k
sw $t7, 0($s0)
la $t4, r
lw $t7, 0($t4)
add $s3, $s3, $t7
sw $s3, 0($t0)
la $s3, s
lw $t0, 0($s3)
la $s0, l
sw $t1, 0($s0)
la $t1, aj
lw $s5, 0($t1)
add $s5, $s5, $t0
la $s0, m
sw $s4, 0($s0)
la $t6, t
lw $s4, 0($t6)
add $s5, $s5, $s4
la $s0, n
sw $t8, 0($s0)
la $t5, u
lw $t8, 0($t5)
add $s5, $s5, $t8
la $s0, o
sw $s6, 0($s0)
la $t2, v
lw $s6, 0($t2)
add $s5, $s5, $s6
la $s0, p
sw $t3, 0($s0)
la $s1, w
lw $t3, 0($s1)
add $s5, $s5, $t3
la $s0, q
sw $t9, 0($s0)
la $s2, x
lw $t9, 0($s2)
add $s5, $s5, $t9
la $s0, r
sw $t7, 0($s0)
la $t4, y
lw $t7, 0($t4)
add $s5, $s5, $t7
la $s0, s
sw $t0, 0($s0)
la $s3, z
lw $t0, 0($s3)
add $s5, $s5, $t0
sw $s5, 0($t1)
la $s5, aa
lw $t1, 0($s5)
la $s0, t
sw $s4, 0($s0)
la $s4, aj
lw $t6, 0($s4)
add $t6, $t6, $t1
la $s0, u
sw $t8, 0($s0)
la $t5, ab
lw $t8, 0($t5)
add $t6, $t6, $t8
la $s0, v
sw $s6, 0($s0)
la $s6, ad
lw $t2, 0($s6)
add $t2, $t2, $t6
li $v0, 1
move $a0, $t2
syscall
