.data
ae:	.word	0	# temp_c in original
w:	.word	0	# u in original
ai:	.word	0	# temp_g in original
i:	.word	0	# g in original
h:	.word	0	# f in original
z:	.word	0	# x in original
e:	.word	0	# c in original
q:	.word	0	# o in original
m:	.word	0	# k in original
n:	.word	0	# l in original
r:	.word	0	# p in original
u:	.word	0	# s in original
p:	.word	0	# n in original
ad:	.word	0	# temp_a in original
f:	.word	0	# d in original
aj:	.word	0	# temp_h in original
aa:	.word	0	# y in original
ah:	.word	0	# temp_f in original
l:	.word	0	# j in original
c:	.word	0	# a in original
ab:	.word	0	# z in original
j:	.word	0	# h in original
v:	.word	0	# t in original
k:	.word	0	# i in original
af:	.word	0	# temp_d in original
o:	.word	0	# m in original
ag:	.word	0	# temp_e in original
s:	.word	0	# q in original
ac:	.word	0	# temp_b in original
g:	.word	0	# e in original
t:	.word	0	# r in original
y:	.word	0	# w in original
d:	.word	0	# b in original
x:	.word	0	# v in original
.text
li $v0, 5
syscall
la $s1, c
lw $t2, 0($s1)
move $t2, $v0
li $v0, 5
syscall
la $t0, d
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $t5, e
lw $s3, 0($t5)
move $s3, $v0
li $v0, 5
syscall
la $s2, f
lw $t8, 0($s2)
move $t8, $v0
li $v0, 5
syscall
la $s4, g
lw $t1, 0($s4)
move $t1, $v0
li $v0, 5
syscall
la $s5, h
lw $t6, 0($s5)
move $t6, $v0
li $v0, 5
syscall
la $t7, i
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $t4, j
lw $s6, 0($t4)
move $s6, $v0
li $v0, 5
syscall
la $s0, c
sw $t2, 0($s0)
la $t2, k
lw $s1, 0($t2)
move $s1, $v0
li $v0, 5
syscall
la $s0, d
sw $t9, 0($s0)
la $t9, l
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, e
sw $s3, 0($s0)
la $s3, m
lw $t5, 0($s3)
move $t5, $v0
li $v0, 5
syscall
la $s0, f
sw $t8, 0($s0)
la $t8, n
lw $s2, 0($t8)
move $s2, $v0
li $v0, 5
syscall
la $s0, g
sw $t1, 0($s0)
la $t1, o
lw $s4, 0($t1)
move $s4, $v0
li $v0, 5
syscall
la $s0, h
sw $t6, 0($s0)
la $t6, p
lw $s5, 0($t6)
move $s5, $v0
li $v0, 5
syscall
la $s0, i
sw $t3, 0($s0)
la $t3, q
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s0, j
sw $s6, 0($s0)
la $s6, r
lw $t4, 0($s6)
move $t4, $v0
li $v0, 5
syscall
la $s0, k
sw $s1, 0($s0)
la $s1, s
lw $t2, 0($s1)
move $t2, $v0
li $v0, 5
syscall
la $s0, l
sw $t0, 0($s0)
la $t0, t
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $s0, m
sw $t5, 0($s0)
la $t5, u
lw $s3, 0($t5)
move $s3, $v0
li $v0, 5
syscall
la $s0, n
sw $s2, 0($s0)
la $s2, v
lw $t8, 0($s2)
move $t8, $v0
li $v0, 5
syscall
la $s0, o
sw $s4, 0($s0)
la $s4, w
lw $t1, 0($s4)
move $t1, $v0
li $v0, 5
syscall
la $s0, p
sw $s5, 0($s0)
la $s5, x
lw $t6, 0($s5)
move $t6, $v0
li $v0, 5
syscall
la $s0, q
sw $t7, 0($s0)
la $t7, y
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s0, r
sw $t4, 0($s0)
la $t4, z
lw $s6, 0($t4)
move $s6, $v0
li $v0, 5
syscall
la $s0, s
sw $t2, 0($s0)
la $t2, aa
lw $s1, 0($t2)
move $s1, $v0
li $v0, 5
syscall
la $s0, t
sw $t9, 0($s0)
la $t9, ab
lw $t0, 0($t9)
move $t0, $v0
la $s0, u
sw $s3, 0($s0)
la $t5, c
lw $s3, 0($t5)
move $s2, $s3
la $s0, v
sw $t8, 0($s0)
la $t8, d
lw $s4, 0($t8)
add $s2, $s2, $s4
la $s0, w
sw $t1, 0($s0)
la $t1, e
lw $s5, 0($t1)
add $s2, $s2, $s5
la $s0, x
sw $t6, 0($s0)
la $t6, f
lw $t7, 0($t6)
add $s2, $s2, $t7
la $s0, y
sw $t3, 0($s0)
la $t3, g
lw $t4, 0($t3)
add $s2, $s2, $t4
la $s0, z
sw $s6, 0($s0)
la $s6, h
lw $t2, 0($s6)
add $s2, $s2, $t2
la $s0, aa
sw $s1, 0($s0)
la $s1, i
lw $t9, 0($s1)
add $s2, $s2, $t9
la $s0, ab
sw $t0, 0($s0)
la $t0, j
lw $t5, 0($t0)
add $s2, $s2, $t5
la $s0, c
sw $s3, 0($s0)
la $s0, ac
sw $s2, 0($s0)
la $s3, k
lw $s2, 0($s3)
la $s0, d
sw $s4, 0($s0)
la $s4, ac
lw $t8, 0($s4)
add $t8, $t8, $s2
la $s0, e
sw $s5, 0($s0)
la $t1, l
lw $s5, 0($t1)
add $t8, $t8, $s5
la $s0, f
sw $t7, 0($s0)
la $t6, m
lw $t7, 0($t6)
add $t8, $t8, $t7
la $s0, g
sw $t4, 0($s0)
la $t3, n
lw $t4, 0($t3)
add $t8, $t8, $t4
la $s0, h
sw $t2, 0($s0)
la $s6, o
lw $t2, 0($s6)
add $t8, $t8, $t2
la $s0, i
sw $t9, 0($s0)
la $s1, p
lw $t9, 0($s1)
add $t8, $t8, $t9
la $s0, j
sw $t5, 0($s0)
la $t0, q
lw $t5, 0($t0)
add $t8, $t8, $t5
la $s0, k
sw $s2, 0($s0)
la $s3, r
lw $s2, 0($s3)
add $t8, $t8, $s2
sw $t8, 0($s4)
la $t8, s
lw $s4, 0($t8)
la $s0, l
sw $s5, 0($s0)
la $s5, ac
lw $t1, 0($s5)
add $t1, $t1, $s4
la $s0, m
sw $t7, 0($s0)
la $t6, t
lw $t7, 0($t6)
add $t1, $t1, $t7
la $s0, n
sw $t4, 0($s0)
la $t3, u
lw $t4, 0($t3)
add $t1, $t1, $t4
la $s0, o
sw $t2, 0($s0)
la $s6, v
lw $t2, 0($s6)
add $t1, $t1, $t2
la $s0, p
sw $t9, 0($s0)
la $s1, w
lw $t9, 0($s1)
add $t1, $t1, $t9
la $s0, q
sw $t5, 0($s0)
la $t0, x
lw $t5, 0($t0)
add $t1, $t1, $t5
la $s0, r
sw $s2, 0($s0)
la $s3, y
lw $s2, 0($s3)
add $t1, $t1, $s2
la $s0, s
sw $s4, 0($s0)
la $t8, z
lw $s4, 0($t8)
add $t1, $t1, $s4
sw $t1, 0($s5)
la $t1, aa
lw $s5, 0($t1)
la $s0, t
sw $t7, 0($s0)
la $t7, ac
lw $t6, 0($t7)
add $t6, $t6, $s5
la $s0, u
sw $t4, 0($s0)
la $t3, ab
lw $t4, 0($t3)
add $t6, $t6, $t4
move $s6, $t6
la $s0, v
sw $t2, 0($s0)
la $t2, c
lw $s1, 0($t2)
la $s0, w
sw $t9, 0($s0)
move $t9, $s1
la $s0, x
sw $t5, 0($s0)
la $t0, d
lw $t5, 0($t0)
add $t9, $t9, $t5
la $s0, y
sw $s2, 0($s0)
la $s3, e
lw $s2, 0($s3)
add $t9, $t9, $s2
la $s0, z
sw $s4, 0($s0)
la $t8, f
lw $s4, 0($t8)
add $t9, $t9, $s4
la $s0, aa
sw $s5, 0($s0)
la $t1, g
lw $s5, 0($t1)
add $t9, $t9, $s5
sw $t6, 0($t7)
la $t6, h
lw $t7, 0($t6)
add $t9, $t9, $t7
la $s0, ab
sw $t4, 0($s0)
la $t3, i
lw $t4, 0($t3)
add $t9, $t9, $t4
la $s0, ad
sw $s6, 0($s0)
la $s6, j
lw $t2, 0($s6)
add $t9, $t9, $t2
la $s0, c
sw $s1, 0($s0)
la $s0, ae
sw $t9, 0($s0)
la $s1, k
lw $t9, 0($s1)
la $s0, d
sw $t5, 0($s0)
la $t5, ae
lw $t0, 0($t5)
add $t0, $t0, $t9
la $s0, e
sw $s2, 0($s0)
la $s3, l
lw $s2, 0($s3)
add $t0, $t0, $s2
la $s0, f
sw $s4, 0($s0)
la $t8, m
lw $s4, 0($t8)
add $t0, $t0, $s4
la $s0, g
sw $s5, 0($s0)
la $t1, n
lw $s5, 0($t1)
add $t0, $t0, $s5
la $s0, h
sw $t7, 0($s0)
la $t6, o
lw $t7, 0($t6)
add $t0, $t0, $t7
la $s0, i
sw $t4, 0($s0)
la $t3, p
lw $t4, 0($t3)
add $t0, $t0, $t4
la $s0, j
sw $t2, 0($s0)
la $s6, q
lw $t2, 0($s6)
add $t0, $t0, $t2
la $s0, k
sw $t9, 0($s0)
la $s1, r
lw $t9, 0($s1)
add $t0, $t0, $t9
sw $t0, 0($t5)
la $t0, s
lw $t5, 0($t0)
la $s0, l
sw $s2, 0($s0)
la $s2, ae
lw $s3, 0($s2)
add $s3, $s3, $t5
la $s0, m
sw $s4, 0($s0)
la $t8, t
lw $s4, 0($t8)
add $s3, $s3, $s4
la $s0, n
sw $s5, 0($s0)
la $t1, u
lw $s5, 0($t1)
add $s3, $s3, $s5
la $s0, o
sw $t7, 0($s0)
la $t6, v
lw $t7, 0($t6)
add $s3, $s3, $t7
la $s0, p
sw $t4, 0($s0)
la $t3, w
lw $t4, 0($t3)
add $s3, $s3, $t4
la $s0, q
sw $t2, 0($s0)
la $s6, x
lw $t2, 0($s6)
add $s3, $s3, $t2
la $s0, r
sw $t9, 0($s0)
la $s1, y
lw $t9, 0($s1)
add $s3, $s3, $t9
la $s0, s
sw $t5, 0($s0)
la $t0, z
lw $t5, 0($t0)
add $s3, $s3, $t5
sw $s3, 0($s2)
la $s3, aa
lw $s2, 0($s3)
la $s0, t
sw $s4, 0($s0)
la $s4, ae
lw $t8, 0($s4)
add $t8, $t8, $s2
la $s0, u
sw $s5, 0($s0)
la $t1, ab
lw $s5, 0($t1)
add $t8, $t8, $s5
la $s0, v
sw $t7, 0($s0)
la $t7, ad
lw $t6, 0($t7)
sub $t6, $t6, $t8
la $s0, w
sw $t4, 0($s0)
la $t3, c
lw $t4, 0($t3)
move $s6, $t4
la $s0, x
sw $t2, 0($s0)
la $t2, d
lw $s1, 0($t2)
add $s6, $s6, $s1
la $s0, y
sw $t9, 0($s0)
la $t9, e
lw $t0, 0($t9)
add $s6, $s6, $t0
la $s0, z
sw $t5, 0($s0)
la $t5, f
lw $s3, 0($t5)
add $s6, $s6, $s3
la $s0, aa
sw $s2, 0($s0)
sw $t8, 0($s4)
la $s2, g
lw $t8, 0($s2)
add $s6, $s6, $t8
la $s4, h
lw $t1, 0($s4)
add $s6, $s6, $t1
la $s0, ab
sw $s5, 0($s0)
sw $t6, 0($t7)
la $s5, i
lw $t6, 0($s5)
add $s6, $s6, $t6
la $t7, j
lw $t3, 0($t7)
add $s6, $s6, $t3
la $s0, c
sw $t4, 0($s0)
la $s0, af
sw $s6, 0($s0)
la $t4, k
lw $s6, 0($t4)
la $s0, d
sw $s1, 0($s0)
la $s1, af
lw $t2, 0($s1)
add $t2, $t2, $s6
la $s0, e
sw $t0, 0($s0)
la $t9, l
lw $t0, 0($t9)
add $t2, $t2, $t0
la $s0, f
sw $s3, 0($s0)
la $t5, m
lw $s3, 0($t5)
add $t2, $t2, $s3
la $s0, g
sw $t8, 0($s0)
la $s2, n
lw $t8, 0($s2)
add $t2, $t2, $t8
la $s0, h
sw $t1, 0($s0)
la $s4, o
lw $t1, 0($s4)
add $t2, $t2, $t1
la $s0, i
sw $t6, 0($s0)
la $s5, p
lw $t6, 0($s5)
add $t2, $t2, $t6
la $s0, j
sw $t3, 0($s0)
la $t7, q
lw $t3, 0($t7)
add $t2, $t2, $t3
la $s0, k
sw $s6, 0($s0)
la $t4, r
lw $s6, 0($t4)
add $t2, $t2, $s6
sw $t2, 0($s1)
la $t2, s
lw $s1, 0($t2)
la $s0, l
sw $t0, 0($s0)
la $t0, af
lw $t9, 0($t0)
add $t9, $t9, $s1
la $s0, m
sw $s3, 0($s0)
la $t5, t
lw $s3, 0($t5)
add $t9, $t9, $s3
la $s0, n
sw $t8, 0($s0)
la $s2, u
lw $t8, 0($s2)
add $t9, $t9, $t8
la $s0, o
sw $t1, 0($s0)
la $s4, v
lw $t1, 0($s4)
add $t9, $t9, $t1
la $s0, p
sw $t6, 0($s0)
la $s5, w
lw $t6, 0($s5)
add $t9, $t9, $t6
la $s0, q
sw $t3, 0($s0)
la $t7, x
lw $t3, 0($t7)
add $t9, $t9, $t3
la $s0, r
sw $s6, 0($s0)
la $t4, y
lw $s6, 0($t4)
add $t9, $t9, $s6
la $s0, s
sw $s1, 0($s0)
la $t2, z
lw $s1, 0($t2)
add $t9, $t9, $s1
sw $t9, 0($t0)
la $t9, aa
lw $t0, 0($t9)
la $s0, t
sw $s3, 0($s0)
la $s3, af
lw $t5, 0($s3)
add $t5, $t5, $t0
la $s0, u
sw $t8, 0($s0)
la $s2, ab
lw $t8, 0($s2)
add $t5, $t5, $t8
la $s0, v
sw $t1, 0($s0)
la $t1, ad
lw $s4, 0($t1)
add $s4, $s4, $t5
la $s0, w
sw $t6, 0($s0)
la $s5, c
lw $t6, 0($s5)
move $t7, $t6
la $s0, x
sw $t3, 0($s0)
la $t3, d
lw $t4, 0($t3)
add $t7, $t7, $t4
la $s0, y
sw $s6, 0($s0)
la $s6, e
lw $t2, 0($s6)
add $t7, $t7, $t2
la $s0, z
sw $s1, 0($s0)
la $s1, f
lw $t9, 0($s1)
add $t7, $t7, $t9
la $s0, aa
sw $t0, 0($s0)
sw $t5, 0($s3)
la $t0, g
lw $t5, 0($t0)
add $t7, $t7, $t5
la $s3, h
lw $s2, 0($s3)
add $t7, $t7, $s2
la $s0, ab
sw $t8, 0($s0)
sw $s4, 0($t1)
la $t8, i
lw $s4, 0($t8)
add $t7, $t7, $s4
la $t1, j
lw $s5, 0($t1)
add $t7, $t7, $s5
la $s0, c
sw $t6, 0($s0)
la $s0, ag
sw $t7, 0($s0)
la $t6, k
lw $t7, 0($t6)
la $s0, d
sw $t4, 0($s0)
la $t4, ag
lw $t3, 0($t4)
add $t3, $t3, $t7
la $s0, e
sw $t2, 0($s0)
la $s6, l
lw $t2, 0($s6)
add $t3, $t3, $t2
la $s0, f
sw $t9, 0($s0)
la $s1, m
lw $t9, 0($s1)
add $t3, $t3, $t9
la $s0, g
sw $t5, 0($s0)
la $t0, n
lw $t5, 0($t0)
add $t3, $t3, $t5
la $s0, h
sw $s2, 0($s0)
la $s3, o
lw $s2, 0($s3)
add $t3, $t3, $s2
la $s0, i
sw $s4, 0($s0)
la $t8, p
lw $s4, 0($t8)
add $t3, $t3, $s4
la $s0, j
sw $s5, 0($s0)
la $t1, q
lw $s5, 0($t1)
add $t3, $t3, $s5
la $s0, k
sw $t7, 0($s0)
la $t6, r
lw $t7, 0($t6)
add $t3, $t3, $t7
sw $t3, 0($t4)
la $t3, s
lw $t4, 0($t3)
la $s0, l
sw $t2, 0($s0)
la $t2, ag
lw $s6, 0($t2)
add $s6, $s6, $t4
la $s0, m
sw $t9, 0($s0)
la $s1, t
lw $t9, 0($s1)
add $s6, $s6, $t9
la $s0, n
sw $t5, 0($s0)
la $t0, u
lw $t5, 0($t0)
add $s6, $s6, $t5
la $s0, o
sw $s2, 0($s0)
la $s3, v
lw $s2, 0($s3)
add $s6, $s6, $s2
la $s0, p
sw $s4, 0($s0)
la $t8, w
lw $s4, 0($t8)
add $s6, $s6, $s4
la $s0, q
sw $s5, 0($s0)
la $t1, x
lw $s5, 0($t1)
add $s6, $s6, $s5
la $s0, r
sw $t7, 0($s0)
la $t6, y
lw $t7, 0($t6)
add $s6, $s6, $t7
la $s0, s
sw $t4, 0($s0)
la $t3, z
lw $t4, 0($t3)
add $s6, $s6, $t4
sw $s6, 0($t2)
la $s6, aa
lw $t2, 0($s6)
la $s0, t
sw $t9, 0($s0)
la $t9, ag
lw $s1, 0($t9)
add $s1, $s1, $t2
la $s0, u
sw $t5, 0($s0)
la $t0, ab
lw $t5, 0($t0)
add $s1, $s1, $t5
la $s0, v
sw $s2, 0($s0)
la $s2, ad
lw $s3, 0($s2)
sub $s3, $s3, $s1
la $s0, w
sw $s4, 0($s0)
la $t8, c
lw $s4, 0($t8)
move $t1, $s4
la $s0, x
sw $s5, 0($s0)
la $s5, d
lw $t6, 0($s5)
add $t1, $t1, $t6
la $s0, y
sw $t7, 0($s0)
la $t7, e
lw $t3, 0($t7)
add $t1, $t1, $t3
la $s0, z
sw $t4, 0($s0)
la $t4, f
lw $s6, 0($t4)
add $t1, $t1, $s6
la $s0, aa
sw $t2, 0($s0)
sw $s1, 0($t9)
la $t2, g
lw $s1, 0($t2)
add $t1, $t1, $s1
la $t9, h
lw $t0, 0($t9)
add $t1, $t1, $t0
la $s0, ab
sw $t5, 0($s0)
sw $s3, 0($s2)
la $t5, i
lw $s3, 0($t5)
add $t1, $t1, $s3
la $s2, j
lw $t8, 0($s2)
add $t1, $t1, $t8
la $s0, c
sw $s4, 0($s0)
la $s0, ah
sw $t1, 0($s0)
la $s4, k
lw $t1, 0($s4)
la $s0, d
sw $t6, 0($s0)
la $t6, ah
lw $s5, 0($t6)
add $s5, $s5, $t1
la $s0, e
sw $t3, 0($s0)
la $t7, l
lw $t3, 0($t7)
add $s5, $s5, $t3
la $s0, f
sw $s6, 0($s0)
la $t4, m
lw $s6, 0($t4)
add $s5, $s5, $s6
la $s0, g
sw $s1, 0($s0)
la $t2, n
lw $s1, 0($t2)
add $s5, $s5, $s1
la $s0, h
sw $t0, 0($s0)
la $t9, o
lw $t0, 0($t9)
add $s5, $s5, $t0
la $s0, i
sw $s3, 0($s0)
la $t5, p
lw $s3, 0($t5)
add $s5, $s5, $s3
la $s0, j
sw $t8, 0($s0)
la $s2, q
lw $t8, 0($s2)
add $s5, $s5, $t8
la $s0, k
sw $t1, 0($s0)
la $s4, r
lw $t1, 0($s4)
add $s5, $s5, $t1
sw $s5, 0($t6)
la $s5, s
lw $t6, 0($s5)
la $s0, l
sw $t3, 0($s0)
la $t3, ah
lw $t7, 0($t3)
add $t7, $t7, $t6
la $s0, m
sw $s6, 0($s0)
la $t4, t
lw $s6, 0($t4)
add $t7, $t7, $s6
la $s0, n
sw $s1, 0($s0)
la $t2, u
lw $s1, 0($t2)
add $t7, $t7, $s1
la $s0, o
sw $t0, 0($s0)
la $t9, v
lw $t0, 0($t9)
add $t7, $t7, $t0
la $s0, p
sw $s3, 0($s0)
la $t5, w
lw $s3, 0($t5)
add $t7, $t7, $s3
la $s0, q
sw $t8, 0($s0)
la $s2, x
lw $t8, 0($s2)
add $t7, $t7, $t8
la $s0, r
sw $t1, 0($s0)
la $s4, y
lw $t1, 0($s4)
add $t7, $t7, $t1
la $s0, s
sw $t6, 0($s0)
la $s5, z
lw $t6, 0($s5)
add $t7, $t7, $t6
sw $t7, 0($t3)
la $t7, aa
lw $t3, 0($t7)
la $s0, t
sw $s6, 0($s0)
la $s6, ah
lw $t4, 0($s6)
add $t4, $t4, $t3
la $s0, u
sw $s1, 0($s0)
la $t2, ab
lw $s1, 0($t2)
add $t4, $t4, $s1
la $s0, v
sw $t0, 0($s0)
la $t0, ad
lw $t9, 0($t0)
add $t9, $t9, $t4
la $s0, w
sw $s3, 0($s0)
la $t5, c
lw $s3, 0($t5)
move $s2, $s3
la $s0, x
sw $t8, 0($s0)
la $t8, d
lw $s4, 0($t8)
add $s2, $s2, $s4
la $s0, y
sw $t1, 0($s0)
la $t1, e
lw $s5, 0($t1)
add $s2, $s2, $s5
la $s0, z
sw $t6, 0($s0)
la $t6, f
lw $t7, 0($t6)
add $s2, $s2, $t7
la $s0, aa
sw $t3, 0($s0)
sw $t4, 0($s6)
la $t3, g
lw $t4, 0($t3)
add $s2, $s2, $t4
la $s6, h
lw $t2, 0($s6)
add $s2, $s2, $t2
la $s0, ab
sw $s1, 0($s0)
sw $t9, 0($t0)
la $s1, i
lw $t9, 0($s1)
add $s2, $s2, $t9
la $t0, j
lw $t5, 0($t0)
add $s2, $s2, $t5
la $s0, c
sw $s3, 0($s0)
la $s0, ai
sw $s2, 0($s0)
la $s3, k
lw $s2, 0($s3)
la $s0, d
sw $s4, 0($s0)
la $s4, ai
lw $t8, 0($s4)
add $t8, $t8, $s2
la $s0, e
sw $s5, 0($s0)
la $t1, l
lw $s5, 0($t1)
add $t8, $t8, $s5
la $s0, f
sw $t7, 0($s0)
la $t6, m
lw $t7, 0($t6)
add $t8, $t8, $t7
la $s0, g
sw $t4, 0($s0)
la $t3, n
lw $t4, 0($t3)
add $t8, $t8, $t4
la $s0, h
sw $t2, 0($s0)
la $s6, o
lw $t2, 0($s6)
add $t8, $t8, $t2
la $s0, i
sw $t9, 0($s0)
la $s1, p
lw $t9, 0($s1)
add $t8, $t8, $t9
la $s0, j
sw $t5, 0($s0)
la $t0, q
lw $t5, 0($t0)
add $t8, $t8, $t5
la $s0, k
sw $s2, 0($s0)
la $s3, r
lw $s2, 0($s3)
add $t8, $t8, $s2
sw $t8, 0($s4)
la $t8, s
lw $s4, 0($t8)
la $s0, l
sw $s5, 0($s0)
la $s5, ai
lw $t1, 0($s5)
add $t1, $t1, $s4
la $s0, m
sw $t7, 0($s0)
la $t6, t
lw $t7, 0($t6)
add $t1, $t1, $t7
la $s0, n
sw $t4, 0($s0)
la $t3, u
lw $t4, 0($t3)
add $t1, $t1, $t4
la $s0, o
sw $t2, 0($s0)
la $s6, v
lw $t2, 0($s6)
add $t1, $t1, $t2
la $s0, p
sw $t9, 0($s0)
la $s1, w
lw $t9, 0($s1)
add $t1, $t1, $t9
la $s0, q
sw $t5, 0($s0)
la $t0, x
lw $t5, 0($t0)
add $t1, $t1, $t5
la $s0, r
sw $s2, 0($s0)
la $s3, y
lw $s2, 0($s3)
add $t1, $t1, $s2
la $s0, s
sw $s4, 0($s0)
la $t8, z
lw $s4, 0($t8)
add $t1, $t1, $s4
sw $t1, 0($s5)
la $t1, aa
lw $s5, 0($t1)
la $s0, t
sw $t7, 0($s0)
la $t7, ai
lw $t6, 0($t7)
add $t6, $t6, $s5
la $s0, u
sw $t4, 0($s0)
la $t3, ab
lw $t4, 0($t3)
add $t6, $t6, $t4
la $s0, v
sw $t2, 0($s0)
la $t2, ad
lw $s6, 0($t2)
sub $s6, $s6, $t6
la $s0, w
sw $t9, 0($s0)
la $s1, c
lw $t9, 0($s1)
move $t0, $t9
la $s0, x
sw $t5, 0($s0)
la $t5, d
lw $s3, 0($t5)
add $t0, $t0, $s3
la $s0, y
sw $s2, 0($s0)
la $s2, e
lw $t8, 0($s2)
add $t0, $t0, $t8
la $s0, z
sw $s4, 0($s0)
la $s4, f
lw $t1, 0($s4)
add $t0, $t0, $t1
la $s0, aa
sw $s5, 0($s0)
sw $t6, 0($t7)
la $s5, g
lw $t6, 0($s5)
add $t0, $t0, $t6
la $t7, h
lw $t3, 0($t7)
add $t0, $t0, $t3
la $s0, ab
sw $t4, 0($s0)
sw $s6, 0($t2)
la $t4, i
lw $s6, 0($t4)
add $t0, $t0, $s6
la $t2, j
lw $s1, 0($t2)
add $t0, $t0, $s1
la $s0, c
sw $t9, 0($s0)
la $s0, aj
sw $t0, 0($s0)
la $t9, k
lw $t0, 0($t9)
la $s0, d
sw $s3, 0($s0)
la $s3, aj
lw $t5, 0($s3)
add $t5, $t5, $t0
la $s0, e
sw $t8, 0($s0)
la $s2, l
lw $t8, 0($s2)
add $t5, $t5, $t8
la $s0, f
sw $t1, 0($s0)
la $s4, m
lw $t1, 0($s4)
add $t5, $t5, $t1
la $s0, g
sw $t6, 0($s0)
la $s5, n
lw $t6, 0($s5)
add $t5, $t5, $t6
la $s0, h
sw $t3, 0($s0)
la $t7, o
lw $t3, 0($t7)
add $t5, $t5, $t3
la $s0, i
sw $s6, 0($s0)
la $t4, p
lw $s6, 0($t4)
add $t5, $t5, $s6
la $s0, j
sw $s1, 0($s0)
la $t2, q
lw $s1, 0($t2)
add $t5, $t5, $s1
la $s0, k
sw $t0, 0($s0)
la $t9, r
lw $t0, 0($t9)
add $t5, $t5, $t0
sw $t5, 0($s3)
la $t5, s
lw $s3, 0($t5)
la $s0, l
sw $t8, 0($s0)
la $t8, aj
lw $s2, 0($t8)
add $s2, $s2, $s3
la $s0, m
sw $t1, 0($s0)
la $s4, t
lw $t1, 0($s4)
add $s2, $s2, $t1
la $s0, n
sw $t6, 0($s0)
la $s5, u
lw $t6, 0($s5)
add $s2, $s2, $t6
la $s0, o
sw $t3, 0($s0)
la $t7, v
lw $t3, 0($t7)
add $s2, $s2, $t3
la $s0, p
sw $s6, 0($s0)
la $t4, w
lw $s6, 0($t4)
add $s2, $s2, $s6
la $s0, q
sw $s1, 0($s0)
la $t2, x
lw $s1, 0($t2)
add $s2, $s2, $s1
la $s0, r
sw $t0, 0($s0)
la $t9, y
lw $t0, 0($t9)
add $s2, $s2, $t0
la $s0, s
sw $s3, 0($s0)
la $t5, z
lw $s3, 0($t5)
add $s2, $s2, $s3
sw $s2, 0($t8)
la $s2, aa
lw $t8, 0($s2)
la $s0, t
sw $t1, 0($s0)
la $t1, aj
lw $s4, 0($t1)
add $s4, $s4, $t8
la $s0, u
sw $t6, 0($s0)
la $s5, ab
lw $t6, 0($s5)
add $s4, $s4, $t6
la $s0, v
sw $t3, 0($s0)
la $t3, ad
lw $t7, 0($t3)
add $t7, $t7, $s4
li $v0, 1
move $a0, $t7
syscall
