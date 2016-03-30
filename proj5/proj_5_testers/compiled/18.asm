.data
o:	.word	0	# o in original
k:	.word	0	# k in original
j:	.word	0	# j in original
aa:	.word	0	# temp_b in original
l:	.word	0	# l in original
d:	.word	0	# d in original
z:	.word	0	# z in original
n:	.word	0	# n in original
ah:	.word	0	# temp_h in original
ab:	.word	0	# temp_a in original
q:	.word	0	# q in original
ad:	.word	0	# temp_d in original
e:	.word	0	# e in original
a:	.word	0	# a in original
f:	.word	0	# f in original
t:	.word	0	# t in original
af:	.word	0	# temp_f in original
ac:	.word	0	# temp_c in original
m:	.word	0	# m in original
y:	.word	0	# y in original
u:	.word	0	# u in original
ag:	.word	0	# temp_g in original
r:	.word	0	# r in original
g:	.word	0	# g in original
b:	.word	0	# b in original
c:	.word	0	# c in original
p:	.word	0	# p in original
i:	.word	0	# i in original
v:	.word	0	# v in original
h:	.word	0	# h in original
w:	.word	0	# w in original
x:	.word	0	# x in original
s:	.word	0	# s in original
ae:	.word	0	# temp_e in original
.text
li $v0, 5
syscall
la $s6, a
lw $s2, 0($s6)
move $s2, $v0
li $v0, 5
syscall
la $t2, b
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $t6, c
lw $s1, 0($t6)
move $s1, $v0
li $v0, 5
syscall
la $t8, d
lw $t1, 0($t8)
move $t1, $v0
li $v0, 5
syscall
la $t3, e
lw $s5, 0($t3)
move $s5, $v0
li $v0, 5
syscall
la $t5, f
lw $s3, 0($t5)
move $s3, $v0
li $v0, 5
syscall
la $t4, g
lw $s4, 0($t4)
move $s4, $v0
li $v0, 5
syscall
la $t9, h
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, a
sw $s2, 0($s0)
la $s2, i
lw $s6, 0($s2)
move $s6, $v0
li $v0, 5
syscall
la $s0, b
sw $t7, 0($s0)
la $t7, j
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $s0, c
sw $s1, 0($s0)
la $s1, k
lw $t6, 0($s1)
move $t6, $v0
li $v0, 5
syscall
la $s0, d
sw $t1, 0($s0)
la $t1, l
lw $t8, 0($t1)
move $t8, $v0
li $v0, 5
syscall
la $s0, e
sw $s5, 0($s0)
la $s5, m
lw $t3, 0($s5)
move $t3, $v0
li $v0, 5
syscall
la $s0, f
sw $s3, 0($s0)
la $s3, n
lw $t5, 0($s3)
move $t5, $v0
li $v0, 5
syscall
la $s0, g
sw $s4, 0($s0)
la $s4, o
lw $t4, 0($s4)
move $t4, $v0
li $v0, 5
syscall
la $s0, h
sw $t0, 0($s0)
la $t0, p
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $s0, i
sw $s6, 0($s0)
la $s6, q
lw $s2, 0($s6)
move $s2, $v0
li $v0, 5
syscall
la $s0, j
sw $t2, 0($s0)
la $t2, r
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s0, k
sw $t6, 0($s0)
la $t6, s
lw $s1, 0($t6)
move $s1, $v0
li $v0, 5
syscall
la $s0, l
sw $t8, 0($s0)
la $t8, t
lw $t1, 0($t8)
move $t1, $v0
li $v0, 5
syscall
la $s0, m
sw $t3, 0($s0)
la $t3, u
lw $s5, 0($t3)
move $s5, $v0
li $v0, 5
syscall
la $s0, n
sw $t5, 0($s0)
la $t5, v
lw $s3, 0($t5)
move $s3, $v0
li $v0, 5
syscall
la $s0, o
sw $t4, 0($s0)
la $t4, w
lw $s4, 0($t4)
move $s4, $v0
li $v0, 5
syscall
la $s0, p
sw $t9, 0($s0)
la $t9, x
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, q
sw $s2, 0($s0)
la $s2, y
lw $s6, 0($s2)
move $s6, $v0
li $v0, 5
syscall
la $s0, r
sw $t7, 0($s0)
la $t7, z
lw $t2, 0($t7)
move $t2, $v0
la $s0, s
sw $s1, 0($s0)
la $t6, a
lw $s1, 0($t6)
move $t8, $s1
la $s0, t
sw $t1, 0($s0)
la $t1, b
lw $t3, 0($t1)
add $t8, $t8, $t3
la $s0, u
sw $s5, 0($s0)
la $s5, c
lw $t5, 0($s5)
add $t8, $t8, $t5
la $s0, v
sw $s3, 0($s0)
la $s3, d
lw $t4, 0($s3)
add $t8, $t8, $t4
la $s0, w
sw $s4, 0($s0)
la $s4, e
lw $t9, 0($s4)
add $t8, $t8, $t9
la $s0, x
sw $t0, 0($s0)
la $t0, f
lw $s2, 0($t0)
add $t8, $t8, $s2
la $s0, y
sw $s6, 0($s0)
la $s6, g
lw $t7, 0($s6)
add $t8, $t8, $t7
la $s0, z
sw $t2, 0($s0)
la $t2, h
lw $t6, 0($t2)
add $t8, $t8, $t6
la $s0, a
sw $s1, 0($s0)
la $s0, aa
sw $t8, 0($s0)
la $s1, i
lw $t8, 0($s1)
la $s0, b
sw $t3, 0($s0)
la $t3, aa
lw $t1, 0($t3)
add $t1, $t1, $t8
la $s0, c
sw $t5, 0($s0)
la $s5, j
lw $t5, 0($s5)
add $t1, $t1, $t5
la $s0, d
sw $t4, 0($s0)
la $s3, k
lw $t4, 0($s3)
add $t1, $t1, $t4
la $s0, e
sw $t9, 0($s0)
la $s4, l
lw $t9, 0($s4)
add $t1, $t1, $t9
la $s0, f
sw $s2, 0($s0)
la $t0, m
lw $s2, 0($t0)
add $t1, $t1, $s2
la $s0, g
sw $t7, 0($s0)
la $s6, n
lw $t7, 0($s6)
add $t1, $t1, $t7
la $s0, h
sw $t6, 0($s0)
la $t2, o
lw $t6, 0($t2)
add $t1, $t1, $t6
la $s0, i
sw $t8, 0($s0)
la $s1, p
lw $t8, 0($s1)
add $t1, $t1, $t8
sw $t1, 0($t3)
la $t1, q
lw $t3, 0($t1)
la $s0, j
sw $t5, 0($s0)
la $t5, aa
lw $s5, 0($t5)
add $s5, $s5, $t3
la $s0, k
sw $t4, 0($s0)
la $s3, r
lw $t4, 0($s3)
add $s5, $s5, $t4
la $s0, l
sw $t9, 0($s0)
la $s4, s
lw $t9, 0($s4)
add $s5, $s5, $t9
la $s0, m
sw $s2, 0($s0)
la $t0, t
lw $s2, 0($t0)
add $s5, $s5, $s2
la $s0, n
sw $t7, 0($s0)
la $s6, u
lw $t7, 0($s6)
add $s5, $s5, $t7
la $s0, o
sw $t6, 0($s0)
la $t2, v
lw $t6, 0($t2)
add $s5, $s5, $t6
la $s0, p
sw $t8, 0($s0)
la $s1, w
lw $t8, 0($s1)
add $s5, $s5, $t8
la $s0, q
sw $t3, 0($s0)
la $t1, x
lw $t3, 0($t1)
add $s5, $s5, $t3
sw $s5, 0($t5)
la $s5, y
lw $t5, 0($s5)
la $s0, r
sw $t4, 0($s0)
la $t4, aa
lw $s3, 0($t4)
add $s3, $s3, $t5
la $s0, s
sw $t9, 0($s0)
la $s4, z
lw $t9, 0($s4)
add $s3, $s3, $t9
move $t0, $s3
la $s0, t
sw $s2, 0($s0)
la $s2, a
lw $s6, 0($s2)
la $s0, u
sw $t7, 0($s0)
move $t7, $s6
la $s0, v
sw $t6, 0($s0)
la $t2, b
lw $t6, 0($t2)
add $t7, $t7, $t6
la $s0, w
sw $t8, 0($s0)
la $s1, c
lw $t8, 0($s1)
add $t7, $t7, $t8
la $s0, x
sw $t3, 0($s0)
la $t1, d
lw $t3, 0($t1)
add $t7, $t7, $t3
la $s0, y
sw $t5, 0($s0)
la $s5, e
lw $t5, 0($s5)
add $t7, $t7, $t5
sw $s3, 0($t4)
la $s3, f
lw $t4, 0($s3)
add $t7, $t7, $t4
la $s0, z
sw $t9, 0($s0)
la $s4, g
lw $t9, 0($s4)
add $t7, $t7, $t9
la $s0, ab
sw $t0, 0($s0)
la $t0, h
lw $s2, 0($t0)
add $t7, $t7, $s2
la $s0, a
sw $s6, 0($s0)
la $s0, ac
sw $t7, 0($s0)
la $s6, i
lw $t7, 0($s6)
la $s0, b
sw $t6, 0($s0)
la $t6, ac
lw $t2, 0($t6)
add $t2, $t2, $t7
la $s0, c
sw $t8, 0($s0)
la $s1, j
lw $t8, 0($s1)
add $t2, $t2, $t8
la $s0, d
sw $t3, 0($s0)
la $t1, k
lw $t3, 0($t1)
add $t2, $t2, $t3
la $s0, e
sw $t5, 0($s0)
la $s5, l
lw $t5, 0($s5)
add $t2, $t2, $t5
la $s0, f
sw $t4, 0($s0)
la $s3, m
lw $t4, 0($s3)
add $t2, $t2, $t4
la $s0, g
sw $t9, 0($s0)
la $s4, n
lw $t9, 0($s4)
add $t2, $t2, $t9
la $s0, h
sw $s2, 0($s0)
la $t0, o
lw $s2, 0($t0)
add $t2, $t2, $s2
la $s0, i
sw $t7, 0($s0)
la $s6, p
lw $t7, 0($s6)
add $t2, $t2, $t7
sw $t2, 0($t6)
la $t2, q
lw $t6, 0($t2)
la $s0, j
sw $t8, 0($s0)
la $t8, ac
lw $s1, 0($t8)
add $s1, $s1, $t6
la $s0, k
sw $t3, 0($s0)
la $t1, r
lw $t3, 0($t1)
add $s1, $s1, $t3
la $s0, l
sw $t5, 0($s0)
la $s5, s
lw $t5, 0($s5)
add $s1, $s1, $t5
la $s0, m
sw $t4, 0($s0)
la $s3, t
lw $t4, 0($s3)
add $s1, $s1, $t4
la $s0, n
sw $t9, 0($s0)
la $s4, u
lw $t9, 0($s4)
add $s1, $s1, $t9
la $s0, o
sw $s2, 0($s0)
la $t0, v
lw $s2, 0($t0)
add $s1, $s1, $s2
la $s0, p
sw $t7, 0($s0)
la $s6, w
lw $t7, 0($s6)
add $s1, $s1, $t7
la $s0, q
sw $t6, 0($s0)
la $t2, x
lw $t6, 0($t2)
add $s1, $s1, $t6
sw $s1, 0($t8)
la $s1, y
lw $t8, 0($s1)
la $s0, r
sw $t3, 0($s0)
la $t3, ac
lw $t1, 0($t3)
add $t1, $t1, $t8
la $s0, s
sw $t5, 0($s0)
la $s5, z
lw $t5, 0($s5)
add $t1, $t1, $t5
la $s0, t
sw $t4, 0($s0)
la $t4, ab
lw $s3, 0($t4)
sub $s3, $s3, $t1
la $s0, u
sw $t9, 0($s0)
la $s4, a
lw $t9, 0($s4)
move $t0, $t9
la $s0, v
sw $s2, 0($s0)
la $s2, b
lw $s6, 0($s2)
add $t0, $t0, $s6
la $s0, w
sw $t7, 0($s0)
la $t7, c
lw $t2, 0($t7)
add $t0, $t0, $t2
la $s0, x
sw $t6, 0($s0)
la $t6, d
lw $s1, 0($t6)
add $t0, $t0, $s1
la $s0, y
sw $t8, 0($s0)
sw $t1, 0($t3)
la $t8, e
lw $t1, 0($t8)
add $t0, $t0, $t1
la $t3, f
lw $s5, 0($t3)
add $t0, $t0, $s5
la $s0, z
sw $t5, 0($s0)
sw $s3, 0($t4)
la $t5, g
lw $s3, 0($t5)
add $t0, $t0, $s3
la $t4, h
lw $s4, 0($t4)
add $t0, $t0, $s4
la $s0, a
sw $t9, 0($s0)
la $s0, ad
sw $t0, 0($s0)
la $t9, i
lw $t0, 0($t9)
la $s0, b
sw $s6, 0($s0)
la $s6, ad
lw $s2, 0($s6)
add $s2, $s2, $t0
la $s0, c
sw $t2, 0($s0)
la $t7, j
lw $t2, 0($t7)
add $s2, $s2, $t2
la $s0, d
sw $s1, 0($s0)
la $t6, k
lw $s1, 0($t6)
add $s2, $s2, $s1
la $s0, e
sw $t1, 0($s0)
la $t8, l
lw $t1, 0($t8)
add $s2, $s2, $t1
la $s0, f
sw $s5, 0($s0)
la $t3, m
lw $s5, 0($t3)
add $s2, $s2, $s5
la $s0, g
sw $s3, 0($s0)
la $t5, n
lw $s3, 0($t5)
add $s2, $s2, $s3
la $s0, h
sw $s4, 0($s0)
la $t4, o
lw $s4, 0($t4)
add $s2, $s2, $s4
la $s0, i
sw $t0, 0($s0)
la $t9, p
lw $t0, 0($t9)
add $s2, $s2, $t0
sw $s2, 0($s6)
la $s2, q
lw $s6, 0($s2)
la $s0, j
sw $t2, 0($s0)
la $t2, ad
lw $t7, 0($t2)
add $t7, $t7, $s6
la $s0, k
sw $s1, 0($s0)
la $t6, r
lw $s1, 0($t6)
add $t7, $t7, $s1
la $s0, l
sw $t1, 0($s0)
la $t8, s
lw $t1, 0($t8)
add $t7, $t7, $t1
la $s0, m
sw $s5, 0($s0)
la $t3, t
lw $s5, 0($t3)
add $t7, $t7, $s5
la $s0, n
sw $s3, 0($s0)
la $t5, u
lw $s3, 0($t5)
add $t7, $t7, $s3
la $s0, o
sw $s4, 0($s0)
la $t4, v
lw $s4, 0($t4)
add $t7, $t7, $s4
la $s0, p
sw $t0, 0($s0)
la $t9, w
lw $t0, 0($t9)
add $t7, $t7, $t0
la $s0, q
sw $s6, 0($s0)
la $s2, x
lw $s6, 0($s2)
add $t7, $t7, $s6
sw $t7, 0($t2)
la $t7, y
lw $t2, 0($t7)
la $s0, r
sw $s1, 0($s0)
la $s1, ad
lw $t6, 0($s1)
add $t6, $t6, $t2
la $s0, s
sw $t1, 0($s0)
la $t8, z
lw $t1, 0($t8)
add $t6, $t6, $t1
la $s0, t
sw $s5, 0($s0)
la $s5, ab
lw $t3, 0($s5)
add $t3, $t3, $t6
la $s0, u
sw $s3, 0($s0)
la $t5, a
lw $s3, 0($t5)
move $t4, $s3
la $s0, v
sw $s4, 0($s0)
la $s4, b
lw $t9, 0($s4)
add $t4, $t4, $t9
la $s0, w
sw $t0, 0($s0)
la $t0, c
lw $s2, 0($t0)
add $t4, $t4, $s2
la $s0, x
sw $s6, 0($s0)
la $s6, d
lw $t7, 0($s6)
add $t4, $t4, $t7
la $s0, y
sw $t2, 0($s0)
sw $t6, 0($s1)
la $t2, e
lw $t6, 0($t2)
add $t4, $t4, $t6
la $s1, f
lw $t8, 0($s1)
add $t4, $t4, $t8
la $s0, z
sw $t1, 0($s0)
sw $t3, 0($s5)
la $t1, g
lw $t3, 0($t1)
add $t4, $t4, $t3
la $s5, h
lw $t5, 0($s5)
add $t4, $t4, $t5
la $s0, a
sw $s3, 0($s0)
la $s0, ae
sw $t4, 0($s0)
la $s3, i
lw $t4, 0($s3)
la $s0, b
sw $t9, 0($s0)
la $t9, ae
lw $s4, 0($t9)
add $s4, $s4, $t4
la $s0, c
sw $s2, 0($s0)
la $t0, j
lw $s2, 0($t0)
add $s4, $s4, $s2
la $s0, d
sw $t7, 0($s0)
la $s6, k
lw $t7, 0($s6)
add $s4, $s4, $t7
la $s0, e
sw $t6, 0($s0)
la $t2, l
lw $t6, 0($t2)
add $s4, $s4, $t6
la $s0, f
sw $t8, 0($s0)
la $s1, m
lw $t8, 0($s1)
add $s4, $s4, $t8
la $s0, g
sw $t3, 0($s0)
la $t1, n
lw $t3, 0($t1)
add $s4, $s4, $t3
la $s0, h
sw $t5, 0($s0)
la $s5, o
lw $t5, 0($s5)
add $s4, $s4, $t5
la $s0, i
sw $t4, 0($s0)
la $s3, p
lw $t4, 0($s3)
add $s4, $s4, $t4
sw $s4, 0($t9)
la $s4, q
lw $t9, 0($s4)
la $s0, j
sw $s2, 0($s0)
la $s2, ae
lw $t0, 0($s2)
add $t0, $t0, $t9
la $s0, k
sw $t7, 0($s0)
la $s6, r
lw $t7, 0($s6)
add $t0, $t0, $t7
la $s0, l
sw $t6, 0($s0)
la $t2, s
lw $t6, 0($t2)
add $t0, $t0, $t6
la $s0, m
sw $t8, 0($s0)
la $s1, t
lw $t8, 0($s1)
add $t0, $t0, $t8
la $s0, n
sw $t3, 0($s0)
la $t1, u
lw $t3, 0($t1)
add $t0, $t0, $t3
la $s0, o
sw $t5, 0($s0)
la $s5, v
lw $t5, 0($s5)
add $t0, $t0, $t5
la $s0, p
sw $t4, 0($s0)
la $s3, w
lw $t4, 0($s3)
add $t0, $t0, $t4
la $s0, q
sw $t9, 0($s0)
la $s4, x
lw $t9, 0($s4)
add $t0, $t0, $t9
sw $t0, 0($s2)
la $t0, y
lw $s2, 0($t0)
la $s0, r
sw $t7, 0($s0)
la $t7, ae
lw $s6, 0($t7)
add $s6, $s6, $s2
la $s0, s
sw $t6, 0($s0)
la $t2, z
lw $t6, 0($t2)
add $s6, $s6, $t6
la $s0, t
sw $t8, 0($s0)
la $t8, ab
lw $s1, 0($t8)
sub $s1, $s1, $s6
la $s0, u
sw $t3, 0($s0)
la $t1, a
lw $t3, 0($t1)
move $s5, $t3
la $s0, v
sw $t5, 0($s0)
la $t5, b
lw $s3, 0($t5)
add $s5, $s5, $s3
la $s0, w
sw $t4, 0($s0)
la $t4, c
lw $s4, 0($t4)
add $s5, $s5, $s4
la $s0, x
sw $t9, 0($s0)
la $t9, d
lw $t0, 0($t9)
add $s5, $s5, $t0
la $s0, y
sw $s2, 0($s0)
sw $s6, 0($t7)
la $s2, e
lw $s6, 0($s2)
add $s5, $s5, $s6
la $t7, f
lw $t2, 0($t7)
add $s5, $s5, $t2
la $s0, z
sw $t6, 0($s0)
sw $s1, 0($t8)
la $t6, g
lw $s1, 0($t6)
add $s5, $s5, $s1
la $t8, h
lw $t1, 0($t8)
add $s5, $s5, $t1
la $s0, a
sw $t3, 0($s0)
la $s0, af
sw $s5, 0($s0)
la $t3, i
lw $s5, 0($t3)
la $s0, b
sw $s3, 0($s0)
la $s3, af
lw $t5, 0($s3)
add $t5, $t5, $s5
la $s0, c
sw $s4, 0($s0)
la $t4, j
lw $s4, 0($t4)
add $t5, $t5, $s4
la $s0, d
sw $t0, 0($s0)
la $t9, k
lw $t0, 0($t9)
add $t5, $t5, $t0
la $s0, e
sw $s6, 0($s0)
la $s2, l
lw $s6, 0($s2)
add $t5, $t5, $s6
la $s0, f
sw $t2, 0($s0)
la $t7, m
lw $t2, 0($t7)
add $t5, $t5, $t2
la $s0, g
sw $s1, 0($s0)
la $t6, n
lw $s1, 0($t6)
add $t5, $t5, $s1
la $s0, h
sw $t1, 0($s0)
la $t8, o
lw $t1, 0($t8)
add $t5, $t5, $t1
la $s0, i
sw $s5, 0($s0)
la $t3, p
lw $s5, 0($t3)
add $t5, $t5, $s5
sw $t5, 0($s3)
la $t5, q
lw $s3, 0($t5)
la $s0, j
sw $s4, 0($s0)
la $s4, af
lw $t4, 0($s4)
add $t4, $t4, $s3
la $s0, k
sw $t0, 0($s0)
la $t9, r
lw $t0, 0($t9)
add $t4, $t4, $t0
la $s0, l
sw $s6, 0($s0)
la $s2, s
lw $s6, 0($s2)
add $t4, $t4, $s6
la $s0, m
sw $t2, 0($s0)
la $t7, t
lw $t2, 0($t7)
add $t4, $t4, $t2
la $s0, n
sw $s1, 0($s0)
la $t6, u
lw $s1, 0($t6)
add $t4, $t4, $s1
la $s0, o
sw $t1, 0($s0)
la $t8, v
lw $t1, 0($t8)
add $t4, $t4, $t1
la $s0, p
sw $s5, 0($s0)
la $t3, w
lw $s5, 0($t3)
add $t4, $t4, $s5
la $s0, q
sw $s3, 0($s0)
la $t5, x
lw $s3, 0($t5)
add $t4, $t4, $s3
sw $t4, 0($s4)
la $t4, y
lw $s4, 0($t4)
la $s0, r
sw $t0, 0($s0)
la $t0, af
lw $t9, 0($t0)
add $t9, $t9, $s4
la $s0, s
sw $s6, 0($s0)
la $s2, z
lw $s6, 0($s2)
add $t9, $t9, $s6
la $s0, t
sw $t2, 0($s0)
la $t2, ab
lw $t7, 0($t2)
add $t7, $t7, $t9
la $s0, u
sw $s1, 0($s0)
la $t6, a
lw $s1, 0($t6)
move $t8, $s1
la $s0, v
sw $t1, 0($s0)
la $t1, b
lw $t3, 0($t1)
add $t8, $t8, $t3
la $s0, w
sw $s5, 0($s0)
la $s5, c
lw $t5, 0($s5)
add $t8, $t8, $t5
la $s0, x
sw $s3, 0($s0)
la $s3, d
lw $t4, 0($s3)
add $t8, $t8, $t4
la $s0, y
sw $s4, 0($s0)
sw $t9, 0($t0)
la $s4, e
lw $t9, 0($s4)
add $t8, $t8, $t9
la $t0, f
lw $s2, 0($t0)
add $t8, $t8, $s2
la $s0, z
sw $s6, 0($s0)
sw $t7, 0($t2)
la $s6, g
lw $t7, 0($s6)
add $t8, $t8, $t7
la $t2, h
lw $t6, 0($t2)
add $t8, $t8, $t6
la $s0, a
sw $s1, 0($s0)
la $s0, ag
sw $t8, 0($s0)
la $s1, i
lw $t8, 0($s1)
la $s0, b
sw $t3, 0($s0)
la $t3, ag
lw $t1, 0($t3)
add $t1, $t1, $t8
la $s0, c
sw $t5, 0($s0)
la $s5, j
lw $t5, 0($s5)
add $t1, $t1, $t5
la $s0, d
sw $t4, 0($s0)
la $s3, k
lw $t4, 0($s3)
add $t1, $t1, $t4
la $s0, e
sw $t9, 0($s0)
la $s4, l
lw $t9, 0($s4)
add $t1, $t1, $t9
la $s0, f
sw $s2, 0($s0)
la $t0, m
lw $s2, 0($t0)
add $t1, $t1, $s2
la $s0, g
sw $t7, 0($s0)
la $s6, n
lw $t7, 0($s6)
add $t1, $t1, $t7
la $s0, h
sw $t6, 0($s0)
la $t2, o
lw $t6, 0($t2)
add $t1, $t1, $t6
la $s0, i
sw $t8, 0($s0)
la $s1, p
lw $t8, 0($s1)
add $t1, $t1, $t8
sw $t1, 0($t3)
la $t1, q
lw $t3, 0($t1)
la $s0, j
sw $t5, 0($s0)
la $t5, ag
lw $s5, 0($t5)
add $s5, $s5, $t3
la $s0, k
sw $t4, 0($s0)
la $s3, r
lw $t4, 0($s3)
add $s5, $s5, $t4
la $s0, l
sw $t9, 0($s0)
la $s4, s
lw $t9, 0($s4)
add $s5, $s5, $t9
la $s0, m
sw $s2, 0($s0)
la $t0, t
lw $s2, 0($t0)
add $s5, $s5, $s2
la $s0, n
sw $t7, 0($s0)
la $s6, u
lw $t7, 0($s6)
add $s5, $s5, $t7
la $s0, o
sw $t6, 0($s0)
la $t2, v
lw $t6, 0($t2)
add $s5, $s5, $t6
la $s0, p
sw $t8, 0($s0)
la $s1, w
lw $t8, 0($s1)
add $s5, $s5, $t8
la $s0, q
sw $t3, 0($s0)
la $t1, x
lw $t3, 0($t1)
add $s5, $s5, $t3
sw $s5, 0($t5)
la $s5, y
lw $t5, 0($s5)
la $s0, r
sw $t4, 0($s0)
la $t4, ag
lw $s3, 0($t4)
add $s3, $s3, $t5
la $s0, s
sw $t9, 0($s0)
la $s4, z
lw $t9, 0($s4)
add $s3, $s3, $t9
la $s0, t
sw $s2, 0($s0)
la $s2, ab
lw $t0, 0($s2)
sub $t0, $t0, $s3
la $s0, u
sw $t7, 0($s0)
la $s6, a
lw $t7, 0($s6)
move $t2, $t7
la $s0, v
sw $t6, 0($s0)
la $t6, b
lw $s1, 0($t6)
add $t2, $t2, $s1
la $s0, w
sw $t8, 0($s0)
la $t8, c
lw $t1, 0($t8)
add $t2, $t2, $t1
la $s0, x
sw $t3, 0($s0)
la $t3, d
lw $s5, 0($t3)
add $t2, $t2, $s5
la $s0, y
sw $t5, 0($s0)
sw $s3, 0($t4)
la $t5, e
lw $s3, 0($t5)
add $t2, $t2, $s3
la $t4, f
lw $s4, 0($t4)
add $t2, $t2, $s4
la $s0, z
sw $t9, 0($s0)
sw $t0, 0($s2)
la $t9, g
lw $t0, 0($t9)
add $t2, $t2, $t0
la $s2, h
lw $s6, 0($s2)
add $t2, $t2, $s6
la $s0, a
sw $t7, 0($s0)
la $s0, ah
sw $t2, 0($s0)
la $t7, i
lw $t2, 0($t7)
la $s0, b
sw $s1, 0($s0)
la $s1, ah
lw $t6, 0($s1)
add $t6, $t6, $t2
la $s0, c
sw $t1, 0($s0)
la $t8, j
lw $t1, 0($t8)
add $t6, $t6, $t1
la $s0, d
sw $s5, 0($s0)
la $t3, k
lw $s5, 0($t3)
add $t6, $t6, $s5
la $s0, e
sw $s3, 0($s0)
la $t5, l
lw $s3, 0($t5)
add $t6, $t6, $s3
la $s0, f
sw $s4, 0($s0)
la $t4, m
lw $s4, 0($t4)
add $t6, $t6, $s4
la $s0, g
sw $t0, 0($s0)
la $t9, n
lw $t0, 0($t9)
add $t6, $t6, $t0
la $s0, h
sw $s6, 0($s0)
la $s2, o
lw $s6, 0($s2)
add $t6, $t6, $s6
la $s0, i
sw $t2, 0($s0)
la $t7, p
lw $t2, 0($t7)
add $t6, $t6, $t2
sw $t6, 0($s1)
la $t6, q
lw $s1, 0($t6)
la $s0, j
sw $t1, 0($s0)
la $t1, ah
lw $t8, 0($t1)
add $t8, $t8, $s1
la $s0, k
sw $s5, 0($s0)
la $t3, r
lw $s5, 0($t3)
add $t8, $t8, $s5
la $s0, l
sw $s3, 0($s0)
la $t5, s
lw $s3, 0($t5)
add $t8, $t8, $s3
la $s0, m
sw $s4, 0($s0)
la $t4, t
lw $s4, 0($t4)
add $t8, $t8, $s4
la $s0, n
sw $t0, 0($s0)
la $t9, u
lw $t0, 0($t9)
add $t8, $t8, $t0
la $s0, o
sw $s6, 0($s0)
la $s2, v
lw $s6, 0($s2)
add $t8, $t8, $s6
la $s0, p
sw $t2, 0($s0)
la $t7, w
lw $t2, 0($t7)
add $t8, $t8, $t2
la $s0, q
sw $s1, 0($s0)
la $t6, x
lw $s1, 0($t6)
add $t8, $t8, $s1
sw $t8, 0($t1)
la $t8, y
lw $t1, 0($t8)
la $s0, r
sw $s5, 0($s0)
la $s5, ah
lw $t3, 0($s5)
add $t3, $t3, $t1
la $s0, s
sw $s3, 0($s0)
la $t5, z
lw $s3, 0($t5)
add $t3, $t3, $s3
la $s0, t
sw $s4, 0($s0)
la $s4, ab
lw $t4, 0($s4)
add $t4, $t4, $t3
li $v0, 1
move $a0, $t4
syscall
