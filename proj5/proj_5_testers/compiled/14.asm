.data
ae:	.word	0	# temp_e in original
aa:	.word	0	# temp_b in original
b:	.word	0	# b in original
g:	.word	0	# g in original
e:	.word	0	# e in original
d:	.word	0	# d in original
q:	.word	0	# q in original
ad:	.word	0	# temp_d in original
k:	.word	0	# k in original
x:	.word	0	# x in original
p:	.word	0	# p in original
m:	.word	0	# m in original
v:	.word	0	# v in original
f:	.word	0	# f in original
w:	.word	0	# w in original
t:	.word	0	# t in original
j:	.word	0	# j in original
y:	.word	0	# y in original
ac:	.word	0	# temp_c in original
h:	.word	0	# h in original
a:	.word	0	# a in original
ab:	.word	0	# temp_a in original
i:	.word	0	# i in original
c:	.word	0	# c in original
o:	.word	0	# o in original
r:	.word	0	# r in original
n:	.word	0	# n in original
s:	.word	0	# s in original
u:	.word	0	# u in original
z:	.word	0	# z in original
l:	.word	0	# l in original
.text
li $v0, 5
syscall
la $t1, a
lw $s2, 0($t1)
move $s2, $v0
li $v0, 5
syscall
la $t2, b
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $t9, c
lw $s3, 0($t9)
move $s3, $v0
li $v0, 5
syscall
la $t0, d
lw $t7, 0($t0)
move $t7, $v0
li $v0, 5
syscall
la $t8, e
lw $s5, 0($t8)
move $s5, $v0
li $v0, 5
syscall
la $t3, f
lw $s4, 0($t3)
move $s4, $v0
li $v0, 5
syscall
la $s1, g
lw $t6, 0($s1)
move $t6, $v0
li $v0, 5
syscall
la $t5, h
lw $s6, 0($t5)
move $s6, $v0
li $v0, 5
syscall
la $s0, a
sw $s2, 0($s0)
la $s2, i
lw $t1, 0($s2)
move $t1, $v0
li $v0, 5
syscall
la $s0, b
sw $t4, 0($s0)
la $t4, j
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
la $s0, c
sw $s3, 0($s0)
la $s3, k
lw $t9, 0($s3)
move $t9, $v0
li $v0, 5
syscall
la $s0, d
sw $t7, 0($s0)
la $t7, l
lw $t0, 0($t7)
move $t0, $v0
li $v0, 5
syscall
la $s0, e
sw $s5, 0($s0)
la $s5, m
lw $t8, 0($s5)
move $t8, $v0
li $v0, 5
syscall
la $s0, f
sw $s4, 0($s0)
la $s4, n
lw $t3, 0($s4)
move $t3, $v0
li $v0, 5
syscall
la $s0, g
sw $t6, 0($s0)
la $t6, o
lw $s1, 0($t6)
move $s1, $v0
li $v0, 5
syscall
la $s0, h
sw $s6, 0($s0)
la $s6, p
lw $t5, 0($s6)
move $t5, $v0
li $v0, 5
syscall
la $s0, i
sw $t1, 0($s0)
la $t1, q
lw $s2, 0($t1)
move $s2, $v0
li $v0, 5
syscall
la $s0, j
sw $t2, 0($s0)
la $t2, r
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s0, k
sw $t9, 0($s0)
la $t9, s
lw $s3, 0($t9)
move $s3, $v0
li $v0, 5
syscall
la $s0, l
sw $t0, 0($s0)
la $t0, t
lw $t7, 0($t0)
move $t7, $v0
li $v0, 5
syscall
la $s0, m
sw $t8, 0($s0)
la $t8, u
lw $s5, 0($t8)
move $s5, $v0
li $v0, 5
syscall
la $s0, n
sw $t3, 0($s0)
la $t3, v
lw $s4, 0($t3)
move $s4, $v0
li $v0, 5
syscall
la $s0, o
sw $s1, 0($s0)
la $s1, w
lw $t6, 0($s1)
move $t6, $v0
li $v0, 5
syscall
la $s0, p
sw $t5, 0($s0)
la $t5, x
lw $s6, 0($t5)
move $s6, $v0
li $v0, 5
syscall
la $s0, q
sw $s2, 0($s0)
la $s2, y
lw $t1, 0($s2)
move $t1, $v0
li $v0, 5
syscall
la $s0, r
sw $t4, 0($s0)
la $t4, z
lw $t2, 0($t4)
move $t2, $v0
la $s0, s
sw $s3, 0($s0)
la $t9, a
lw $s3, 0($t9)
move $t0, $s3
la $s0, t
sw $t7, 0($s0)
la $t7, b
lw $t8, 0($t7)
add $t0, $t0, $t8
la $s0, u
sw $s5, 0($s0)
la $s5, c
lw $t3, 0($s5)
add $t0, $t0, $t3
la $s0, v
sw $s4, 0($s0)
la $s4, d
lw $s1, 0($s4)
add $t0, $t0, $s1
la $s0, w
sw $t6, 0($s0)
la $t6, e
lw $t5, 0($t6)
add $t0, $t0, $t5
la $s0, x
sw $s6, 0($s0)
la $s6, f
lw $s2, 0($s6)
add $t0, $t0, $s2
la $s0, y
sw $t1, 0($s0)
la $t1, g
lw $t4, 0($t1)
add $t0, $t0, $t4
la $s0, z
sw $t2, 0($s0)
la $t2, h
lw $t9, 0($t2)
add $t0, $t0, $t9
la $s0, a
sw $s3, 0($s0)
la $s0, aa
sw $t0, 0($s0)
la $s3, i
lw $t0, 0($s3)
la $s0, b
sw $t8, 0($s0)
la $t8, aa
lw $t7, 0($t8)
add $t7, $t7, $t0
la $s0, c
sw $t3, 0($s0)
la $s5, j
lw $t3, 0($s5)
add $t7, $t7, $t3
la $s0, d
sw $s1, 0($s0)
la $s4, k
lw $s1, 0($s4)
add $t7, $t7, $s1
la $s0, e
sw $t5, 0($s0)
la $t6, l
lw $t5, 0($t6)
add $t7, $t7, $t5
la $s0, f
sw $s2, 0($s0)
la $s6, m
lw $s2, 0($s6)
add $t7, $t7, $s2
la $s0, g
sw $t4, 0($s0)
la $t1, n
lw $t4, 0($t1)
add $t7, $t7, $t4
la $s0, h
sw $t9, 0($s0)
la $t2, o
lw $t9, 0($t2)
add $t7, $t7, $t9
la $s0, i
sw $t0, 0($s0)
la $s3, p
lw $t0, 0($s3)
add $t7, $t7, $t0
sw $t7, 0($t8)
la $t7, q
lw $t8, 0($t7)
la $s0, j
sw $t3, 0($s0)
la $t3, aa
lw $s5, 0($t3)
add $s5, $s5, $t8
la $s0, k
sw $s1, 0($s0)
la $s4, r
lw $s1, 0($s4)
add $s5, $s5, $s1
la $s0, l
sw $t5, 0($s0)
la $t6, s
lw $t5, 0($t6)
add $s5, $s5, $t5
la $s0, m
sw $s2, 0($s0)
la $s6, t
lw $s2, 0($s6)
add $s5, $s5, $s2
la $s0, n
sw $t4, 0($s0)
la $t1, u
lw $t4, 0($t1)
add $s5, $s5, $t4
la $s0, o
sw $t9, 0($s0)
la $t2, v
lw $t9, 0($t2)
add $s5, $s5, $t9
la $s0, p
sw $t0, 0($s0)
la $s3, w
lw $t0, 0($s3)
add $s5, $s5, $t0
la $s0, q
sw $t8, 0($s0)
la $t7, x
lw $t8, 0($t7)
add $s5, $s5, $t8
sw $s5, 0($t3)
la $s5, y
lw $t3, 0($s5)
la $s0, r
sw $s1, 0($s0)
la $s1, aa
lw $s4, 0($s1)
add $s4, $s4, $t3
la $s0, s
sw $t5, 0($s0)
la $t6, z
lw $t5, 0($t6)
add $s4, $s4, $t5
move $s6, $s4
la $s0, t
sw $s2, 0($s0)
la $s2, a
lw $t1, 0($s2)
la $s0, u
sw $t4, 0($s0)
move $t4, $t1
la $s0, v
sw $t9, 0($s0)
la $t2, b
lw $t9, 0($t2)
add $t4, $t4, $t9
la $s0, w
sw $t0, 0($s0)
la $s3, c
lw $t0, 0($s3)
add $t4, $t4, $t0
la $s0, x
sw $t8, 0($s0)
la $t7, d
lw $t8, 0($t7)
add $t4, $t4, $t8
la $s0, y
sw $t3, 0($s0)
la $s5, e
lw $t3, 0($s5)
add $t4, $t4, $t3
sw $s4, 0($s1)
la $s4, f
lw $s1, 0($s4)
add $t4, $t4, $s1
la $s0, z
sw $t5, 0($s0)
la $t6, g
lw $t5, 0($t6)
add $t4, $t4, $t5
la $s0, ab
sw $s6, 0($s0)
la $s6, h
lw $s2, 0($s6)
add $t4, $t4, $s2
la $s0, a
sw $t1, 0($s0)
la $s0, ac
sw $t4, 0($s0)
la $t1, i
lw $t4, 0($t1)
la $s0, b
sw $t9, 0($s0)
la $t9, ac
lw $t2, 0($t9)
add $t2, $t2, $t4
la $s0, c
sw $t0, 0($s0)
la $s3, j
lw $t0, 0($s3)
add $t2, $t2, $t0
la $s0, d
sw $t8, 0($s0)
la $t7, k
lw $t8, 0($t7)
add $t2, $t2, $t8
la $s0, e
sw $t3, 0($s0)
la $s5, l
lw $t3, 0($s5)
add $t2, $t2, $t3
la $s0, f
sw $s1, 0($s0)
la $s4, m
lw $s1, 0($s4)
add $t2, $t2, $s1
la $s0, g
sw $t5, 0($s0)
la $t6, n
lw $t5, 0($t6)
add $t2, $t2, $t5
la $s0, h
sw $s2, 0($s0)
la $s6, o
lw $s2, 0($s6)
add $t2, $t2, $s2
la $s0, i
sw $t4, 0($s0)
la $t1, p
lw $t4, 0($t1)
add $t2, $t2, $t4
sw $t2, 0($t9)
la $t2, q
lw $t9, 0($t2)
la $s0, j
sw $t0, 0($s0)
la $t0, ac
lw $s3, 0($t0)
add $s3, $s3, $t9
la $s0, k
sw $t8, 0($s0)
la $t7, r
lw $t8, 0($t7)
add $s3, $s3, $t8
la $s0, l
sw $t3, 0($s0)
la $s5, s
lw $t3, 0($s5)
add $s3, $s3, $t3
la $s0, m
sw $s1, 0($s0)
la $s4, t
lw $s1, 0($s4)
add $s3, $s3, $s1
la $s0, n
sw $t5, 0($s0)
la $t6, u
lw $t5, 0($t6)
add $s3, $s3, $t5
la $s0, o
sw $s2, 0($s0)
la $s6, v
lw $s2, 0($s6)
add $s3, $s3, $s2
la $s0, p
sw $t4, 0($s0)
la $t1, w
lw $t4, 0($t1)
add $s3, $s3, $t4
la $s0, q
sw $t9, 0($s0)
la $t2, x
lw $t9, 0($t2)
add $s3, $s3, $t9
sw $s3, 0($t0)
la $s3, y
lw $t0, 0($s3)
la $s0, r
sw $t8, 0($s0)
la $t8, ac
lw $t7, 0($t8)
add $t7, $t7, $t0
la $s0, s
sw $t3, 0($s0)
la $s5, z
lw $t3, 0($s5)
add $t7, $t7, $t3
la $s0, t
sw $s1, 0($s0)
la $s1, ab
lw $s4, 0($s1)
add $s4, $s4, $t7
la $s0, u
sw $t5, 0($s0)
la $t6, a
lw $t5, 0($t6)
move $s6, $t5
la $s0, v
sw $s2, 0($s0)
la $s2, b
lw $t1, 0($s2)
add $s6, $s6, $t1
la $s0, w
sw $t4, 0($s0)
la $t4, c
lw $t2, 0($t4)
add $s6, $s6, $t2
la $s0, x
sw $t9, 0($s0)
la $t9, d
lw $s3, 0($t9)
add $s6, $s6, $s3
la $s0, y
sw $t0, 0($s0)
sw $t7, 0($t8)
la $t0, e
lw $t7, 0($t0)
add $s6, $s6, $t7
la $t8, f
lw $s5, 0($t8)
add $s6, $s6, $s5
la $s0, z
sw $t3, 0($s0)
sw $s4, 0($s1)
la $t3, g
lw $s4, 0($t3)
add $s6, $s6, $s4
la $s1, h
lw $t6, 0($s1)
add $s6, $s6, $t6
la $s0, a
sw $t5, 0($s0)
la $s0, ad
sw $s6, 0($s0)
la $t5, i
lw $s6, 0($t5)
la $s0, b
sw $t1, 0($s0)
la $t1, ad
lw $s2, 0($t1)
add $s2, $s2, $s6
la $s0, c
sw $t2, 0($s0)
la $t4, j
lw $t2, 0($t4)
add $s2, $s2, $t2
la $s0, d
sw $s3, 0($s0)
la $t9, k
lw $s3, 0($t9)
add $s2, $s2, $s3
la $s0, e
sw $t7, 0($s0)
la $t0, l
lw $t7, 0($t0)
add $s2, $s2, $t7
la $s0, f
sw $s5, 0($s0)
la $t8, m
lw $s5, 0($t8)
add $s2, $s2, $s5
la $s0, g
sw $s4, 0($s0)
la $t3, n
lw $s4, 0($t3)
add $s2, $s2, $s4
la $s0, h
sw $t6, 0($s0)
la $s1, o
lw $t6, 0($s1)
add $s2, $s2, $t6
la $s0, i
sw $s6, 0($s0)
la $t5, p
lw $s6, 0($t5)
add $s2, $s2, $s6
sw $s2, 0($t1)
la $s2, q
lw $t1, 0($s2)
la $s0, j
sw $t2, 0($s0)
la $t2, ad
lw $t4, 0($t2)
add $t4, $t4, $t1
la $s0, k
sw $s3, 0($s0)
la $t9, r
lw $s3, 0($t9)
add $t4, $t4, $s3
la $s0, l
sw $t7, 0($s0)
la $t0, s
lw $t7, 0($t0)
add $t4, $t4, $t7
la $s0, m
sw $s5, 0($s0)
la $t8, t
lw $s5, 0($t8)
add $t4, $t4, $s5
la $s0, n
sw $s4, 0($s0)
la $t3, u
lw $s4, 0($t3)
add $t4, $t4, $s4
la $s0, o
sw $t6, 0($s0)
la $s1, v
lw $t6, 0($s1)
add $t4, $t4, $t6
la $s0, p
sw $s6, 0($s0)
la $t5, w
lw $s6, 0($t5)
add $t4, $t4, $s6
la $s0, q
sw $t1, 0($s0)
la $s2, x
lw $t1, 0($s2)
add $t4, $t4, $t1
sw $t4, 0($t2)
la $t4, y
lw $t2, 0($t4)
la $s0, r
sw $s3, 0($s0)
la $s3, ad
lw $t9, 0($s3)
add $t9, $t9, $t2
la $s0, s
sw $t7, 0($s0)
la $t0, z
lw $t7, 0($t0)
add $t9, $t9, $t7
la $s0, t
sw $s5, 0($s0)
la $s5, ab
lw $t8, 0($s5)
add $t8, $t8, $t9
la $s0, u
sw $s4, 0($s0)
la $t3, a
lw $s4, 0($t3)
move $s1, $s4
la $s0, v
sw $t6, 0($s0)
la $t6, b
lw $t5, 0($t6)
add $s1, $s1, $t5
la $s0, w
sw $s6, 0($s0)
la $s6, c
lw $s2, 0($s6)
add $s1, $s1, $s2
la $s0, x
sw $t1, 0($s0)
la $t1, d
lw $t4, 0($t1)
add $s1, $s1, $t4
la $s0, y
sw $t2, 0($s0)
sw $t9, 0($s3)
la $t2, e
lw $t9, 0($t2)
add $s1, $s1, $t9
la $s3, f
lw $t0, 0($s3)
add $s1, $s1, $t0
la $s0, z
sw $t7, 0($s0)
sw $t8, 0($s5)
la $t7, g
lw $t8, 0($t7)
add $s1, $s1, $t8
la $s5, h
lw $t3, 0($s5)
add $s1, $s1, $t3
la $s0, a
sw $s4, 0($s0)
la $s0, ae
sw $s1, 0($s0)
la $s4, i
lw $s1, 0($s4)
la $s0, b
sw $t5, 0($s0)
la $t5, ae
lw $t6, 0($t5)
add $t6, $t6, $s1
la $s0, c
sw $s2, 0($s0)
la $s6, j
lw $s2, 0($s6)
add $t6, $t6, $s2
la $s0, d
sw $t4, 0($s0)
la $t1, k
lw $t4, 0($t1)
add $t6, $t6, $t4
la $s0, e
sw $t9, 0($s0)
la $t2, l
lw $t9, 0($t2)
add $t6, $t6, $t9
la $s0, f
sw $t0, 0($s0)
la $s3, m
lw $t0, 0($s3)
add $t6, $t6, $t0
la $s0, g
sw $t8, 0($s0)
la $t7, n
lw $t8, 0($t7)
add $t6, $t6, $t8
la $s0, h
sw $t3, 0($s0)
la $s5, o
lw $t3, 0($s5)
add $t6, $t6, $t3
la $s0, i
sw $s1, 0($s0)
la $s4, p
lw $s1, 0($s4)
add $t6, $t6, $s1
sw $t6, 0($t5)
la $t6, q
lw $t5, 0($t6)
la $s0, j
sw $s2, 0($s0)
la $s2, ae
lw $s6, 0($s2)
add $s6, $s6, $t5
la $s0, k
sw $t4, 0($s0)
la $t1, r
lw $t4, 0($t1)
add $s6, $s6, $t4
la $s0, l
sw $t9, 0($s0)
la $t2, s
lw $t9, 0($t2)
add $s6, $s6, $t9
la $s0, m
sw $t0, 0($s0)
la $s3, t
lw $t0, 0($s3)
add $s6, $s6, $t0
la $s0, n
sw $t8, 0($s0)
la $t7, u
lw $t8, 0($t7)
add $s6, $s6, $t8
la $s0, o
sw $t3, 0($s0)
la $s5, v
lw $t3, 0($s5)
add $s6, $s6, $t3
la $s0, p
sw $s1, 0($s0)
la $s4, w
lw $s1, 0($s4)
add $s6, $s6, $s1
la $s0, q
sw $t5, 0($s0)
la $t6, x
lw $t5, 0($t6)
add $s6, $s6, $t5
sw $s6, 0($s2)
la $s6, y
lw $s2, 0($s6)
la $s0, r
sw $t4, 0($s0)
la $t4, ae
lw $t1, 0($t4)
add $t1, $t1, $s2
la $s0, s
sw $t9, 0($s0)
la $t2, z
lw $t9, 0($t2)
add $t1, $t1, $t9
la $s0, t
sw $t0, 0($s0)
la $t0, ab
lw $s3, 0($t0)
add $s3, $s3, $t1
li $v0, 1
move $a0, $s3
syscall
