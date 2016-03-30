.data
a:	.word	0	# a in original
ac:	.word	0	# temp_c in original
ad:	.word	0	# temp_d in original
z:	.word	0	# z in original
ae:	.word	0	# temp_e in original
ag:	.word	0	# temp_g in original
c:	.word	0	# c in original
i:	.word	0	# i in original
aa:	.word	0	# temp_b in original
v:	.word	0	# v in original
q:	.word	0	# q in original
n:	.word	0	# n in original
k:	.word	0	# k in original
g:	.word	0	# g in original
e:	.word	0	# e in original
o:	.word	0	# o in original
s:	.word	0	# s in original
ab:	.word	0	# temp_a in original
f:	.word	0	# f in original
d:	.word	0	# d in original
r:	.word	0	# r in original
ah:	.word	0	# temp_h in original
b:	.word	0	# b in original
j:	.word	0	# j in original
p:	.word	0	# p in original
w:	.word	0	# w in original
m:	.word	0	# m in original
l:	.word	0	# l in original
h:	.word	0	# h in original
t:	.word	0	# t in original
y:	.word	0	# y in original
u:	.word	0	# u in original
x:	.word	0	# x in original
af:	.word	0	# temp_f in original
.text
li $v0, 5
syscall
la $s1, a
lw $t0, 0($s1)
move $t0, $v0
li $v0, 5
syscall
la $t8, b
lw $s3, 0($t8)
move $s3, $v0
li $v0, 5
syscall
la $t9, c
lw $t4, 0($t9)
move $t4, $v0
li $v0, 5
syscall
la $s6, d
lw $t3, 0($s6)
move $t3, $v0
li $v0, 5
syscall
la $t5, e
lw $t2, 0($t5)
move $t2, $v0
li $v0, 5
syscall
la $s4, f
lw $t1, 0($s4)
move $t1, $v0
li $v0, 5
syscall
la $s2, g
lw $t6, 0($s2)
move $t6, $v0
li $v0, 5
syscall
la $s5, h
lw $t7, 0($s5)
move $t7, $v0
li $v0, 5
syscall
la $s0, a
sw $t0, 0($s0)
la $t0, i
lw $s1, 0($t0)
move $s1, $v0
li $v0, 5
syscall
la $s0, b
sw $s3, 0($s0)
la $s3, j
lw $t8, 0($s3)
move $t8, $v0
li $v0, 5
syscall
la $s0, c
sw $t4, 0($s0)
la $t4, k
lw $t9, 0($t4)
move $t9, $v0
li $v0, 5
syscall
la $s0, d
sw $t3, 0($s0)
la $t3, l
lw $s6, 0($t3)
move $s6, $v0
li $v0, 5
syscall
la $s0, e
sw $t2, 0($s0)
la $t2, m
lw $t5, 0($t2)
move $t5, $v0
li $v0, 5
syscall
la $s0, f
sw $t1, 0($s0)
la $t1, n
lw $s4, 0($t1)
move $s4, $v0
li $v0, 5
syscall
la $s0, g
sw $t6, 0($s0)
la $t6, o
lw $s2, 0($t6)
move $s2, $v0
li $v0, 5
syscall
la $s0, h
sw $t7, 0($s0)
la $t7, p
lw $s5, 0($t7)
move $s5, $v0
li $v0, 5
syscall
la $s0, i
sw $s1, 0($s0)
la $s1, q
lw $t0, 0($s1)
move $t0, $v0
li $v0, 5
syscall
la $s0, j
sw $t8, 0($s0)
la $t8, r
lw $s3, 0($t8)
move $s3, $v0
li $v0, 5
syscall
la $s0, k
sw $t9, 0($s0)
la $t9, s
lw $t4, 0($t9)
move $t4, $v0
li $v0, 5
syscall
la $s0, l
sw $s6, 0($s0)
la $s6, t
lw $t3, 0($s6)
move $t3, $v0
li $v0, 5
syscall
la $s0, m
sw $t5, 0($s0)
la $t5, u
lw $t2, 0($t5)
move $t2, $v0
li $v0, 5
syscall
la $s0, n
sw $s4, 0($s0)
la $s4, v
lw $t1, 0($s4)
move $t1, $v0
li $v0, 5
syscall
la $s0, o
sw $s2, 0($s0)
la $s2, w
lw $t6, 0($s2)
move $t6, $v0
li $v0, 5
syscall
la $s0, p
sw $s5, 0($s0)
la $s5, x
lw $t7, 0($s5)
move $t7, $v0
li $v0, 5
syscall
la $s0, q
sw $t0, 0($s0)
la $t0, y
lw $s1, 0($t0)
move $s1, $v0
li $v0, 5
syscall
la $s0, r
sw $s3, 0($s0)
la $s3, z
lw $t8, 0($s3)
move $t8, $v0
la $s0, s
sw $t4, 0($s0)
la $t9, a
lw $t4, 0($t9)
move $s6, $t4
la $s0, t
sw $t3, 0($s0)
la $t3, b
lw $t5, 0($t3)
add $s6, $s6, $t5
la $s0, u
sw $t2, 0($s0)
la $t2, c
lw $s4, 0($t2)
add $s6, $s6, $s4
la $s0, v
sw $t1, 0($s0)
la $t1, d
lw $s2, 0($t1)
add $s6, $s6, $s2
la $s0, w
sw $t6, 0($s0)
la $t6, e
lw $s5, 0($t6)
add $s6, $s6, $s5
la $s0, x
sw $t7, 0($s0)
la $t7, f
lw $t0, 0($t7)
add $s6, $s6, $t0
la $s0, y
sw $s1, 0($s0)
la $s1, g
lw $s3, 0($s1)
add $s6, $s6, $s3
la $s0, z
sw $t8, 0($s0)
la $t8, h
lw $t9, 0($t8)
add $s6, $s6, $t9
la $s0, a
sw $t4, 0($s0)
la $s0, aa
sw $s6, 0($s0)
la $t4, i
lw $s6, 0($t4)
la $s0, b
sw $t5, 0($s0)
la $t5, aa
lw $t3, 0($t5)
add $t3, $t3, $s6
la $s0, c
sw $s4, 0($s0)
la $t2, j
lw $s4, 0($t2)
add $t3, $t3, $s4
la $s0, d
sw $s2, 0($s0)
la $t1, k
lw $s2, 0($t1)
add $t3, $t3, $s2
la $s0, e
sw $s5, 0($s0)
la $t6, l
lw $s5, 0($t6)
add $t3, $t3, $s5
la $s0, f
sw $t0, 0($s0)
la $t7, m
lw $t0, 0($t7)
add $t3, $t3, $t0
la $s0, g
sw $s3, 0($s0)
la $s1, n
lw $s3, 0($s1)
add $t3, $t3, $s3
la $s0, h
sw $t9, 0($s0)
la $t8, o
lw $t9, 0($t8)
add $t3, $t3, $t9
la $s0, i
sw $s6, 0($s0)
la $t4, p
lw $s6, 0($t4)
add $t3, $t3, $s6
sw $t3, 0($t5)
la $t3, q
lw $t5, 0($t3)
la $s0, j
sw $s4, 0($s0)
la $s4, aa
lw $t2, 0($s4)
add $t2, $t2, $t5
la $s0, k
sw $s2, 0($s0)
la $t1, r
lw $s2, 0($t1)
add $t2, $t2, $s2
la $s0, l
sw $s5, 0($s0)
la $t6, s
lw $s5, 0($t6)
add $t2, $t2, $s5
la $s0, m
sw $t0, 0($s0)
la $t7, t
lw $t0, 0($t7)
add $t2, $t2, $t0
la $s0, n
sw $s3, 0($s0)
la $s1, u
lw $s3, 0($s1)
add $t2, $t2, $s3
la $s0, o
sw $t9, 0($s0)
la $t8, v
lw $t9, 0($t8)
add $t2, $t2, $t9
la $s0, p
sw $s6, 0($s0)
la $t4, w
lw $s6, 0($t4)
add $t2, $t2, $s6
la $s0, q
sw $t5, 0($s0)
la $t3, x
lw $t5, 0($t3)
add $t2, $t2, $t5
sw $t2, 0($s4)
la $t2, y
lw $s4, 0($t2)
la $s0, r
sw $s2, 0($s0)
la $s2, aa
lw $t1, 0($s2)
add $t1, $t1, $s4
la $s0, s
sw $s5, 0($s0)
la $t6, z
lw $s5, 0($t6)
add $t1, $t1, $s5
move $t7, $t1
la $s0, t
sw $t0, 0($s0)
la $t0, a
lw $s1, 0($t0)
la $s0, u
sw $s3, 0($s0)
move $s3, $s1
la $s0, v
sw $t9, 0($s0)
la $t8, b
lw $t9, 0($t8)
add $s3, $s3, $t9
la $s0, w
sw $s6, 0($s0)
la $t4, c
lw $s6, 0($t4)
add $s3, $s3, $s6
la $s0, x
sw $t5, 0($s0)
la $t3, d
lw $t5, 0($t3)
add $s3, $s3, $t5
la $s0, y
sw $s4, 0($s0)
la $t2, e
lw $s4, 0($t2)
add $s3, $s3, $s4
sw $t1, 0($s2)
la $t1, f
lw $s2, 0($t1)
add $s3, $s3, $s2
la $s0, z
sw $s5, 0($s0)
la $t6, g
lw $s5, 0($t6)
add $s3, $s3, $s5
la $s0, ab
sw $t7, 0($s0)
la $t7, h
lw $t0, 0($t7)
add $s3, $s3, $t0
la $s0, a
sw $s1, 0($s0)
la $s0, ac
sw $s3, 0($s0)
la $s1, i
lw $s3, 0($s1)
la $s0, b
sw $t9, 0($s0)
la $t9, ac
lw $t8, 0($t9)
add $t8, $t8, $s3
la $s0, c
sw $s6, 0($s0)
la $t4, j
lw $s6, 0($t4)
add $t8, $t8, $s6
la $s0, d
sw $t5, 0($s0)
la $t3, k
lw $t5, 0($t3)
add $t8, $t8, $t5
la $s0, e
sw $s4, 0($s0)
la $t2, l
lw $s4, 0($t2)
add $t8, $t8, $s4
la $s0, f
sw $s2, 0($s0)
la $t1, m
lw $s2, 0($t1)
add $t8, $t8, $s2
la $s0, g
sw $s5, 0($s0)
la $t6, n
lw $s5, 0($t6)
add $t8, $t8, $s5
la $s0, h
sw $t0, 0($s0)
la $t7, o
lw $t0, 0($t7)
add $t8, $t8, $t0
la $s0, i
sw $s3, 0($s0)
la $s1, p
lw $s3, 0($s1)
add $t8, $t8, $s3
sw $t8, 0($t9)
la $t8, q
lw $t9, 0($t8)
la $s0, j
sw $s6, 0($s0)
la $s6, ac
lw $t4, 0($s6)
add $t4, $t4, $t9
la $s0, k
sw $t5, 0($s0)
la $t3, r
lw $t5, 0($t3)
add $t4, $t4, $t5
la $s0, l
sw $s4, 0($s0)
la $t2, s
lw $s4, 0($t2)
add $t4, $t4, $s4
la $s0, m
sw $s2, 0($s0)
la $t1, t
lw $s2, 0($t1)
add $t4, $t4, $s2
la $s0, n
sw $s5, 0($s0)
la $t6, u
lw $s5, 0($t6)
add $t4, $t4, $s5
la $s0, o
sw $t0, 0($s0)
la $t7, v
lw $t0, 0($t7)
add $t4, $t4, $t0
la $s0, p
sw $s3, 0($s0)
la $s1, w
lw $s3, 0($s1)
add $t4, $t4, $s3
la $s0, q
sw $t9, 0($s0)
la $t8, x
lw $t9, 0($t8)
add $t4, $t4, $t9
sw $t4, 0($s6)
la $t4, y
lw $s6, 0($t4)
la $s0, r
sw $t5, 0($s0)
la $t5, ac
lw $t3, 0($t5)
add $t3, $t3, $s6
la $s0, s
sw $s4, 0($s0)
la $t2, z
lw $s4, 0($t2)
add $t3, $t3, $s4
la $s0, t
sw $s2, 0($s0)
la $s2, ab
lw $t1, 0($s2)
sub $t1, $t1, $t3
la $s0, u
sw $s5, 0($s0)
la $t6, a
lw $s5, 0($t6)
move $t7, $s5
la $s0, v
sw $t0, 0($s0)
la $t0, b
lw $s1, 0($t0)
add $t7, $t7, $s1
la $s0, w
sw $s3, 0($s0)
la $s3, c
lw $t8, 0($s3)
add $t7, $t7, $t8
la $s0, x
sw $t9, 0($s0)
la $t9, d
lw $t4, 0($t9)
add $t7, $t7, $t4
la $s0, y
sw $s6, 0($s0)
sw $t3, 0($t5)
la $s6, e
lw $t3, 0($s6)
add $t7, $t7, $t3
la $t5, f
lw $t2, 0($t5)
add $t7, $t7, $t2
la $s0, z
sw $s4, 0($s0)
sw $t1, 0($s2)
la $s4, g
lw $t1, 0($s4)
add $t7, $t7, $t1
la $s2, h
lw $t6, 0($s2)
add $t7, $t7, $t6
la $s0, a
sw $s5, 0($s0)
la $s0, ad
sw $t7, 0($s0)
la $s5, i
lw $t7, 0($s5)
la $s0, b
sw $s1, 0($s0)
la $s1, ad
lw $t0, 0($s1)
add $t0, $t0, $t7
la $s0, c
sw $t8, 0($s0)
la $s3, j
lw $t8, 0($s3)
add $t0, $t0, $t8
la $s0, d
sw $t4, 0($s0)
la $t9, k
lw $t4, 0($t9)
add $t0, $t0, $t4
la $s0, e
sw $t3, 0($s0)
la $s6, l
lw $t3, 0($s6)
add $t0, $t0, $t3
la $s0, f
sw $t2, 0($s0)
la $t5, m
lw $t2, 0($t5)
add $t0, $t0, $t2
la $s0, g
sw $t1, 0($s0)
la $s4, n
lw $t1, 0($s4)
add $t0, $t0, $t1
la $s0, h
sw $t6, 0($s0)
la $s2, o
lw $t6, 0($s2)
add $t0, $t0, $t6
la $s0, i
sw $t7, 0($s0)
la $s5, p
lw $t7, 0($s5)
add $t0, $t0, $t7
sw $t0, 0($s1)
la $t0, q
lw $s1, 0($t0)
la $s0, j
sw $t8, 0($s0)
la $t8, ad
lw $s3, 0($t8)
add $s3, $s3, $s1
la $s0, k
sw $t4, 0($s0)
la $t9, r
lw $t4, 0($t9)
add $s3, $s3, $t4
la $s0, l
sw $t3, 0($s0)
la $s6, s
lw $t3, 0($s6)
add $s3, $s3, $t3
la $s0, m
sw $t2, 0($s0)
la $t5, t
lw $t2, 0($t5)
add $s3, $s3, $t2
la $s0, n
sw $t1, 0($s0)
la $s4, u
lw $t1, 0($s4)
add $s3, $s3, $t1
la $s0, o
sw $t6, 0($s0)
la $s2, v
lw $t6, 0($s2)
add $s3, $s3, $t6
la $s0, p
sw $t7, 0($s0)
la $s5, w
lw $t7, 0($s5)
add $s3, $s3, $t7
la $s0, q
sw $s1, 0($s0)
la $t0, x
lw $s1, 0($t0)
add $s3, $s3, $s1
sw $s3, 0($t8)
la $s3, y
lw $t8, 0($s3)
la $s0, r
sw $t4, 0($s0)
la $t4, ad
lw $t9, 0($t4)
add $t9, $t9, $t8
la $s0, s
sw $t3, 0($s0)
la $s6, z
lw $t3, 0($s6)
add $t9, $t9, $t3
la $s0, t
sw $t2, 0($s0)
la $t2, ab
lw $t5, 0($t2)
add $t5, $t5, $t9
la $s0, u
sw $t1, 0($s0)
la $s4, a
lw $t1, 0($s4)
move $s2, $t1
la $s0, v
sw $t6, 0($s0)
la $t6, b
lw $s5, 0($t6)
add $s2, $s2, $s5
la $s0, w
sw $t7, 0($s0)
la $t7, c
lw $t0, 0($t7)
add $s2, $s2, $t0
la $s0, x
sw $s1, 0($s0)
la $s1, d
lw $s3, 0($s1)
add $s2, $s2, $s3
la $s0, y
sw $t8, 0($s0)
sw $t9, 0($t4)
la $t8, e
lw $t9, 0($t8)
add $s2, $s2, $t9
la $t4, f
lw $s6, 0($t4)
add $s2, $s2, $s6
la $s0, z
sw $t3, 0($s0)
sw $t5, 0($t2)
la $t3, g
lw $t5, 0($t3)
add $s2, $s2, $t5
la $t2, h
lw $s4, 0($t2)
add $s2, $s2, $s4
la $s0, a
sw $t1, 0($s0)
la $s0, ae
sw $s2, 0($s0)
la $t1, i
lw $s2, 0($t1)
la $s0, b
sw $s5, 0($s0)
la $s5, ae
lw $t6, 0($s5)
add $t6, $t6, $s2
la $s0, c
sw $t0, 0($s0)
la $t7, j
lw $t0, 0($t7)
add $t6, $t6, $t0
la $s0, d
sw $s3, 0($s0)
la $s1, k
lw $s3, 0($s1)
add $t6, $t6, $s3
la $s0, e
sw $t9, 0($s0)
la $t8, l
lw $t9, 0($t8)
add $t6, $t6, $t9
la $s0, f
sw $s6, 0($s0)
la $t4, m
lw $s6, 0($t4)
add $t6, $t6, $s6
la $s0, g
sw $t5, 0($s0)
la $t3, n
lw $t5, 0($t3)
add $t6, $t6, $t5
la $s0, h
sw $s4, 0($s0)
la $t2, o
lw $s4, 0($t2)
add $t6, $t6, $s4
la $s0, i
sw $s2, 0($s0)
la $t1, p
lw $s2, 0($t1)
add $t6, $t6, $s2
sw $t6, 0($s5)
la $t6, q
lw $s5, 0($t6)
la $s0, j
sw $t0, 0($s0)
la $t0, ae
lw $t7, 0($t0)
add $t7, $t7, $s5
la $s0, k
sw $s3, 0($s0)
la $s1, r
lw $s3, 0($s1)
add $t7, $t7, $s3
la $s0, l
sw $t9, 0($s0)
la $t8, s
lw $t9, 0($t8)
add $t7, $t7, $t9
la $s0, m
sw $s6, 0($s0)
la $t4, t
lw $s6, 0($t4)
add $t7, $t7, $s6
la $s0, n
sw $t5, 0($s0)
la $t3, u
lw $t5, 0($t3)
add $t7, $t7, $t5
la $s0, o
sw $s4, 0($s0)
la $t2, v
lw $s4, 0($t2)
add $t7, $t7, $s4
la $s0, p
sw $s2, 0($s0)
la $t1, w
lw $s2, 0($t1)
add $t7, $t7, $s2
la $s0, q
sw $s5, 0($s0)
la $t6, x
lw $s5, 0($t6)
add $t7, $t7, $s5
sw $t7, 0($t0)
la $t7, y
lw $t0, 0($t7)
la $s0, r
sw $s3, 0($s0)
la $s3, ae
lw $s1, 0($s3)
add $s1, $s1, $t0
la $s0, s
sw $t9, 0($s0)
la $t8, z
lw $t9, 0($t8)
add $s1, $s1, $t9
la $s0, t
sw $s6, 0($s0)
la $s6, ab
lw $t4, 0($s6)
sub $t4, $t4, $s1
la $s0, u
sw $t5, 0($s0)
la $t3, a
lw $t5, 0($t3)
move $t2, $t5
la $s0, v
sw $s4, 0($s0)
la $s4, b
lw $t1, 0($s4)
add $t2, $t2, $t1
la $s0, w
sw $s2, 0($s0)
la $s2, c
lw $t6, 0($s2)
add $t2, $t2, $t6
la $s0, x
sw $s5, 0($s0)
la $s5, d
lw $t7, 0($s5)
add $t2, $t2, $t7
la $s0, y
sw $t0, 0($s0)
sw $s1, 0($s3)
la $t0, e
lw $s1, 0($t0)
add $t2, $t2, $s1
la $s3, f
lw $t8, 0($s3)
add $t2, $t2, $t8
la $s0, z
sw $t9, 0($s0)
sw $t4, 0($s6)
la $t9, g
lw $t4, 0($t9)
add $t2, $t2, $t4
la $s6, h
lw $t3, 0($s6)
add $t2, $t2, $t3
la $s0, a
sw $t5, 0($s0)
la $s0, af
sw $t2, 0($s0)
la $t5, i
lw $t2, 0($t5)
la $s0, b
sw $t1, 0($s0)
la $t1, af
lw $s4, 0($t1)
add $s4, $s4, $t2
la $s0, c
sw $t6, 0($s0)
la $s2, j
lw $t6, 0($s2)
add $s4, $s4, $t6
la $s0, d
sw $t7, 0($s0)
la $s5, k
lw $t7, 0($s5)
add $s4, $s4, $t7
la $s0, e
sw $s1, 0($s0)
la $t0, l
lw $s1, 0($t0)
add $s4, $s4, $s1
la $s0, f
sw $t8, 0($s0)
la $s3, m
lw $t8, 0($s3)
add $s4, $s4, $t8
la $s0, g
sw $t4, 0($s0)
la $t9, n
lw $t4, 0($t9)
add $s4, $s4, $t4
la $s0, h
sw $t3, 0($s0)
la $s6, o
lw $t3, 0($s6)
add $s4, $s4, $t3
la $s0, i
sw $t2, 0($s0)
la $t5, p
lw $t2, 0($t5)
add $s4, $s4, $t2
sw $s4, 0($t1)
la $s4, q
lw $t1, 0($s4)
la $s0, j
sw $t6, 0($s0)
la $t6, af
lw $s2, 0($t6)
add $s2, $s2, $t1
la $s0, k
sw $t7, 0($s0)
la $s5, r
lw $t7, 0($s5)
add $s2, $s2, $t7
la $s0, l
sw $s1, 0($s0)
la $t0, s
lw $s1, 0($t0)
add $s2, $s2, $s1
la $s0, m
sw $t8, 0($s0)
la $s3, t
lw $t8, 0($s3)
add $s2, $s2, $t8
la $s0, n
sw $t4, 0($s0)
la $t9, u
lw $t4, 0($t9)
add $s2, $s2, $t4
la $s0, o
sw $t3, 0($s0)
la $s6, v
lw $t3, 0($s6)
add $s2, $s2, $t3
la $s0, p
sw $t2, 0($s0)
la $t5, w
lw $t2, 0($t5)
add $s2, $s2, $t2
la $s0, q
sw $t1, 0($s0)
la $s4, x
lw $t1, 0($s4)
add $s2, $s2, $t1
sw $s2, 0($t6)
la $s2, y
lw $t6, 0($s2)
la $s0, r
sw $t7, 0($s0)
la $t7, af
lw $s5, 0($t7)
add $s5, $s5, $t6
la $s0, s
sw $s1, 0($s0)
la $t0, z
lw $s1, 0($t0)
add $s5, $s5, $s1
la $s0, t
sw $t8, 0($s0)
la $t8, ab
lw $s3, 0($t8)
add $s3, $s3, $s5
la $s0, u
sw $t4, 0($s0)
la $t9, a
lw $t4, 0($t9)
move $s6, $t4
la $s0, v
sw $t3, 0($s0)
la $t3, b
lw $t5, 0($t3)
add $s6, $s6, $t5
la $s0, w
sw $t2, 0($s0)
la $t2, c
lw $s4, 0($t2)
add $s6, $s6, $s4
la $s0, x
sw $t1, 0($s0)
la $t1, d
lw $s2, 0($t1)
add $s6, $s6, $s2
la $s0, y
sw $t6, 0($s0)
sw $s5, 0($t7)
la $t6, e
lw $s5, 0($t6)
add $s6, $s6, $s5
la $t7, f
lw $t0, 0($t7)
add $s6, $s6, $t0
la $s0, z
sw $s1, 0($s0)
sw $s3, 0($t8)
la $s1, g
lw $s3, 0($s1)
add $s6, $s6, $s3
la $t8, h
lw $t9, 0($t8)
add $s6, $s6, $t9
la $s0, a
sw $t4, 0($s0)
la $s0, ag
sw $s6, 0($s0)
la $t4, i
lw $s6, 0($t4)
la $s0, b
sw $t5, 0($s0)
la $t5, ag
lw $t3, 0($t5)
add $t3, $t3, $s6
la $s0, c
sw $s4, 0($s0)
la $t2, j
lw $s4, 0($t2)
add $t3, $t3, $s4
la $s0, d
sw $s2, 0($s0)
la $t1, k
lw $s2, 0($t1)
add $t3, $t3, $s2
la $s0, e
sw $s5, 0($s0)
la $t6, l
lw $s5, 0($t6)
add $t3, $t3, $s5
la $s0, f
sw $t0, 0($s0)
la $t7, m
lw $t0, 0($t7)
add $t3, $t3, $t0
la $s0, g
sw $s3, 0($s0)
la $s1, n
lw $s3, 0($s1)
add $t3, $t3, $s3
la $s0, h
sw $t9, 0($s0)
la $t8, o
lw $t9, 0($t8)
add $t3, $t3, $t9
la $s0, i
sw $s6, 0($s0)
la $t4, p
lw $s6, 0($t4)
add $t3, $t3, $s6
sw $t3, 0($t5)
la $t3, q
lw $t5, 0($t3)
la $s0, j
sw $s4, 0($s0)
la $s4, ag
lw $t2, 0($s4)
add $t2, $t2, $t5
la $s0, k
sw $s2, 0($s0)
la $t1, r
lw $s2, 0($t1)
add $t2, $t2, $s2
la $s0, l
sw $s5, 0($s0)
la $t6, s
lw $s5, 0($t6)
add $t2, $t2, $s5
la $s0, m
sw $t0, 0($s0)
la $t7, t
lw $t0, 0($t7)
add $t2, $t2, $t0
la $s0, n
sw $s3, 0($s0)
la $s1, u
lw $s3, 0($s1)
add $t2, $t2, $s3
la $s0, o
sw $t9, 0($s0)
la $t8, v
lw $t9, 0($t8)
add $t2, $t2, $t9
la $s0, p
sw $s6, 0($s0)
la $t4, w
lw $s6, 0($t4)
add $t2, $t2, $s6
la $s0, q
sw $t5, 0($s0)
la $t3, x
lw $t5, 0($t3)
add $t2, $t2, $t5
sw $t2, 0($s4)
la $t2, y
lw $s4, 0($t2)
la $s0, r
sw $s2, 0($s0)
la $s2, ag
lw $t1, 0($s2)
add $t1, $t1, $s4
la $s0, s
sw $s5, 0($s0)
la $t6, z
lw $s5, 0($t6)
add $t1, $t1, $s5
la $s0, t
sw $t0, 0($s0)
la $t0, ab
lw $t7, 0($t0)
sub $t7, $t7, $t1
la $s0, u
sw $s3, 0($s0)
la $s1, a
lw $s3, 0($s1)
move $t8, $s3
la $s0, v
sw $t9, 0($s0)
la $t9, b
lw $t4, 0($t9)
add $t8, $t8, $t4
la $s0, w
sw $s6, 0($s0)
la $s6, c
lw $t3, 0($s6)
add $t8, $t8, $t3
la $s0, x
sw $t5, 0($s0)
la $t5, d
lw $t2, 0($t5)
add $t8, $t8, $t2
la $s0, y
sw $s4, 0($s0)
sw $t1, 0($s2)
la $s4, e
lw $t1, 0($s4)
add $t8, $t8, $t1
la $s2, f
lw $t6, 0($s2)
add $t8, $t8, $t6
la $s0, z
sw $s5, 0($s0)
sw $t7, 0($t0)
la $s5, g
lw $t7, 0($s5)
add $t8, $t8, $t7
la $t0, h
lw $s1, 0($t0)
add $t8, $t8, $s1
la $s0, a
sw $s3, 0($s0)
la $s0, ah
sw $t8, 0($s0)
la $s3, i
lw $t8, 0($s3)
la $s0, b
sw $t4, 0($s0)
la $t4, ah
lw $t9, 0($t4)
add $t9, $t9, $t8
la $s0, c
sw $t3, 0($s0)
la $s6, j
lw $t3, 0($s6)
add $t9, $t9, $t3
la $s0, d
sw $t2, 0($s0)
la $t5, k
lw $t2, 0($t5)
add $t9, $t9, $t2
la $s0, e
sw $t1, 0($s0)
la $s4, l
lw $t1, 0($s4)
add $t9, $t9, $t1
la $s0, f
sw $t6, 0($s0)
la $s2, m
lw $t6, 0($s2)
add $t9, $t9, $t6
la $s0, g
sw $t7, 0($s0)
la $s5, n
lw $t7, 0($s5)
add $t9, $t9, $t7
la $s0, h
sw $s1, 0($s0)
la $t0, o
lw $s1, 0($t0)
add $t9, $t9, $s1
la $s0, i
sw $t8, 0($s0)
la $s3, p
lw $t8, 0($s3)
add $t9, $t9, $t8
sw $t9, 0($t4)
la $t9, q
lw $t4, 0($t9)
la $s0, j
sw $t3, 0($s0)
la $t3, ah
lw $s6, 0($t3)
add $s6, $s6, $t4
la $s0, k
sw $t2, 0($s0)
la $t5, r
lw $t2, 0($t5)
add $s6, $s6, $t2
la $s0, l
sw $t1, 0($s0)
la $s4, s
lw $t1, 0($s4)
add $s6, $s6, $t1
la $s0, m
sw $t6, 0($s0)
la $s2, t
lw $t6, 0($s2)
add $s6, $s6, $t6
la $s0, n
sw $t7, 0($s0)
la $s5, u
lw $t7, 0($s5)
add $s6, $s6, $t7
la $s0, o
sw $s1, 0($s0)
la $t0, v
lw $s1, 0($t0)
add $s6, $s6, $s1
la $s0, p
sw $t8, 0($s0)
la $s3, w
lw $t8, 0($s3)
add $s6, $s6, $t8
la $s0, q
sw $t4, 0($s0)
la $t9, x
lw $t4, 0($t9)
add $s6, $s6, $t4
sw $s6, 0($t3)
la $s6, y
lw $t3, 0($s6)
la $s0, r
sw $t2, 0($s0)
la $t2, ah
lw $t5, 0($t2)
add $t5, $t5, $t3
la $s0, s
sw $t1, 0($s0)
la $s4, z
lw $t1, 0($s4)
add $t5, $t5, $t1
la $s0, t
sw $t6, 0($s0)
la $t6, ab
lw $s2, 0($t6)
add $s2, $s2, $t5
li $v0, 1
move $a0, $s2
syscall
