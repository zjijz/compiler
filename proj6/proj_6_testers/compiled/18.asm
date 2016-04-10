.data
f:	.word	0	# d in original
m:	.word	0	# k in original
g:	.word	0	# e in original
r:	.word	0	# p in original
af:	.word	0	# temp_d in original
h:	.word	0	# f in original
x:	.word	0	# v in original
ac:	.word	0	# temp_b in original
ab:	.word	0	# z in original
ae:	.word	0	# temp_c in original
ad:	.word	0	# temp_a in original
z:	.word	0	# x in original
n:	.word	0	# l in original
aj:	.word	0	# temp_h in original
ai:	.word	0	# temp_g in original
l:	.word	0	# j in original
aa:	.word	0	# y in original
ag:	.word	0	# temp_e in original
w:	.word	0	# u in original
y:	.word	0	# w in original
q:	.word	0	# o in original
p:	.word	0	# n in original
ah:	.word	0	# temp_f in original
s:	.word	0	# q in original
t:	.word	0	# r in original
c:	.word	0	# a in original
u:	.word	0	# s in original
d:	.word	0	# b in original
o:	.word	0	# m in original
k:	.word	0	# i in original
i:	.word	0	# g in original
j:	.word	0	# h in original
v:	.word	0	# t in original
e:	.word	0	# c in original
.text
li $v0, 5
syscall
la $t0, c
lw $t6, 0($t0)
move $t6, $v0
li $v0, 5
syscall
la $t8, d
lw $t3, 0($t8)
move $t3, $v0
li $v0, 5
syscall
la $t4, e
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $t5, f
lw $s2, 0($t5)
move $s2, $v0
li $v0, 5
syscall
la $s4, g
lw $t9, 0($s4)
move $t9, $v0
li $v0, 5
syscall
la $s5, h
lw $t2, 0($s5)
move $t2, $v0
li $v0, 5
syscall
la $s6, i
lw $s3, 0($s6)
move $s3, $v0
li $v0, 5
syscall
la $t7, j
lw $s1, 0($t7)
move $s1, $v0
li $v0, 5
syscall
la $s0, c
sw $t6, 0($s0)
la $t6, k
lw $t0, 0($t6)
move $t0, $v0
li $v0, 5
syscall
la $s0, d
sw $t3, 0($s0)
la $t3, l
lw $t8, 0($t3)
move $t8, $v0
li $v0, 5
syscall
la $s0, e
sw $t1, 0($s0)
la $t1, m
lw $t4, 0($t1)
move $t4, $v0
li $v0, 5
syscall
la $s0, f
sw $s2, 0($s0)
la $s2, n
lw $t5, 0($s2)
move $t5, $v0
li $v0, 5
syscall
la $s0, g
sw $t9, 0($s0)
la $t9, o
lw $s4, 0($t9)
move $s4, $v0
li $v0, 5
syscall
la $s0, h
sw $t2, 0($s0)
la $t2, p
lw $s5, 0($t2)
move $s5, $v0
li $v0, 5
syscall
la $s0, i
sw $s3, 0($s0)
la $s3, q
lw $s6, 0($s3)
move $s6, $v0
li $v0, 5
syscall
la $s0, j
sw $s1, 0($s0)
la $s1, r
lw $t7, 0($s1)
move $t7, $v0
li $v0, 5
syscall
la $s0, k
sw $t0, 0($s0)
la $t0, s
lw $t6, 0($t0)
move $t6, $v0
li $v0, 5
syscall
la $s0, l
sw $t8, 0($s0)
la $t8, t
lw $t3, 0($t8)
move $t3, $v0
li $v0, 5
syscall
la $s0, m
sw $t4, 0($s0)
la $t4, u
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $s0, n
sw $t5, 0($s0)
la $t5, v
lw $s2, 0($t5)
move $s2, $v0
li $v0, 5
syscall
la $s0, o
sw $s4, 0($s0)
la $s4, w
lw $t9, 0($s4)
move $t9, $v0
li $v0, 5
syscall
la $s0, p
sw $s5, 0($s0)
la $s5, x
lw $t2, 0($s5)
move $t2, $v0
li $v0, 5
syscall
la $s0, q
sw $s6, 0($s0)
la $s6, y
lw $s3, 0($s6)
move $s3, $v0
li $v0, 5
syscall
la $s0, r
sw $t7, 0($s0)
la $t7, z
lw $s1, 0($t7)
move $s1, $v0
li $v0, 5
syscall
la $s0, s
sw $t6, 0($s0)
la $t6, aa
lw $t0, 0($t6)
move $t0, $v0
li $v0, 5
syscall
la $s0, t
sw $t3, 0($s0)
la $t3, ab
lw $t8, 0($t3)
move $t8, $v0
la $s0, u
sw $t1, 0($s0)
la $t4, c
lw $t1, 0($t4)
move $t5, $t1
la $s0, v
sw $s2, 0($s0)
la $s2, d
lw $s4, 0($s2)
add $t5, $t5, $s4
la $s0, w
sw $t9, 0($s0)
la $t9, e
lw $s5, 0($t9)
add $t5, $t5, $s5
la $s0, x
sw $t2, 0($s0)
la $t2, f
lw $s6, 0($t2)
add $t5, $t5, $s6
la $s0, y
sw $s3, 0($s0)
la $s3, g
lw $t7, 0($s3)
add $t5, $t5, $t7
la $s0, z
sw $s1, 0($s0)
la $s1, h
lw $t6, 0($s1)
add $t5, $t5, $t6
la $s0, aa
sw $t0, 0($s0)
la $t0, i
lw $t3, 0($t0)
add $t5, $t5, $t3
la $s0, ab
sw $t8, 0($s0)
la $t8, j
lw $t4, 0($t8)
add $t5, $t5, $t4
la $s0, c
sw $t1, 0($s0)
la $s0, ac
sw $t5, 0($s0)
la $t1, k
lw $t5, 0($t1)
la $s0, d
sw $s4, 0($s0)
la $s4, ac
lw $s2, 0($s4)
add $s2, $s2, $t5
la $s0, e
sw $s5, 0($s0)
la $t9, l
lw $s5, 0($t9)
add $s2, $s2, $s5
la $s0, f
sw $s6, 0($s0)
la $t2, m
lw $s6, 0($t2)
add $s2, $s2, $s6
la $s0, g
sw $t7, 0($s0)
la $s3, n
lw $t7, 0($s3)
add $s2, $s2, $t7
la $s0, h
sw $t6, 0($s0)
la $s1, o
lw $t6, 0($s1)
add $s2, $s2, $t6
la $s0, i
sw $t3, 0($s0)
la $t0, p
lw $t3, 0($t0)
add $s2, $s2, $t3
la $s0, j
sw $t4, 0($s0)
la $t8, q
lw $t4, 0($t8)
add $s2, $s2, $t4
la $s0, k
sw $t5, 0($s0)
la $t1, r
lw $t5, 0($t1)
add $s2, $s2, $t5
sw $s2, 0($s4)
la $s2, s
lw $s4, 0($s2)
la $s0, l
sw $s5, 0($s0)
la $s5, ac
lw $t9, 0($s5)
add $t9, $t9, $s4
la $s0, m
sw $s6, 0($s0)
la $t2, t
lw $s6, 0($t2)
add $t9, $t9, $s6
la $s0, n
sw $t7, 0($s0)
la $s3, u
lw $t7, 0($s3)
add $t9, $t9, $t7
la $s0, o
sw $t6, 0($s0)
la $s1, v
lw $t6, 0($s1)
add $t9, $t9, $t6
la $s0, p
sw $t3, 0($s0)
la $t0, w
lw $t3, 0($t0)
add $t9, $t9, $t3
la $s0, q
sw $t4, 0($s0)
la $t8, x
lw $t4, 0($t8)
add $t9, $t9, $t4
la $s0, r
sw $t5, 0($s0)
la $t1, y
lw $t5, 0($t1)
add $t9, $t9, $t5
la $s0, s
sw $s4, 0($s0)
la $s2, z
lw $s4, 0($s2)
add $t9, $t9, $s4
sw $t9, 0($s5)
la $t9, aa
lw $s5, 0($t9)
la $s0, t
sw $s6, 0($s0)
la $s6, ac
lw $t2, 0($s6)
add $t2, $t2, $s5
la $s0, u
sw $t7, 0($s0)
la $s3, ab
lw $t7, 0($s3)
add $t2, $t2, $t7
move $s1, $t2
la $s0, v
sw $t6, 0($s0)
la $t6, c
lw $t0, 0($t6)
la $s0, w
sw $t3, 0($s0)
move $t3, $t0
la $s0, x
sw $t4, 0($s0)
la $t8, d
lw $t4, 0($t8)
add $t3, $t3, $t4
la $s0, y
sw $t5, 0($s0)
la $t1, e
lw $t5, 0($t1)
add $t3, $t3, $t5
la $s0, z
sw $s4, 0($s0)
la $s2, f
lw $s4, 0($s2)
add $t3, $t3, $s4
la $s0, aa
sw $s5, 0($s0)
la $t9, g
lw $s5, 0($t9)
add $t3, $t3, $s5
sw $t2, 0($s6)
la $t2, h
lw $s6, 0($t2)
add $t3, $t3, $s6
la $s0, ab
sw $t7, 0($s0)
la $s3, i
lw $t7, 0($s3)
add $t3, $t3, $t7
la $s0, ad
sw $s1, 0($s0)
la $s1, j
lw $t6, 0($s1)
add $t3, $t3, $t6
la $s0, c
sw $t0, 0($s0)
la $s0, ae
sw $t3, 0($s0)
la $t0, k
lw $t3, 0($t0)
la $s0, d
sw $t4, 0($s0)
la $t4, ae
lw $t8, 0($t4)
add $t8, $t8, $t3
la $s0, e
sw $t5, 0($s0)
la $t1, l
lw $t5, 0($t1)
add $t8, $t8, $t5
la $s0, f
sw $s4, 0($s0)
la $s2, m
lw $s4, 0($s2)
add $t8, $t8, $s4
la $s0, g
sw $s5, 0($s0)
la $t9, n
lw $s5, 0($t9)
add $t8, $t8, $s5
la $s0, h
sw $s6, 0($s0)
la $t2, o
lw $s6, 0($t2)
add $t8, $t8, $s6
la $s0, i
sw $t7, 0($s0)
la $s3, p
lw $t7, 0($s3)
add $t8, $t8, $t7
la $s0, j
sw $t6, 0($s0)
la $s1, q
lw $t6, 0($s1)
add $t8, $t8, $t6
la $s0, k
sw $t3, 0($s0)
la $t0, r
lw $t3, 0($t0)
add $t8, $t8, $t3
sw $t8, 0($t4)
la $t8, s
lw $t4, 0($t8)
la $s0, l
sw $t5, 0($s0)
la $t5, ae
lw $t1, 0($t5)
add $t1, $t1, $t4
la $s0, m
sw $s4, 0($s0)
la $s2, t
lw $s4, 0($s2)
add $t1, $t1, $s4
la $s0, n
sw $s5, 0($s0)
la $t9, u
lw $s5, 0($t9)
add $t1, $t1, $s5
la $s0, o
sw $s6, 0($s0)
la $t2, v
lw $s6, 0($t2)
add $t1, $t1, $s6
la $s0, p
sw $t7, 0($s0)
la $s3, w
lw $t7, 0($s3)
add $t1, $t1, $t7
la $s0, q
sw $t6, 0($s0)
la $s1, x
lw $t6, 0($s1)
add $t1, $t1, $t6
la $s0, r
sw $t3, 0($s0)
la $t0, y
lw $t3, 0($t0)
add $t1, $t1, $t3
la $s0, s
sw $t4, 0($s0)
la $t8, z
lw $t4, 0($t8)
add $t1, $t1, $t4
sw $t1, 0($t5)
la $t1, aa
lw $t5, 0($t1)
la $s0, t
sw $s4, 0($s0)
la $s4, ae
lw $s2, 0($s4)
add $s2, $s2, $t5
la $s0, u
sw $s5, 0($s0)
la $t9, ab
lw $s5, 0($t9)
add $s2, $s2, $s5
la $s0, v
sw $s6, 0($s0)
la $s6, ad
lw $t2, 0($s6)
sub $t2, $t2, $s2
la $s0, w
sw $t7, 0($s0)
la $s3, c
lw $t7, 0($s3)
move $s1, $t7
la $s0, x
sw $t6, 0($s0)
la $t6, d
lw $t0, 0($t6)
add $s1, $s1, $t0
la $s0, y
sw $t3, 0($s0)
la $t3, e
lw $t8, 0($t3)
add $s1, $s1, $t8
la $s0, z
sw $t4, 0($s0)
la $t4, f
lw $t1, 0($t4)
add $s1, $s1, $t1
la $s0, aa
sw $t5, 0($s0)
sw $s2, 0($s4)
la $t5, g
lw $s2, 0($t5)
add $s1, $s1, $s2
la $s4, h
lw $t9, 0($s4)
add $s1, $s1, $t9
la $s0, ab
sw $s5, 0($s0)
sw $t2, 0($s6)
la $s5, i
lw $t2, 0($s5)
add $s1, $s1, $t2
la $s6, j
lw $s3, 0($s6)
add $s1, $s1, $s3
la $s0, c
sw $t7, 0($s0)
la $s0, af
sw $s1, 0($s0)
la $t7, k
lw $s1, 0($t7)
la $s0, d
sw $t0, 0($s0)
la $t0, af
lw $t6, 0($t0)
add $t6, $t6, $s1
la $s0, e
sw $t8, 0($s0)
la $t3, l
lw $t8, 0($t3)
add $t6, $t6, $t8
la $s0, f
sw $t1, 0($s0)
la $t4, m
lw $t1, 0($t4)
add $t6, $t6, $t1
la $s0, g
sw $s2, 0($s0)
la $t5, n
lw $s2, 0($t5)
add $t6, $t6, $s2
la $s0, h
sw $t9, 0($s0)
la $s4, o
lw $t9, 0($s4)
add $t6, $t6, $t9
la $s0, i
sw $t2, 0($s0)
la $s5, p
lw $t2, 0($s5)
add $t6, $t6, $t2
la $s0, j
sw $s3, 0($s0)
la $s6, q
lw $s3, 0($s6)
add $t6, $t6, $s3
la $s0, k
sw $s1, 0($s0)
la $t7, r
lw $s1, 0($t7)
add $t6, $t6, $s1
sw $t6, 0($t0)
la $t6, s
lw $t0, 0($t6)
la $s0, l
sw $t8, 0($s0)
la $t8, af
lw $t3, 0($t8)
add $t3, $t3, $t0
la $s0, m
sw $t1, 0($s0)
la $t4, t
lw $t1, 0($t4)
add $t3, $t3, $t1
la $s0, n
sw $s2, 0($s0)
la $t5, u
lw $s2, 0($t5)
add $t3, $t3, $s2
la $s0, o
sw $t9, 0($s0)
la $s4, v
lw $t9, 0($s4)
add $t3, $t3, $t9
la $s0, p
sw $t2, 0($s0)
la $s5, w
lw $t2, 0($s5)
add $t3, $t3, $t2
la $s0, q
sw $s3, 0($s0)
la $s6, x
lw $s3, 0($s6)
add $t3, $t3, $s3
la $s0, r
sw $s1, 0($s0)
la $t7, y
lw $s1, 0($t7)
add $t3, $t3, $s1
la $s0, s
sw $t0, 0($s0)
la $t6, z
lw $t0, 0($t6)
add $t3, $t3, $t0
sw $t3, 0($t8)
la $t3, aa
lw $t8, 0($t3)
la $s0, t
sw $t1, 0($s0)
la $t1, af
lw $t4, 0($t1)
add $t4, $t4, $t8
la $s0, u
sw $s2, 0($s0)
la $t5, ab
lw $s2, 0($t5)
add $t4, $t4, $s2
la $s0, v
sw $t9, 0($s0)
la $t9, ad
lw $s4, 0($t9)
add $s4, $s4, $t4
la $s0, w
sw $t2, 0($s0)
la $s5, c
lw $t2, 0($s5)
move $s6, $t2
la $s0, x
sw $s3, 0($s0)
la $s3, d
lw $t7, 0($s3)
add $s6, $s6, $t7
la $s0, y
sw $s1, 0($s0)
la $s1, e
lw $t6, 0($s1)
add $s6, $s6, $t6
la $s0, z
sw $t0, 0($s0)
la $t0, f
lw $t3, 0($t0)
add $s6, $s6, $t3
la $s0, aa
sw $t8, 0($s0)
sw $t4, 0($t1)
la $t8, g
lw $t4, 0($t8)
add $s6, $s6, $t4
la $t1, h
lw $t5, 0($t1)
add $s6, $s6, $t5
la $s0, ab
sw $s2, 0($s0)
sw $s4, 0($t9)
la $s2, i
lw $s4, 0($s2)
add $s6, $s6, $s4
la $t9, j
lw $s5, 0($t9)
add $s6, $s6, $s5
la $s0, c
sw $t2, 0($s0)
la $s0, ag
sw $s6, 0($s0)
la $t2, k
lw $s6, 0($t2)
la $s0, d
sw $t7, 0($s0)
la $t7, ag
lw $s3, 0($t7)
add $s3, $s3, $s6
la $s0, e
sw $t6, 0($s0)
la $s1, l
lw $t6, 0($s1)
add $s3, $s3, $t6
la $s0, f
sw $t3, 0($s0)
la $t0, m
lw $t3, 0($t0)
add $s3, $s3, $t3
la $s0, g
sw $t4, 0($s0)
la $t8, n
lw $t4, 0($t8)
add $s3, $s3, $t4
la $s0, h
sw $t5, 0($s0)
la $t1, o
lw $t5, 0($t1)
add $s3, $s3, $t5
la $s0, i
sw $s4, 0($s0)
la $s2, p
lw $s4, 0($s2)
add $s3, $s3, $s4
la $s0, j
sw $s5, 0($s0)
la $t9, q
lw $s5, 0($t9)
add $s3, $s3, $s5
la $s0, k
sw $s6, 0($s0)
la $t2, r
lw $s6, 0($t2)
add $s3, $s3, $s6
sw $s3, 0($t7)
la $s3, s
lw $t7, 0($s3)
la $s0, l
sw $t6, 0($s0)
la $t6, ag
lw $s1, 0($t6)
add $s1, $s1, $t7
la $s0, m
sw $t3, 0($s0)
la $t0, t
lw $t3, 0($t0)
add $s1, $s1, $t3
la $s0, n
sw $t4, 0($s0)
la $t8, u
lw $t4, 0($t8)
add $s1, $s1, $t4
la $s0, o
sw $t5, 0($s0)
la $t1, v
lw $t5, 0($t1)
add $s1, $s1, $t5
la $s0, p
sw $s4, 0($s0)
la $s2, w
lw $s4, 0($s2)
add $s1, $s1, $s4
la $s0, q
sw $s5, 0($s0)
la $t9, x
lw $s5, 0($t9)
add $s1, $s1, $s5
la $s0, r
sw $s6, 0($s0)
la $t2, y
lw $s6, 0($t2)
add $s1, $s1, $s6
la $s0, s
sw $t7, 0($s0)
la $s3, z
lw $t7, 0($s3)
add $s1, $s1, $t7
sw $s1, 0($t6)
la $s1, aa
lw $t6, 0($s1)
la $s0, t
sw $t3, 0($s0)
la $t3, ag
lw $t0, 0($t3)
add $t0, $t0, $t6
la $s0, u
sw $t4, 0($s0)
la $t8, ab
lw $t4, 0($t8)
add $t0, $t0, $t4
la $s0, v
sw $t5, 0($s0)
la $t5, ad
lw $t1, 0($t5)
sub $t1, $t1, $t0
la $s0, w
sw $s4, 0($s0)
la $s2, c
lw $s4, 0($s2)
move $t9, $s4
la $s0, x
sw $s5, 0($s0)
la $s5, d
lw $t2, 0($s5)
add $t9, $t9, $t2
la $s0, y
sw $s6, 0($s0)
la $s6, e
lw $s3, 0($s6)
add $t9, $t9, $s3
la $s0, z
sw $t7, 0($s0)
la $t7, f
lw $s1, 0($t7)
add $t9, $t9, $s1
la $s0, aa
sw $t6, 0($s0)
sw $t0, 0($t3)
la $t6, g
lw $t0, 0($t6)
add $t9, $t9, $t0
la $t3, h
lw $t8, 0($t3)
add $t9, $t9, $t8
la $s0, ab
sw $t4, 0($s0)
sw $t1, 0($t5)
la $t4, i
lw $t1, 0($t4)
add $t9, $t9, $t1
la $t5, j
lw $s2, 0($t5)
add $t9, $t9, $s2
la $s0, c
sw $s4, 0($s0)
la $s0, ah
sw $t9, 0($s0)
la $s4, k
lw $t9, 0($s4)
la $s0, d
sw $t2, 0($s0)
la $t2, ah
lw $s5, 0($t2)
add $s5, $s5, $t9
la $s0, e
sw $s3, 0($s0)
la $s6, l
lw $s3, 0($s6)
add $s5, $s5, $s3
la $s0, f
sw $s1, 0($s0)
la $t7, m
lw $s1, 0($t7)
add $s5, $s5, $s1
la $s0, g
sw $t0, 0($s0)
la $t6, n
lw $t0, 0($t6)
add $s5, $s5, $t0
la $s0, h
sw $t8, 0($s0)
la $t3, o
lw $t8, 0($t3)
add $s5, $s5, $t8
la $s0, i
sw $t1, 0($s0)
la $t4, p
lw $t1, 0($t4)
add $s5, $s5, $t1
la $s0, j
sw $s2, 0($s0)
la $t5, q
lw $s2, 0($t5)
add $s5, $s5, $s2
la $s0, k
sw $t9, 0($s0)
la $s4, r
lw $t9, 0($s4)
add $s5, $s5, $t9
sw $s5, 0($t2)
la $s5, s
lw $t2, 0($s5)
la $s0, l
sw $s3, 0($s0)
la $s3, ah
lw $s6, 0($s3)
add $s6, $s6, $t2
la $s0, m
sw $s1, 0($s0)
la $t7, t
lw $s1, 0($t7)
add $s6, $s6, $s1
la $s0, n
sw $t0, 0($s0)
la $t6, u
lw $t0, 0($t6)
add $s6, $s6, $t0
la $s0, o
sw $t8, 0($s0)
la $t3, v
lw $t8, 0($t3)
add $s6, $s6, $t8
la $s0, p
sw $t1, 0($s0)
la $t4, w
lw $t1, 0($t4)
add $s6, $s6, $t1
la $s0, q
sw $s2, 0($s0)
la $t5, x
lw $s2, 0($t5)
add $s6, $s6, $s2
la $s0, r
sw $t9, 0($s0)
la $s4, y
lw $t9, 0($s4)
add $s6, $s6, $t9
la $s0, s
sw $t2, 0($s0)
la $s5, z
lw $t2, 0($s5)
add $s6, $s6, $t2
sw $s6, 0($s3)
la $s6, aa
lw $s3, 0($s6)
la $s0, t
sw $s1, 0($s0)
la $s1, ah
lw $t7, 0($s1)
add $t7, $t7, $s3
la $s0, u
sw $t0, 0($s0)
la $t6, ab
lw $t0, 0($t6)
add $t7, $t7, $t0
la $s0, v
sw $t8, 0($s0)
la $t8, ad
lw $t3, 0($t8)
add $t3, $t3, $t7
la $s0, w
sw $t1, 0($s0)
la $t4, c
lw $t1, 0($t4)
move $t5, $t1
la $s0, x
sw $s2, 0($s0)
la $s2, d
lw $s4, 0($s2)
add $t5, $t5, $s4
la $s0, y
sw $t9, 0($s0)
la $t9, e
lw $s5, 0($t9)
add $t5, $t5, $s5
la $s0, z
sw $t2, 0($s0)
la $t2, f
lw $s6, 0($t2)
add $t5, $t5, $s6
la $s0, aa
sw $s3, 0($s0)
sw $t7, 0($s1)
la $s3, g
lw $t7, 0($s3)
add $t5, $t5, $t7
la $s1, h
lw $t6, 0($s1)
add $t5, $t5, $t6
la $s0, ab
sw $t0, 0($s0)
sw $t3, 0($t8)
la $t0, i
lw $t3, 0($t0)
add $t5, $t5, $t3
la $t8, j
lw $t4, 0($t8)
add $t5, $t5, $t4
la $s0, c
sw $t1, 0($s0)
la $s0, ai
sw $t5, 0($s0)
la $t1, k
lw $t5, 0($t1)
la $s0, d
sw $s4, 0($s0)
la $s4, ai
lw $s2, 0($s4)
add $s2, $s2, $t5
la $s0, e
sw $s5, 0($s0)
la $t9, l
lw $s5, 0($t9)
add $s2, $s2, $s5
la $s0, f
sw $s6, 0($s0)
la $t2, m
lw $s6, 0($t2)
add $s2, $s2, $s6
la $s0, g
sw $t7, 0($s0)
la $s3, n
lw $t7, 0($s3)
add $s2, $s2, $t7
la $s0, h
sw $t6, 0($s0)
la $s1, o
lw $t6, 0($s1)
add $s2, $s2, $t6
la $s0, i
sw $t3, 0($s0)
la $t0, p
lw $t3, 0($t0)
add $s2, $s2, $t3
la $s0, j
sw $t4, 0($s0)
la $t8, q
lw $t4, 0($t8)
add $s2, $s2, $t4
la $s0, k
sw $t5, 0($s0)
la $t1, r
lw $t5, 0($t1)
add $s2, $s2, $t5
sw $s2, 0($s4)
la $s2, s
lw $s4, 0($s2)
la $s0, l
sw $s5, 0($s0)
la $s5, ai
lw $t9, 0($s5)
add $t9, $t9, $s4
la $s0, m
sw $s6, 0($s0)
la $t2, t
lw $s6, 0($t2)
add $t9, $t9, $s6
la $s0, n
sw $t7, 0($s0)
la $s3, u
lw $t7, 0($s3)
add $t9, $t9, $t7
la $s0, o
sw $t6, 0($s0)
la $s1, v
lw $t6, 0($s1)
add $t9, $t9, $t6
la $s0, p
sw $t3, 0($s0)
la $t0, w
lw $t3, 0($t0)
add $t9, $t9, $t3
la $s0, q
sw $t4, 0($s0)
la $t8, x
lw $t4, 0($t8)
add $t9, $t9, $t4
la $s0, r
sw $t5, 0($s0)
la $t1, y
lw $t5, 0($t1)
add $t9, $t9, $t5
la $s0, s
sw $s4, 0($s0)
la $s2, z
lw $s4, 0($s2)
add $t9, $t9, $s4
sw $t9, 0($s5)
la $t9, aa
lw $s5, 0($t9)
la $s0, t
sw $s6, 0($s0)
la $s6, ai
lw $t2, 0($s6)
add $t2, $t2, $s5
la $s0, u
sw $t7, 0($s0)
la $s3, ab
lw $t7, 0($s3)
add $t2, $t2, $t7
la $s0, v
sw $t6, 0($s0)
la $t6, ad
lw $s1, 0($t6)
sub $s1, $s1, $t2
la $s0, w
sw $t3, 0($s0)
la $t0, c
lw $t3, 0($t0)
move $t8, $t3
la $s0, x
sw $t4, 0($s0)
la $t4, d
lw $t1, 0($t4)
add $t8, $t8, $t1
la $s0, y
sw $t5, 0($s0)
la $t5, e
lw $s2, 0($t5)
add $t8, $t8, $s2
la $s0, z
sw $s4, 0($s0)
la $s4, f
lw $t9, 0($s4)
add $t8, $t8, $t9
la $s0, aa
sw $s5, 0($s0)
sw $t2, 0($s6)
la $s5, g
lw $t2, 0($s5)
add $t8, $t8, $t2
la $s6, h
lw $s3, 0($s6)
add $t8, $t8, $s3
la $s0, ab
sw $t7, 0($s0)
sw $s1, 0($t6)
la $t7, i
lw $s1, 0($t7)
add $t8, $t8, $s1
la $t6, j
lw $t0, 0($t6)
add $t8, $t8, $t0
la $s0, c
sw $t3, 0($s0)
la $s0, aj
sw $t8, 0($s0)
la $t3, k
lw $t8, 0($t3)
la $s0, d
sw $t1, 0($s0)
la $t1, aj
lw $t4, 0($t1)
add $t4, $t4, $t8
la $s0, e
sw $s2, 0($s0)
la $t5, l
lw $s2, 0($t5)
add $t4, $t4, $s2
la $s0, f
sw $t9, 0($s0)
la $s4, m
lw $t9, 0($s4)
add $t4, $t4, $t9
la $s0, g
sw $t2, 0($s0)
la $s5, n
lw $t2, 0($s5)
add $t4, $t4, $t2
la $s0, h
sw $s3, 0($s0)
la $s6, o
lw $s3, 0($s6)
add $t4, $t4, $s3
la $s0, i
sw $s1, 0($s0)
la $t7, p
lw $s1, 0($t7)
add $t4, $t4, $s1
la $s0, j
sw $t0, 0($s0)
la $t6, q
lw $t0, 0($t6)
add $t4, $t4, $t0
la $s0, k
sw $t8, 0($s0)
la $t3, r
lw $t8, 0($t3)
add $t4, $t4, $t8
sw $t4, 0($t1)
la $t4, s
lw $t1, 0($t4)
la $s0, l
sw $s2, 0($s0)
la $s2, aj
lw $t5, 0($s2)
add $t5, $t5, $t1
la $s0, m
sw $t9, 0($s0)
la $s4, t
lw $t9, 0($s4)
add $t5, $t5, $t9
la $s0, n
sw $t2, 0($s0)
la $s5, u
lw $t2, 0($s5)
add $t5, $t5, $t2
la $s0, o
sw $s3, 0($s0)
la $s6, v
lw $s3, 0($s6)
add $t5, $t5, $s3
la $s0, p
sw $s1, 0($s0)
la $t7, w
lw $s1, 0($t7)
add $t5, $t5, $s1
la $s0, q
sw $t0, 0($s0)
la $t6, x
lw $t0, 0($t6)
add $t5, $t5, $t0
la $s0, r
sw $t8, 0($s0)
la $t3, y
lw $t8, 0($t3)
add $t5, $t5, $t8
la $s0, s
sw $t1, 0($s0)
la $t4, z
lw $t1, 0($t4)
add $t5, $t5, $t1
sw $t5, 0($s2)
la $t5, aa
lw $s2, 0($t5)
la $s0, t
sw $t9, 0($s0)
la $t9, aj
lw $s4, 0($t9)
add $s4, $s4, $s2
la $s0, u
sw $t2, 0($s0)
la $s5, ab
lw $t2, 0($s5)
add $s4, $s4, $t2
la $s0, v
sw $s3, 0($s0)
la $s3, ad
lw $s6, 0($s3)
add $s6, $s6, $s4
li $v0, 1
move $a0, $s6
syscall
