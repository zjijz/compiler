.data
o:	.word	0	# o in original
l:	.word	0	# l in original
y:	.word	0	# y in original
ab:	.word	0	# temp_a in original
x:	.word	0	# x in original
q:	.word	0	# q in original
k:	.word	0	# k in original
h:	.word	0	# h in original
t:	.word	0	# t in original
a:	.word	0	# a in original
ae:	.word	0	# temp_e in original
r:	.word	0	# r in original
v:	.word	0	# v in original
d:	.word	0	# d in original
m:	.word	0	# m in original
g:	.word	0	# g in original
p:	.word	0	# p in original
ad:	.word	0	# temp_d in original
w:	.word	0	# w in original
u:	.word	0	# u in original
c:	.word	0	# c in original
n:	.word	0	# n in original
ac:	.word	0	# temp_c in original
z:	.word	0	# z in original
j:	.word	0	# j in original
i:	.word	0	# i in original
aa:	.word	0	# temp_b in original
e:	.word	0	# e in original
s:	.word	0	# s in original
b:	.word	0	# b in original
f:	.word	0	# f in original
.text
li $v0, 5
syscall
la $t1, a
lw $s5, 0($t1)
move $s5, $v0
li $v0, 5
syscall
la $s4, b
lw $t5, 0($s4)
move $t5, $v0
li $v0, 5
syscall
la $t9, c
lw $s2, 0($t9)
move $s2, $v0
li $v0, 5
syscall
la $t3, d
lw $t2, 0($t3)
move $t2, $v0
li $v0, 5
syscall
la $t4, e
lw $t6, 0($t4)
move $t6, $v0
li $v0, 5
syscall
la $s6, f
lw $s3, 0($s6)
move $s3, $v0
li $v0, 5
syscall
la $t8, g
lw $t0, 0($t8)
move $t0, $v0
li $v0, 5
syscall
la $s1, h
lw $t7, 0($s1)
move $t7, $v0
li $v0, 5
syscall
la $s0, a
sw $s5, 0($s0)
la $s5, i
lw $t1, 0($s5)
move $t1, $v0
li $v0, 5
syscall
la $s0, b
sw $t5, 0($s0)
la $t5, j
lw $s4, 0($t5)
move $s4, $v0
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
sw $t2, 0($s0)
la $t2, l
lw $t3, 0($t2)
move $t3, $v0
li $v0, 5
syscall
la $s0, e
sw $t6, 0($s0)
la $t6, m
lw $t4, 0($t6)
move $t4, $v0
li $v0, 5
syscall
la $s0, f
sw $s3, 0($s0)
la $s3, n
lw $s6, 0($s3)
move $s6, $v0
li $v0, 5
syscall
la $s0, g
sw $t0, 0($s0)
la $t0, o
lw $t8, 0($t0)
move $t8, $v0
li $v0, 5
syscall
la $s0, h
sw $t7, 0($s0)
la $t7, p
lw $s1, 0($t7)
move $s1, $v0
li $v0, 5
syscall
la $s0, i
sw $t1, 0($s0)
la $t1, q
lw $s5, 0($t1)
move $s5, $v0
li $v0, 5
syscall
la $s0, j
sw $s4, 0($s0)
la $s4, r
lw $t5, 0($s4)
move $t5, $v0
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
sw $t3, 0($s0)
la $t3, t
lw $t2, 0($t3)
move $t2, $v0
li $v0, 5
syscall
la $s0, m
sw $t4, 0($s0)
la $t4, u
lw $t6, 0($t4)
move $t6, $v0
li $v0, 5
syscall
la $s0, n
sw $s6, 0($s0)
la $s6, v
lw $s3, 0($s6)
move $s3, $v0
li $v0, 5
syscall
la $s0, o
sw $t8, 0($s0)
la $t8, w
lw $t0, 0($t8)
move $t0, $v0
li $v0, 5
syscall
la $s0, p
sw $s1, 0($s0)
la $s1, x
lw $t7, 0($s1)
move $t7, $v0
li $v0, 5
syscall
la $s0, q
sw $s5, 0($s0)
la $s5, y
lw $t1, 0($s5)
move $t1, $v0
li $v0, 5
syscall
la $s0, r
sw $t5, 0($s0)
la $t5, z
lw $s4, 0($t5)
move $s4, $v0
la $s0, s
sw $s2, 0($s0)
la $t9, a
lw $s2, 0($t9)
move $t3, $s2
la $s0, t
sw $t2, 0($s0)
la $t2, b
lw $t4, 0($t2)
add $t3, $t3, $t4
la $s0, u
sw $t6, 0($s0)
la $t6, c
lw $s6, 0($t6)
add $t3, $t3, $s6
la $s0, v
sw $s3, 0($s0)
la $s3, d
lw $t8, 0($s3)
add $t3, $t3, $t8
la $s0, w
sw $t0, 0($s0)
la $t0, e
lw $s1, 0($t0)
add $t3, $t3, $s1
la $s0, x
sw $t7, 0($s0)
la $t7, f
lw $s5, 0($t7)
add $t3, $t3, $s5
la $s0, y
sw $t1, 0($s0)
la $t1, g
lw $t5, 0($t1)
add $t3, $t3, $t5
la $s0, z
sw $s4, 0($s0)
la $s4, h
lw $t9, 0($s4)
add $t3, $t3, $t9
la $s0, a
sw $s2, 0($s0)
la $s0, aa
sw $t3, 0($s0)
la $s2, i
lw $t3, 0($s2)
la $s0, b
sw $t4, 0($s0)
la $t4, aa
lw $t2, 0($t4)
add $t2, $t2, $t3
la $s0, c
sw $s6, 0($s0)
la $t6, j
lw $s6, 0($t6)
add $t2, $t2, $s6
la $s0, d
sw $t8, 0($s0)
la $s3, k
lw $t8, 0($s3)
add $t2, $t2, $t8
la $s0, e
sw $s1, 0($s0)
la $t0, l
lw $s1, 0($t0)
add $t2, $t2, $s1
la $s0, f
sw $s5, 0($s0)
la $t7, m
lw $s5, 0($t7)
add $t2, $t2, $s5
la $s0, g
sw $t5, 0($s0)
la $t1, n
lw $t5, 0($t1)
add $t2, $t2, $t5
la $s0, h
sw $t9, 0($s0)
la $s4, o
lw $t9, 0($s4)
add $t2, $t2, $t9
la $s0, i
sw $t3, 0($s0)
la $s2, p
lw $t3, 0($s2)
add $t2, $t2, $t3
sw $t2, 0($t4)
la $t2, q
lw $t4, 0($t2)
la $s0, j
sw $s6, 0($s0)
la $s6, aa
lw $t6, 0($s6)
add $t6, $t6, $t4
la $s0, k
sw $t8, 0($s0)
la $s3, r
lw $t8, 0($s3)
add $t6, $t6, $t8
la $s0, l
sw $s1, 0($s0)
la $t0, s
lw $s1, 0($t0)
add $t6, $t6, $s1
la $s0, m
sw $s5, 0($s0)
la $t7, t
lw $s5, 0($t7)
add $t6, $t6, $s5
la $s0, n
sw $t5, 0($s0)
la $t1, u
lw $t5, 0($t1)
add $t6, $t6, $t5
la $s0, o
sw $t9, 0($s0)
la $s4, v
lw $t9, 0($s4)
add $t6, $t6, $t9
la $s0, p
sw $t3, 0($s0)
la $s2, w
lw $t3, 0($s2)
add $t6, $t6, $t3
la $s0, q
sw $t4, 0($s0)
la $t2, x
lw $t4, 0($t2)
add $t6, $t6, $t4
sw $t6, 0($s6)
la $t6, y
lw $s6, 0($t6)
la $s0, r
sw $t8, 0($s0)
la $t8, aa
lw $s3, 0($t8)
add $s3, $s3, $s6
la $s0, s
sw $s1, 0($s0)
la $t0, z
lw $s1, 0($t0)
add $s3, $s3, $s1
move $t7, $s3
la $s0, t
sw $s5, 0($s0)
la $s5, a
lw $t1, 0($s5)
la $s0, u
sw $t5, 0($s0)
move $t5, $t1
la $s0, v
sw $t9, 0($s0)
la $s4, b
lw $t9, 0($s4)
add $t5, $t5, $t9
la $s0, w
sw $t3, 0($s0)
la $s2, c
lw $t3, 0($s2)
add $t5, $t5, $t3
la $s0, x
sw $t4, 0($s0)
la $t2, d
lw $t4, 0($t2)
add $t5, $t5, $t4
la $s0, y
sw $s6, 0($s0)
la $t6, e
lw $s6, 0($t6)
add $t5, $t5, $s6
sw $s3, 0($t8)
la $s3, f
lw $t8, 0($s3)
add $t5, $t5, $t8
la $s0, z
sw $s1, 0($s0)
la $t0, g
lw $s1, 0($t0)
add $t5, $t5, $s1
la $s0, ab
sw $t7, 0($s0)
la $t7, h
lw $s5, 0($t7)
add $t5, $t5, $s5
la $s0, a
sw $t1, 0($s0)
la $s0, ac
sw $t5, 0($s0)
la $t1, i
lw $t5, 0($t1)
la $s0, b
sw $t9, 0($s0)
la $t9, ac
lw $s4, 0($t9)
add $s4, $s4, $t5
la $s0, c
sw $t3, 0($s0)
la $s2, j
lw $t3, 0($s2)
add $s4, $s4, $t3
la $s0, d
sw $t4, 0($s0)
la $t2, k
lw $t4, 0($t2)
add $s4, $s4, $t4
la $s0, e
sw $s6, 0($s0)
la $t6, l
lw $s6, 0($t6)
add $s4, $s4, $s6
la $s0, f
sw $t8, 0($s0)
la $s3, m
lw $t8, 0($s3)
add $s4, $s4, $t8
la $s0, g
sw $s1, 0($s0)
la $t0, n
lw $s1, 0($t0)
add $s4, $s4, $s1
la $s0, h
sw $s5, 0($s0)
la $t7, o
lw $s5, 0($t7)
add $s4, $s4, $s5
la $s0, i
sw $t5, 0($s0)
la $t1, p
lw $t5, 0($t1)
add $s4, $s4, $t5
sw $s4, 0($t9)
la $s4, q
lw $t9, 0($s4)
la $s0, j
sw $t3, 0($s0)
la $t3, ac
lw $s2, 0($t3)
add $s2, $s2, $t9
la $s0, k
sw $t4, 0($s0)
la $t2, r
lw $t4, 0($t2)
add $s2, $s2, $t4
la $s0, l
sw $s6, 0($s0)
la $t6, s
lw $s6, 0($t6)
add $s2, $s2, $s6
la $s0, m
sw $t8, 0($s0)
la $s3, t
lw $t8, 0($s3)
add $s2, $s2, $t8
la $s0, n
sw $s1, 0($s0)
la $t0, u
lw $s1, 0($t0)
add $s2, $s2, $s1
la $s0, o
sw $s5, 0($s0)
la $t7, v
lw $s5, 0($t7)
add $s2, $s2, $s5
la $s0, p
sw $t5, 0($s0)
la $t1, w
lw $t5, 0($t1)
add $s2, $s2, $t5
la $s0, q
sw $t9, 0($s0)
la $s4, x
lw $t9, 0($s4)
add $s2, $s2, $t9
sw $s2, 0($t3)
la $s2, y
lw $t3, 0($s2)
la $s0, r
sw $t4, 0($s0)
la $t4, ac
lw $t2, 0($t4)
add $t2, $t2, $t3
la $s0, s
sw $s6, 0($s0)
la $t6, z
lw $s6, 0($t6)
add $t2, $t2, $s6
la $s0, t
sw $t8, 0($s0)
la $t8, ab
lw $s3, 0($t8)
add $s3, $s3, $t2
la $s0, u
sw $s1, 0($s0)
la $t0, a
lw $s1, 0($t0)
move $t7, $s1
la $s0, v
sw $s5, 0($s0)
la $s5, b
lw $t1, 0($s5)
add $t7, $t7, $t1
la $s0, w
sw $t5, 0($s0)
la $t5, c
lw $s4, 0($t5)
add $t7, $t7, $s4
la $s0, x
sw $t9, 0($s0)
la $t9, d
lw $s2, 0($t9)
add $t7, $t7, $s2
la $s0, y
sw $t3, 0($s0)
sw $t2, 0($t4)
la $t3, e
lw $t2, 0($t3)
add $t7, $t7, $t2
la $t4, f
lw $t6, 0($t4)
add $t7, $t7, $t6
la $s0, z
sw $s6, 0($s0)
sw $s3, 0($t8)
la $s6, g
lw $s3, 0($s6)
add $t7, $t7, $s3
la $t8, h
lw $t0, 0($t8)
add $t7, $t7, $t0
la $s0, a
sw $s1, 0($s0)
la $s0, ad
sw $t7, 0($s0)
la $s1, i
lw $t7, 0($s1)
la $s0, b
sw $t1, 0($s0)
la $t1, ad
lw $s5, 0($t1)
add $s5, $s5, $t7
la $s0, c
sw $s4, 0($s0)
la $t5, j
lw $s4, 0($t5)
add $s5, $s5, $s4
la $s0, d
sw $s2, 0($s0)
la $t9, k
lw $s2, 0($t9)
add $s5, $s5, $s2
la $s0, e
sw $t2, 0($s0)
la $t3, l
lw $t2, 0($t3)
add $s5, $s5, $t2
la $s0, f
sw $t6, 0($s0)
la $t4, m
lw $t6, 0($t4)
add $s5, $s5, $t6
la $s0, g
sw $s3, 0($s0)
la $s6, n
lw $s3, 0($s6)
add $s5, $s5, $s3
la $s0, h
sw $t0, 0($s0)
la $t8, o
lw $t0, 0($t8)
add $s5, $s5, $t0
la $s0, i
sw $t7, 0($s0)
la $s1, p
lw $t7, 0($s1)
add $s5, $s5, $t7
sw $s5, 0($t1)
la $s5, q
lw $t1, 0($s5)
la $s0, j
sw $s4, 0($s0)
la $s4, ad
lw $t5, 0($s4)
add $t5, $t5, $t1
la $s0, k
sw $s2, 0($s0)
la $t9, r
lw $s2, 0($t9)
add $t5, $t5, $s2
la $s0, l
sw $t2, 0($s0)
la $t3, s
lw $t2, 0($t3)
add $t5, $t5, $t2
la $s0, m
sw $t6, 0($s0)
la $t4, t
lw $t6, 0($t4)
add $t5, $t5, $t6
la $s0, n
sw $s3, 0($s0)
la $s6, u
lw $s3, 0($s6)
add $t5, $t5, $s3
la $s0, o
sw $t0, 0($s0)
la $t8, v
lw $t0, 0($t8)
add $t5, $t5, $t0
la $s0, p
sw $t7, 0($s0)
la $s1, w
lw $t7, 0($s1)
add $t5, $t5, $t7
la $s0, q
sw $t1, 0($s0)
la $s5, x
lw $t1, 0($s5)
add $t5, $t5, $t1
sw $t5, 0($s4)
la $t5, y
lw $s4, 0($t5)
la $s0, r
sw $s2, 0($s0)
la $s2, ad
lw $t9, 0($s2)
add $t9, $t9, $s4
la $s0, s
sw $t2, 0($s0)
la $t3, z
lw $t2, 0($t3)
add $t9, $t9, $t2
la $s0, t
sw $t6, 0($s0)
la $t6, ab
lw $t4, 0($t6)
add $t4, $t4, $t9
la $s0, u
sw $s3, 0($s0)
la $s6, a
lw $s3, 0($s6)
move $t8, $s3
la $s0, v
sw $t0, 0($s0)
la $t0, b
lw $s1, 0($t0)
add $t8, $t8, $s1
la $s0, w
sw $t7, 0($s0)
la $t7, c
lw $s5, 0($t7)
add $t8, $t8, $s5
la $s0, x
sw $t1, 0($s0)
la $t1, d
lw $t5, 0($t1)
add $t8, $t8, $t5
la $s0, y
sw $s4, 0($s0)
sw $t9, 0($s2)
la $s4, e
lw $t9, 0($s4)
add $t8, $t8, $t9
la $s2, f
lw $t3, 0($s2)
add $t8, $t8, $t3
la $s0, z
sw $t2, 0($s0)
sw $t4, 0($t6)
la $t2, g
lw $t4, 0($t2)
add $t8, $t8, $t4
la $t6, h
lw $s6, 0($t6)
add $t8, $t8, $s6
la $s0, a
sw $s3, 0($s0)
la $s0, ae
sw $t8, 0($s0)
la $s3, i
lw $t8, 0($s3)
la $s0, b
sw $s1, 0($s0)
la $s1, ae
lw $t0, 0($s1)
add $t0, $t0, $t8
la $s0, c
sw $s5, 0($s0)
la $t7, j
lw $s5, 0($t7)
add $t0, $t0, $s5
la $s0, d
sw $t5, 0($s0)
la $t1, k
lw $t5, 0($t1)
add $t0, $t0, $t5
la $s0, e
sw $t9, 0($s0)
la $s4, l
lw $t9, 0($s4)
add $t0, $t0, $t9
la $s0, f
sw $t3, 0($s0)
la $s2, m
lw $t3, 0($s2)
add $t0, $t0, $t3
la $s0, g
sw $t4, 0($s0)
la $t2, n
lw $t4, 0($t2)
add $t0, $t0, $t4
la $s0, h
sw $s6, 0($s0)
la $t6, o
lw $s6, 0($t6)
add $t0, $t0, $s6
la $s0, i
sw $t8, 0($s0)
la $s3, p
lw $t8, 0($s3)
add $t0, $t0, $t8
sw $t0, 0($s1)
la $t0, q
lw $s1, 0($t0)
la $s0, j
sw $s5, 0($s0)
la $s5, ae
lw $t7, 0($s5)
add $t7, $t7, $s1
la $s0, k
sw $t5, 0($s0)
la $t1, r
lw $t5, 0($t1)
add $t7, $t7, $t5
la $s0, l
sw $t9, 0($s0)
la $s4, s
lw $t9, 0($s4)
add $t7, $t7, $t9
la $s0, m
sw $t3, 0($s0)
la $s2, t
lw $t3, 0($s2)
add $t7, $t7, $t3
la $s0, n
sw $t4, 0($s0)
la $t2, u
lw $t4, 0($t2)
add $t7, $t7, $t4
la $s0, o
sw $s6, 0($s0)
la $t6, v
lw $s6, 0($t6)
add $t7, $t7, $s6
la $s0, p
sw $t8, 0($s0)
la $s3, w
lw $t8, 0($s3)
add $t7, $t7, $t8
la $s0, q
sw $s1, 0($s0)
la $t0, x
lw $s1, 0($t0)
add $t7, $t7, $s1
sw $t7, 0($s5)
la $t7, y
lw $s5, 0($t7)
la $s0, r
sw $t5, 0($s0)
la $t5, ae
lw $t1, 0($t5)
add $t1, $t1, $s5
la $s0, s
sw $t9, 0($s0)
la $s4, z
lw $t9, 0($s4)
add $t1, $t1, $t9
la $s0, t
sw $t3, 0($s0)
la $t3, ab
lw $s2, 0($t3)
add $s2, $s2, $t1
li $v0, 1
move $a0, $s2
syscall
