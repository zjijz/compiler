.data
c:	.word	0	# c in original
k:	.word	0	# k in original
o:	.word	0	# o in original
aa:	.word	0	# temp_a in original
q:	.word	0	# q in original
ae:	.word	0	# temp_e in original
g:	.word	0	# g in original
b:	.word	0	# b in original
n:	.word	0	# n in original
z:	.word	0	# z in original
y:	.word	0	# y in original
ab:	.word	0	# temp_b in original
ad:	.word	0	# temp_d in original
e:	.word	0	# e in original
ac:	.word	0	# temp_c in original
l:	.word	0	# l in original
h:	.word	0	# h in original
x:	.word	0	# x in original
d:	.word	0	# d in original
t:	.word	0	# t in original
s:	.word	0	# s in original
w:	.word	0	# w in original
j:	.word	0	# j in original
p:	.word	0	# p in original
u:	.word	0	# u in original
m:	.word	0	# m in original
i:	.word	0	# i in original
v:	.word	0	# v in original
r:	.word	0	# r in original
a:	.word	0	# a in original
f:	.word	0	# f in original
.text
li $v0, 5
syscall
la $t3, a
lw $t5, 0($t3)
move $t5, $v0
li $v0, 5
syscall
la $t7, b
lw $t0, 0($t7)
move $t0, $v0
li $v0, 5
syscall
la $t8, c
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $t6, d
lw $t2, 0($t6)
move $t2, $v0
li $v0, 5
syscall
la $t1, e
lw $t4, 0($t1)
move $t4, $v0
li $v0, 5
syscall
la $s0, a
sw $t5, 0($s0)
la $t5, f
lw $t3, 0($t5)
move $t3, $v0
li $v0, 5
syscall
la $s0, b
sw $t0, 0($s0)
la $t0, g
lw $t7, 0($t0)
move $t7, $v0
li $v0, 5
syscall
la $s0, c
sw $t9, 0($s0)
la $t9, h
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s0, d
sw $t2, 0($s0)
la $t2, i
lw $t6, 0($t2)
move $t6, $v0
li $v0, 5
syscall
la $s0, e
sw $t4, 0($s0)
la $t4, j
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $s0, f
sw $t3, 0($s0)
la $t3, k
lw $t5, 0($t3)
move $t5, $v0
li $v0, 5
syscall
la $s0, g
sw $t7, 0($s0)
la $t7, l
lw $t0, 0($t7)
move $t0, $v0
li $v0, 5
syscall
la $s0, h
sw $t8, 0($s0)
la $t8, m
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, i
sw $t6, 0($s0)
la $t6, n
lw $t2, 0($t6)
move $t2, $v0
li $v0, 5
syscall
la $s0, j
sw $t1, 0($s0)
la $t1, o
lw $t4, 0($t1)
move $t4, $v0
li $v0, 5
syscall
la $s0, k
sw $t5, 0($s0)
la $t5, p
lw $t3, 0($t5)
move $t3, $v0
li $v0, 5
syscall
la $s0, l
sw $t0, 0($s0)
la $t0, q
lw $t7, 0($t0)
move $t7, $v0
li $v0, 5
syscall
la $s0, m
sw $t9, 0($s0)
la $t9, r
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s0, n
sw $t2, 0($s0)
la $t2, s
lw $t6, 0($t2)
move $t6, $v0
li $v0, 5
syscall
la $s0, o
sw $t4, 0($s0)
la $t4, t
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $s0, p
sw $t3, 0($s0)
la $t3, u
lw $t5, 0($t3)
move $t5, $v0
li $v0, 5
syscall
la $s0, q
sw $t7, 0($s0)
la $t7, v
lw $t0, 0($t7)
move $t0, $v0
li $v0, 5
syscall
la $s0, r
sw $t8, 0($s0)
la $t8, w
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, s
sw $t6, 0($s0)
la $t6, x
lw $t2, 0($t6)
move $t2, $v0
li $v0, 5
syscall
la $s0, t
sw $t1, 0($s0)
la $t1, y
lw $t4, 0($t1)
move $t4, $v0
li $v0, 5
syscall
la $s0, u
sw $t5, 0($s0)
la $t5, z
lw $t3, 0($t5)
move $t3, $v0
la $s0, v
sw $t0, 0($s0)
la $t7, a
lw $t0, 0($t7)
la $s0, w
sw $t9, 0($s0)
move $t9, $t0
la $t8, ab
sw $t9, 0($t8)
la $t9, b
lw $t8, 0($t9)
la $s0, x
sw $t2, 0($s0)
la $t6, ab
lw $t2, 0($t6)
add $t2, $t2, $t8
la $t6, ab
sw $t2, 0($t6)
la $t2, c
lw $t6, 0($t2)
la $s0, y
sw $t4, 0($s0)
la $t1, ab
lw $t4, 0($t1)
add $t4, $t4, $t6
la $t1, ab
sw $t4, 0($t1)
la $t4, d
lw $t1, 0($t4)
la $s0, z
sw $t3, 0($s0)
la $t5, ab
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ab
sw $t3, 0($t5)
la $t5, e
lw $t3, 0($t5)
la $s0, a
sw $t0, 0($s0)
la $t7, ab
lw $t0, 0($t7)
add $t0, $t0, $t3
la $t7, ab
sw $t0, 0($t7)
la $t0, f
lw $t7, 0($t0)
la $s0, b
sw $t8, 0($s0)
la $t9, ab
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ab
sw $t8, 0($t9)
la $t9, g
lw $t8, 0($t9)
la $s0, c
sw $t6, 0($s0)
la $t2, ab
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ab
sw $t6, 0($t2)
la $t2, h
lw $t6, 0($t2)
la $s0, d
sw $t1, 0($s0)
la $t4, ab
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ab
sw $t1, 0($t4)
la $t4, i
lw $t1, 0($t4)
la $s0, e
sw $t3, 0($s0)
la $t5, ab
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ab
sw $t3, 0($t5)
la $t5, j
lw $t3, 0($t5)
la $s0, f
sw $t7, 0($s0)
la $t0, ab
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ab
sw $t7, 0($t0)
la $t0, k
lw $t7, 0($t0)
la $s0, g
sw $t8, 0($s0)
la $t9, ab
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ab
sw $t8, 0($t9)
la $t9, l
lw $t8, 0($t9)
la $s0, h
sw $t6, 0($s0)
la $t2, ab
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ab
sw $t6, 0($t2)
la $t2, m
lw $t6, 0($t2)
la $s0, i
sw $t1, 0($s0)
la $t4, ab
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ab
sw $t1, 0($t4)
la $t4, n
lw $t1, 0($t4)
la $s0, j
sw $t3, 0($s0)
la $t5, ab
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ab
sw $t3, 0($t5)
la $t5, o
lw $t3, 0($t5)
la $s0, k
sw $t7, 0($s0)
la $t0, ab
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ab
sw $t7, 0($t0)
la $t0, p
lw $t7, 0($t0)
la $s0, l
sw $t8, 0($s0)
la $t9, ab
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ab
sw $t8, 0($t9)
la $t9, q
lw $t8, 0($t9)
la $s0, m
sw $t6, 0($s0)
la $t2, ab
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ab
sw $t6, 0($t2)
la $t2, r
lw $t6, 0($t2)
la $s0, n
sw $t1, 0($s0)
la $t4, ab
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ab
sw $t1, 0($t4)
la $t4, s
lw $t1, 0($t4)
la $s0, o
sw $t3, 0($s0)
la $t5, ab
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ab
sw $t3, 0($t5)
la $t5, t
lw $t3, 0($t5)
la $s0, p
sw $t7, 0($s0)
la $t0, ab
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ab
sw $t7, 0($t0)
la $t0, u
lw $t7, 0($t0)
la $s0, q
sw $t8, 0($s0)
la $t9, ab
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ab
sw $t8, 0($t9)
la $t9, v
lw $t8, 0($t9)
la $s0, r
sw $t6, 0($s0)
la $t2, ab
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ab
sw $t6, 0($t2)
la $t2, w
lw $t6, 0($t2)
la $s0, s
sw $t1, 0($s0)
la $t4, ab
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ab
sw $t1, 0($t4)
la $t4, x
lw $t1, 0($t4)
la $s0, t
sw $t3, 0($s0)
la $t5, ab
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ab
sw $t3, 0($t5)
la $t5, y
lw $t3, 0($t5)
la $s0, u
sw $t7, 0($s0)
la $t0, ab
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ab
sw $t7, 0($t0)
la $t0, z
lw $t7, 0($t0)
la $s0, v
sw $t8, 0($s0)
la $t9, ab
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ab
sw $t8, 0($t9)
la $t9, ab
lw $t8, 0($t9)
la $s0, w
sw $t6, 0($s0)
move $t6, $t8
la $t2, aa
sw $t6, 0($t2)
la $t2, a
lw $t6, 0($t2)
la $s0, x
sw $t1, 0($s0)
move $t1, $t6
la $t4, ac
sw $t1, 0($t4)
la $t4, b
lw $t1, 0($t4)
la $s0, y
sw $t3, 0($s0)
la $t5, ac
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ac
sw $t3, 0($t5)
la $t5, c
lw $t3, 0($t5)
la $s0, z
sw $t7, 0($s0)
la $t0, ac
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ac
sw $t7, 0($t0)
la $t0, d
lw $t7, 0($t0)
la $s0, ab
sw $t8, 0($s0)
la $t9, ac
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ac
sw $t8, 0($t9)
la $t9, e
lw $t8, 0($t9)
la $s0, a
sw $t6, 0($s0)
la $t2, ac
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ac
sw $t6, 0($t2)
la $t2, f
lw $t6, 0($t2)
la $s0, b
sw $t1, 0($s0)
la $t4, ac
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ac
sw $t1, 0($t4)
la $t4, g
lw $t1, 0($t4)
la $s0, c
sw $t3, 0($s0)
la $t5, ac
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ac
sw $t3, 0($t5)
la $t5, h
lw $t3, 0($t5)
la $s0, d
sw $t7, 0($s0)
la $t0, ac
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ac
sw $t7, 0($t0)
la $t0, i
lw $t7, 0($t0)
la $s0, e
sw $t8, 0($s0)
la $t9, ac
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ac
sw $t8, 0($t9)
la $t9, j
lw $t8, 0($t9)
la $s0, f
sw $t6, 0($s0)
la $t2, ac
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ac
sw $t6, 0($t2)
la $t2, k
lw $t6, 0($t2)
la $s0, g
sw $t1, 0($s0)
la $t4, ac
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ac
sw $t1, 0($t4)
la $t4, l
lw $t1, 0($t4)
la $s0, h
sw $t3, 0($s0)
la $t5, ac
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ac
sw $t3, 0($t5)
la $t5, m
lw $t3, 0($t5)
la $s0, i
sw $t7, 0($s0)
la $t0, ac
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ac
sw $t7, 0($t0)
la $t0, n
lw $t7, 0($t0)
la $s0, j
sw $t8, 0($s0)
la $t9, ac
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ac
sw $t8, 0($t9)
la $t9, o
lw $t8, 0($t9)
la $s0, k
sw $t6, 0($s0)
la $t2, ac
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ac
sw $t6, 0($t2)
la $t2, p
lw $t6, 0($t2)
la $s0, l
sw $t1, 0($s0)
la $t4, ac
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ac
sw $t1, 0($t4)
la $t4, q
lw $t1, 0($t4)
la $s0, m
sw $t3, 0($s0)
la $t5, ac
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ac
sw $t3, 0($t5)
la $t5, r
lw $t3, 0($t5)
la $s0, n
sw $t7, 0($s0)
la $t0, ac
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ac
sw $t7, 0($t0)
la $t0, s
lw $t7, 0($t0)
la $s0, o
sw $t8, 0($s0)
la $t9, ac
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ac
sw $t8, 0($t9)
la $t9, t
lw $t8, 0($t9)
la $s0, p
sw $t6, 0($s0)
la $t2, ac
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ac
sw $t6, 0($t2)
la $t2, u
lw $t6, 0($t2)
la $s0, q
sw $t1, 0($s0)
la $t4, ac
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ac
sw $t1, 0($t4)
la $t4, v
lw $t1, 0($t4)
la $s0, r
sw $t3, 0($s0)
la $t5, ac
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ac
sw $t3, 0($t5)
la $t5, w
lw $t3, 0($t5)
la $s0, s
sw $t7, 0($s0)
la $t0, ac
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ac
sw $t7, 0($t0)
la $t0, x
lw $t7, 0($t0)
la $s0, t
sw $t8, 0($s0)
la $t9, ac
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ac
sw $t8, 0($t9)
la $t9, y
lw $t8, 0($t9)
la $s0, u
sw $t6, 0($s0)
la $t2, ac
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ac
sw $t6, 0($t2)
la $t2, z
lw $t6, 0($t2)
la $s0, v
sw $t1, 0($s0)
la $t4, ac
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ac
sw $t1, 0($t4)
la $t4, ac
lw $t1, 0($t4)
la $s0, w
sw $t3, 0($s0)
la $t5, aa
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, aa
sw $t3, 0($t5)
la $t5, a
lw $t3, 0($t5)
la $s0, x
sw $t7, 0($s0)
move $t7, $t3
la $t0, ad
sw $t7, 0($t0)
la $t0, b
lw $t7, 0($t0)
la $s0, y
sw $t8, 0($s0)
la $t9, ad
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ad
sw $t8, 0($t9)
la $t9, c
lw $t8, 0($t9)
la $s0, z
sw $t6, 0($s0)
la $t2, ad
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ad
sw $t6, 0($t2)
la $t2, d
lw $t6, 0($t2)
la $s0, ac
sw $t1, 0($s0)
la $t4, ad
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ad
sw $t1, 0($t4)
la $t4, e
lw $t1, 0($t4)
la $s0, a
sw $t3, 0($s0)
la $t5, ad
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ad
sw $t3, 0($t5)
la $t5, f
lw $t3, 0($t5)
la $s0, b
sw $t7, 0($s0)
la $t0, ad
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ad
sw $t7, 0($t0)
la $t0, g
lw $t7, 0($t0)
la $s0, c
sw $t8, 0($s0)
la $t9, ad
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ad
sw $t8, 0($t9)
la $t9, h
lw $t8, 0($t9)
la $s0, d
sw $t6, 0($s0)
la $t2, ad
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ad
sw $t6, 0($t2)
la $t2, i
lw $t6, 0($t2)
la $s0, e
sw $t1, 0($s0)
la $t4, ad
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ad
sw $t1, 0($t4)
la $t4, j
lw $t1, 0($t4)
la $s0, f
sw $t3, 0($s0)
la $t5, ad
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ad
sw $t3, 0($t5)
la $t5, k
lw $t3, 0($t5)
la $s0, g
sw $t7, 0($s0)
la $t0, ad
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ad
sw $t7, 0($t0)
la $t0, l
lw $t7, 0($t0)
la $s0, h
sw $t8, 0($s0)
la $t9, ad
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ad
sw $t8, 0($t9)
la $t9, m
lw $t8, 0($t9)
la $s0, i
sw $t6, 0($s0)
la $t2, ad
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ad
sw $t6, 0($t2)
la $t2, n
lw $t6, 0($t2)
la $s0, j
sw $t1, 0($s0)
la $t4, ad
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ad
sw $t1, 0($t4)
la $t4, o
lw $t1, 0($t4)
la $s0, k
sw $t3, 0($s0)
la $t5, ad
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ad
sw $t3, 0($t5)
la $t5, p
lw $t3, 0($t5)
la $s0, l
sw $t7, 0($s0)
la $t0, ad
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ad
sw $t7, 0($t0)
la $t0, q
lw $t7, 0($t0)
la $s0, m
sw $t8, 0($s0)
la $t9, ad
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ad
sw $t8, 0($t9)
la $t9, r
lw $t8, 0($t9)
la $s0, n
sw $t6, 0($s0)
la $t2, ad
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ad
sw $t6, 0($t2)
la $t2, s
lw $t6, 0($t2)
la $s0, o
sw $t1, 0($s0)
la $t4, ad
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ad
sw $t1, 0($t4)
la $t4, t
lw $t1, 0($t4)
la $s0, p
sw $t3, 0($s0)
la $t5, ad
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ad
sw $t3, 0($t5)
la $t5, u
lw $t3, 0($t5)
la $s0, q
sw $t7, 0($s0)
la $t0, ad
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ad
sw $t7, 0($t0)
la $t0, v
lw $t7, 0($t0)
la $s0, r
sw $t8, 0($s0)
la $t9, ad
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ad
sw $t8, 0($t9)
la $t9, w
lw $t8, 0($t9)
la $s0, s
sw $t6, 0($s0)
la $t2, ad
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ad
sw $t6, 0($t2)
la $t2, x
lw $t6, 0($t2)
la $s0, t
sw $t1, 0($s0)
la $t4, ad
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ad
sw $t1, 0($t4)
la $t4, y
lw $t1, 0($t4)
la $s0, u
sw $t3, 0($s0)
la $t5, ad
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ad
sw $t3, 0($t5)
la $t5, z
lw $t3, 0($t5)
la $s0, v
sw $t7, 0($s0)
la $t0, ad
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ad
sw $t7, 0($t0)
la $t0, ad
lw $t7, 0($t0)
la $s0, w
sw $t8, 0($s0)
la $t9, aa
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, aa
sw $t8, 0($t9)
la $t9, a
lw $t8, 0($t9)
la $s0, x
sw $t6, 0($s0)
move $t6, $t8
la $t2, ae
sw $t6, 0($t2)
la $t2, b
lw $t6, 0($t2)
la $s0, y
sw $t1, 0($s0)
la $t4, ae
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ae
sw $t1, 0($t4)
la $t4, c
lw $t1, 0($t4)
la $s0, z
sw $t3, 0($s0)
la $t5, ae
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ae
sw $t3, 0($t5)
la $t5, d
lw $t3, 0($t5)
la $s0, ad
sw $t7, 0($s0)
la $t0, ae
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ae
sw $t7, 0($t0)
la $t0, e
lw $t7, 0($t0)
la $s0, a
sw $t8, 0($s0)
la $t9, ae
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ae
sw $t8, 0($t9)
la $t9, f
lw $t8, 0($t9)
la $s0, b
sw $t6, 0($s0)
la $t2, ae
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ae
sw $t6, 0($t2)
la $t2, g
lw $t6, 0($t2)
la $s0, c
sw $t1, 0($s0)
la $t4, ae
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ae
sw $t1, 0($t4)
la $t4, h
lw $t1, 0($t4)
la $s0, d
sw $t3, 0($s0)
la $t5, ae
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ae
sw $t3, 0($t5)
la $t5, i
lw $t3, 0($t5)
la $s0, e
sw $t7, 0($s0)
la $t0, ae
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ae
sw $t7, 0($t0)
la $t0, j
lw $t7, 0($t0)
la $s0, f
sw $t8, 0($s0)
la $t9, ae
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ae
sw $t8, 0($t9)
la $t9, k
lw $t8, 0($t9)
la $s0, g
sw $t6, 0($s0)
la $t2, ae
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ae
sw $t6, 0($t2)
la $t2, l
lw $t6, 0($t2)
la $s0, h
sw $t1, 0($s0)
la $t4, ae
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ae
sw $t1, 0($t4)
la $t4, m
lw $t1, 0($t4)
la $s0, i
sw $t3, 0($s0)
la $t5, ae
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ae
sw $t3, 0($t5)
la $t5, n
lw $t3, 0($t5)
la $s0, j
sw $t7, 0($s0)
la $t0, ae
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ae
sw $t7, 0($t0)
la $t0, o
lw $t7, 0($t0)
la $s0, k
sw $t8, 0($s0)
la $t9, ae
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ae
sw $t8, 0($t9)
la $t9, p
lw $t8, 0($t9)
la $s0, l
sw $t6, 0($s0)
la $t2, ae
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ae
sw $t6, 0($t2)
la $t2, q
lw $t6, 0($t2)
la $s0, m
sw $t1, 0($s0)
la $t4, ae
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ae
sw $t1, 0($t4)
la $t4, r
lw $t1, 0($t4)
la $s0, n
sw $t3, 0($s0)
la $t5, ae
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ae
sw $t3, 0($t5)
la $t5, s
lw $t3, 0($t5)
la $s0, o
sw $t7, 0($s0)
la $t0, ae
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ae
sw $t7, 0($t0)
la $t0, t
lw $t7, 0($t0)
la $s0, p
sw $t8, 0($s0)
la $t9, ae
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ae
sw $t8, 0($t9)
la $t9, u
lw $t8, 0($t9)
la $s0, q
sw $t6, 0($s0)
la $t2, ae
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ae
sw $t6, 0($t2)
la $t2, v
lw $t6, 0($t2)
la $s0, r
sw $t1, 0($s0)
la $t4, ae
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, ae
sw $t1, 0($t4)
la $t4, w
lw $t1, 0($t4)
la $s0, s
sw $t3, 0($s0)
la $t5, ae
lw $t3, 0($t5)
add $t3, $t3, $t1
la $t5, ae
sw $t3, 0($t5)
la $t5, x
lw $t3, 0($t5)
la $s0, t
sw $t7, 0($s0)
la $t0, ae
lw $t7, 0($t0)
add $t7, $t7, $t3
la $t0, ae
sw $t7, 0($t0)
la $t0, y
lw $t7, 0($t0)
la $s0, u
sw $t8, 0($s0)
la $t9, ae
lw $t8, 0($t9)
add $t8, $t8, $t7
la $t9, ae
sw $t8, 0($t9)
la $t9, z
lw $t8, 0($t9)
la $s0, v
sw $t6, 0($s0)
la $t2, ae
lw $t6, 0($t2)
add $t6, $t6, $t8
la $t2, ae
sw $t6, 0($t2)
la $t2, ae
lw $t6, 0($t2)
la $s0, w
sw $t1, 0($s0)
la $t4, aa
lw $t1, 0($t4)
add $t1, $t1, $t6
la $t4, aa
sw $t1, 0($t4)
la $t4, aa
lw $t1, 0($t4)
li $v0, 1
move $a0, $t1
syscall
