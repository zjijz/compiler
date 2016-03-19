.data
b:	.word	0	# b in original
g:	.word	0	# g in original
c:	.word	0	# c in original
z:	.word	0	# z in original
t:	.word	0	# t in original
v:	.word	0	# v in original
ab:	.word	0	# temp_b in original
e:	.word	0	# e in original
q:	.word	0	# q in original
n:	.word	0	# n in original
y:	.word	0	# y in original
r:	.word	0	# r in original
w:	.word	0	# w in original
f:	.word	0	# f in original
p:	.word	0	# p in original
aa:	.word	0	# temp_a in original
u:	.word	0	# u in original
ad:	.word	0	# temp_d in original
ae:	.word	0	# temp_e in original
ac:	.word	0	# temp_c in original
m:	.word	0	# m in original
h:	.word	0	# h in original
o:	.word	0	# o in original
j:	.word	0	# j in original
i:	.word	0	# i in original
k:	.word	0	# k in original
x:	.word	0	# x in original
a:	.word	0	# a in original
l:	.word	0	# l in original
s:	.word	0	# s in original
d:	.word	0	# d in original
.text
li $v0, 5
syscall
la $t7, a
lw $t6, 0($t7)
move $t6, $v0
li $v0, 5
syscall
la $t0, b
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
la $t3, c
lw $t2, 0($t3)
move $t2, $v0
li $v0, 5
syscall
la $t5, d
lw $t4, 0($t5)
move $t4, $v0
li $v0, 5
syscall
la $t8, e
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, a
sw $t6, 0($s0)
la $t6, f
lw $t7, 0($t6)
move $t7, $v0
li $v0, 5
syscall
la $s0, b
sw $t1, 0($s0)
la $t1, g
lw $t0, 0($t1)
move $t0, $v0
li $v0, 5
syscall
la $s0, c
sw $t2, 0($s0)
la $t2, h
lw $t3, 0($t2)
move $t3, $v0
li $v0, 5
syscall
la $s0, d
sw $t4, 0($s0)
la $t4, i
lw $t5, 0($t4)
move $t5, $v0
li $v0, 5
syscall
la $s0, e
sw $t9, 0($s0)
la $t9, j
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s0, f
sw $t7, 0($s0)
la $t7, k
lw $t6, 0($t7)
move $t6, $v0
li $v0, 5
syscall
la $s0, g
sw $t0, 0($s0)
la $t0, l
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
la $s0, h
sw $t3, 0($s0)
la $t3, m
lw $t2, 0($t3)
move $t2, $v0
li $v0, 5
syscall
la $s0, i
sw $t5, 0($s0)
la $t5, n
lw $t4, 0($t5)
move $t4, $v0
li $v0, 5
syscall
la $s0, j
sw $t8, 0($s0)
la $t8, o
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, k
sw $t6, 0($s0)
la $t6, p
lw $t7, 0($t6)
move $t7, $v0
li $v0, 5
syscall
la $s0, l
sw $t1, 0($s0)
la $t1, q
lw $t0, 0($t1)
move $t0, $v0
li $v0, 5
syscall
la $s0, m
sw $t2, 0($s0)
la $t2, r
lw $t3, 0($t2)
move $t3, $v0
li $v0, 5
syscall
la $s0, n
sw $t4, 0($s0)
la $t4, s
lw $t5, 0($t4)
move $t5, $v0
li $v0, 5
syscall
la $s0, o
sw $t9, 0($s0)
la $t9, t
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s0, p
sw $t7, 0($s0)
la $t7, u
lw $t6, 0($t7)
move $t6, $v0
li $v0, 5
syscall
la $s0, q
sw $t0, 0($s0)
la $t0, v
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
la $s0, r
sw $t3, 0($s0)
la $t3, w
lw $t2, 0($t3)
move $t2, $v0
li $v0, 5
syscall
la $s0, s
sw $t5, 0($s0)
la $t5, x
lw $t4, 0($t5)
move $t4, $v0
li $v0, 5
syscall
la $s0, t
sw $t8, 0($s0)
la $t8, y
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, u
sw $t6, 0($s0)
la $t6, z
lw $t7, 0($t6)
move $t7, $v0
la $s0, v
sw $t1, 0($s0)
la $t0, a
lw $t1, 0($t0)
la $s0, w
sw $t2, 0($s0)
move $t2, $t1
la $t3, ab
sw $t2, 0($t3)
la $t2, b
lw $t3, 0($t2)
la $s0, x
sw $t4, 0($s0)
la $t5, ab
lw $t4, 0($t5)
add $t4, $t4, $t3
la $t5, ab
sw $t4, 0($t5)
la $t4, c
lw $t5, 0($t4)
la $s0, y
sw $t9, 0($s0)
la $t8, ab
lw $t9, 0($t8)
add $t9, $t9, $t5
la $t8, ab
sw $t9, 0($t8)
la $t9, d
lw $t8, 0($t9)
la $s0, z
sw $t7, 0($s0)
la $t6, ab
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ab
sw $t7, 0($t6)
la $t6, e
lw $t7, 0($t6)
la $s0, a
sw $t1, 0($s0)
la $t0, ab
lw $t1, 0($t0)
add $t1, $t1, $t7
la $t0, ab
sw $t1, 0($t0)
la $t1, f
lw $t0, 0($t1)
la $s0, b
sw $t3, 0($s0)
la $t2, ab
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ab
sw $t3, 0($t2)
la $t2, g
lw $t3, 0($t2)
la $s0, c
sw $t5, 0($s0)
la $t4, ab
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ab
sw $t5, 0($t4)
la $t4, h
lw $t5, 0($t4)
la $s0, d
sw $t8, 0($s0)
la $t9, ab
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ab
sw $t8, 0($t9)
la $t9, i
lw $t8, 0($t9)
la $s0, e
sw $t7, 0($s0)
la $t6, ab
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ab
sw $t7, 0($t6)
la $t6, j
lw $t7, 0($t6)
la $s0, f
sw $t0, 0($s0)
la $t1, ab
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ab
sw $t0, 0($t1)
la $t1, k
lw $t0, 0($t1)
la $s0, g
sw $t3, 0($s0)
la $t2, ab
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ab
sw $t3, 0($t2)
la $t2, l
lw $t3, 0($t2)
la $s0, h
sw $t5, 0($s0)
la $t4, ab
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ab
sw $t5, 0($t4)
la $t4, m
lw $t5, 0($t4)
la $s0, i
sw $t8, 0($s0)
la $t9, ab
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ab
sw $t8, 0($t9)
la $t9, n
lw $t8, 0($t9)
la $s0, j
sw $t7, 0($s0)
la $t6, ab
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ab
sw $t7, 0($t6)
la $t6, o
lw $t7, 0($t6)
la $s0, k
sw $t0, 0($s0)
la $t1, ab
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ab
sw $t0, 0($t1)
la $t1, p
lw $t0, 0($t1)
la $s0, l
sw $t3, 0($s0)
la $t2, ab
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ab
sw $t3, 0($t2)
la $t2, q
lw $t3, 0($t2)
la $s0, m
sw $t5, 0($s0)
la $t4, ab
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ab
sw $t5, 0($t4)
la $t4, r
lw $t5, 0($t4)
la $s0, n
sw $t8, 0($s0)
la $t9, ab
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ab
sw $t8, 0($t9)
la $t9, s
lw $t8, 0($t9)
la $s0, o
sw $t7, 0($s0)
la $t6, ab
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ab
sw $t7, 0($t6)
la $t6, t
lw $t7, 0($t6)
la $s0, p
sw $t0, 0($s0)
la $t1, ab
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ab
sw $t0, 0($t1)
la $t1, u
lw $t0, 0($t1)
la $s0, q
sw $t3, 0($s0)
la $t2, ab
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ab
sw $t3, 0($t2)
la $t2, v
lw $t3, 0($t2)
la $s0, r
sw $t5, 0($s0)
la $t4, ab
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ab
sw $t5, 0($t4)
la $t4, w
lw $t5, 0($t4)
la $s0, s
sw $t8, 0($s0)
la $t9, ab
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ab
sw $t8, 0($t9)
la $t9, x
lw $t8, 0($t9)
la $s0, t
sw $t7, 0($s0)
la $t6, ab
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ab
sw $t7, 0($t6)
la $t6, y
lw $t7, 0($t6)
la $s0, u
sw $t0, 0($s0)
la $t1, ab
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ab
sw $t0, 0($t1)
la $t1, z
lw $t0, 0($t1)
la $s0, v
sw $t3, 0($s0)
la $t2, ab
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ab
sw $t3, 0($t2)
la $t2, ab
lw $t3, 0($t2)
la $s0, w
sw $t5, 0($s0)
move $t5, $t3
la $t4, aa
sw $t5, 0($t4)
la $t4, a
lw $t5, 0($t4)
la $s0, x
sw $t8, 0($s0)
move $t8, $t5
la $t9, ac
sw $t8, 0($t9)
la $t9, b
lw $t8, 0($t9)
la $s0, y
sw $t7, 0($s0)
la $t6, ac
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ac
sw $t7, 0($t6)
la $t6, c
lw $t7, 0($t6)
la $s0, z
sw $t0, 0($s0)
la $t1, ac
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ac
sw $t0, 0($t1)
la $t1, d
lw $t0, 0($t1)
la $s0, ab
sw $t3, 0($s0)
la $t2, ac
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ac
sw $t3, 0($t2)
la $t2, e
lw $t3, 0($t2)
la $s0, a
sw $t5, 0($s0)
la $t4, ac
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ac
sw $t5, 0($t4)
la $t4, f
lw $t5, 0($t4)
la $s0, b
sw $t8, 0($s0)
la $t9, ac
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ac
sw $t8, 0($t9)
la $t9, g
lw $t8, 0($t9)
la $s0, c
sw $t7, 0($s0)
la $t6, ac
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ac
sw $t7, 0($t6)
la $t6, h
lw $t7, 0($t6)
la $s0, d
sw $t0, 0($s0)
la $t1, ac
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ac
sw $t0, 0($t1)
la $t1, i
lw $t0, 0($t1)
la $s0, e
sw $t3, 0($s0)
la $t2, ac
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ac
sw $t3, 0($t2)
la $t2, j
lw $t3, 0($t2)
la $s0, f
sw $t5, 0($s0)
la $t4, ac
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ac
sw $t5, 0($t4)
la $t4, k
lw $t5, 0($t4)
la $s0, g
sw $t8, 0($s0)
la $t9, ac
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ac
sw $t8, 0($t9)
la $t9, l
lw $t8, 0($t9)
la $s0, h
sw $t7, 0($s0)
la $t6, ac
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ac
sw $t7, 0($t6)
la $t6, m
lw $t7, 0($t6)
la $s0, i
sw $t0, 0($s0)
la $t1, ac
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ac
sw $t0, 0($t1)
la $t1, n
lw $t0, 0($t1)
la $s0, j
sw $t3, 0($s0)
la $t2, ac
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ac
sw $t3, 0($t2)
la $t2, o
lw $t3, 0($t2)
la $s0, k
sw $t5, 0($s0)
la $t4, ac
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ac
sw $t5, 0($t4)
la $t4, p
lw $t5, 0($t4)
la $s0, l
sw $t8, 0($s0)
la $t9, ac
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ac
sw $t8, 0($t9)
la $t9, q
lw $t8, 0($t9)
la $s0, m
sw $t7, 0($s0)
la $t6, ac
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ac
sw $t7, 0($t6)
la $t6, r
lw $t7, 0($t6)
la $s0, n
sw $t0, 0($s0)
la $t1, ac
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ac
sw $t0, 0($t1)
la $t1, s
lw $t0, 0($t1)
la $s0, o
sw $t3, 0($s0)
la $t2, ac
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ac
sw $t3, 0($t2)
la $t2, t
lw $t3, 0($t2)
la $s0, p
sw $t5, 0($s0)
la $t4, ac
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ac
sw $t5, 0($t4)
la $t4, u
lw $t5, 0($t4)
la $s0, q
sw $t8, 0($s0)
la $t9, ac
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ac
sw $t8, 0($t9)
la $t9, v
lw $t8, 0($t9)
la $s0, r
sw $t7, 0($s0)
la $t6, ac
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ac
sw $t7, 0($t6)
la $t6, w
lw $t7, 0($t6)
la $s0, s
sw $t0, 0($s0)
la $t1, ac
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ac
sw $t0, 0($t1)
la $t1, x
lw $t0, 0($t1)
la $s0, t
sw $t3, 0($s0)
la $t2, ac
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ac
sw $t3, 0($t2)
la $t2, y
lw $t3, 0($t2)
la $s0, u
sw $t5, 0($s0)
la $t4, ac
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ac
sw $t5, 0($t4)
la $t4, z
lw $t5, 0($t4)
la $s0, v
sw $t8, 0($s0)
la $t9, ac
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ac
sw $t8, 0($t9)
la $t9, ac
lw $t8, 0($t9)
la $s0, w
sw $t7, 0($s0)
la $t6, aa
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, aa
sw $t7, 0($t6)
la $t6, a
lw $t7, 0($t6)
la $s0, x
sw $t0, 0($s0)
move $t0, $t7
la $t1, ad
sw $t0, 0($t1)
la $t1, b
lw $t0, 0($t1)
la $s0, y
sw $t3, 0($s0)
la $t2, ad
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ad
sw $t3, 0($t2)
la $t2, c
lw $t3, 0($t2)
la $s0, z
sw $t5, 0($s0)
la $t4, ad
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ad
sw $t5, 0($t4)
la $t4, d
lw $t5, 0($t4)
la $s0, ac
sw $t8, 0($s0)
la $t9, ad
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ad
sw $t8, 0($t9)
la $t9, e
lw $t8, 0($t9)
la $s0, a
sw $t7, 0($s0)
la $t6, ad
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ad
sw $t7, 0($t6)
la $t6, f
lw $t7, 0($t6)
la $s0, b
sw $t0, 0($s0)
la $t1, ad
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ad
sw $t0, 0($t1)
la $t1, g
lw $t0, 0($t1)
la $s0, c
sw $t3, 0($s0)
la $t2, ad
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ad
sw $t3, 0($t2)
la $t2, h
lw $t3, 0($t2)
la $s0, d
sw $t5, 0($s0)
la $t4, ad
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ad
sw $t5, 0($t4)
la $t4, i
lw $t5, 0($t4)
la $s0, e
sw $t8, 0($s0)
la $t9, ad
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ad
sw $t8, 0($t9)
la $t9, j
lw $t8, 0($t9)
la $s0, f
sw $t7, 0($s0)
la $t6, ad
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ad
sw $t7, 0($t6)
la $t6, k
lw $t7, 0($t6)
la $s0, g
sw $t0, 0($s0)
la $t1, ad
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ad
sw $t0, 0($t1)
la $t1, l
lw $t0, 0($t1)
la $s0, h
sw $t3, 0($s0)
la $t2, ad
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ad
sw $t3, 0($t2)
la $t2, m
lw $t3, 0($t2)
la $s0, i
sw $t5, 0($s0)
la $t4, ad
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ad
sw $t5, 0($t4)
la $t4, n
lw $t5, 0($t4)
la $s0, j
sw $t8, 0($s0)
la $t9, ad
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ad
sw $t8, 0($t9)
la $t9, o
lw $t8, 0($t9)
la $s0, k
sw $t7, 0($s0)
la $t6, ad
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ad
sw $t7, 0($t6)
la $t6, p
lw $t7, 0($t6)
la $s0, l
sw $t0, 0($s0)
la $t1, ad
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ad
sw $t0, 0($t1)
la $t1, q
lw $t0, 0($t1)
la $s0, m
sw $t3, 0($s0)
la $t2, ad
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ad
sw $t3, 0($t2)
la $t2, r
lw $t3, 0($t2)
la $s0, n
sw $t5, 0($s0)
la $t4, ad
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ad
sw $t5, 0($t4)
la $t4, s
lw $t5, 0($t4)
la $s0, o
sw $t8, 0($s0)
la $t9, ad
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ad
sw $t8, 0($t9)
la $t9, t
lw $t8, 0($t9)
la $s0, p
sw $t7, 0($s0)
la $t6, ad
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ad
sw $t7, 0($t6)
la $t6, u
lw $t7, 0($t6)
la $s0, q
sw $t0, 0($s0)
la $t1, ad
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ad
sw $t0, 0($t1)
la $t1, v
lw $t0, 0($t1)
la $s0, r
sw $t3, 0($s0)
la $t2, ad
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ad
sw $t3, 0($t2)
la $t2, w
lw $t3, 0($t2)
la $s0, s
sw $t5, 0($s0)
la $t4, ad
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ad
sw $t5, 0($t4)
la $t4, x
lw $t5, 0($t4)
la $s0, t
sw $t8, 0($s0)
la $t9, ad
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ad
sw $t8, 0($t9)
la $t9, y
lw $t8, 0($t9)
la $s0, u
sw $t7, 0($s0)
la $t6, ad
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ad
sw $t7, 0($t6)
la $t6, z
lw $t7, 0($t6)
la $s0, v
sw $t0, 0($s0)
la $t1, ad
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ad
sw $t0, 0($t1)
la $t1, ad
lw $t0, 0($t1)
la $s0, w
sw $t3, 0($s0)
la $t2, aa
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, aa
sw $t3, 0($t2)
la $t2, a
lw $t3, 0($t2)
la $s0, x
sw $t5, 0($s0)
move $t5, $t3
la $t4, ae
sw $t5, 0($t4)
la $t4, b
lw $t5, 0($t4)
la $s0, y
sw $t8, 0($s0)
la $t9, ae
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ae
sw $t8, 0($t9)
la $t9, c
lw $t8, 0($t9)
la $s0, z
sw $t7, 0($s0)
la $t6, ae
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ae
sw $t7, 0($t6)
la $t6, d
lw $t7, 0($t6)
la $s0, ad
sw $t0, 0($s0)
la $t1, ae
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ae
sw $t0, 0($t1)
la $t1, e
lw $t0, 0($t1)
la $s0, a
sw $t3, 0($s0)
la $t2, ae
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ae
sw $t3, 0($t2)
la $t2, f
lw $t3, 0($t2)
la $s0, b
sw $t5, 0($s0)
la $t4, ae
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ae
sw $t5, 0($t4)
la $t4, g
lw $t5, 0($t4)
la $s0, c
sw $t8, 0($s0)
la $t9, ae
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ae
sw $t8, 0($t9)
la $t9, h
lw $t8, 0($t9)
la $s0, d
sw $t7, 0($s0)
la $t6, ae
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ae
sw $t7, 0($t6)
la $t6, i
lw $t7, 0($t6)
la $s0, e
sw $t0, 0($s0)
la $t1, ae
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ae
sw $t0, 0($t1)
la $t1, j
lw $t0, 0($t1)
la $s0, f
sw $t3, 0($s0)
la $t2, ae
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ae
sw $t3, 0($t2)
la $t2, k
lw $t3, 0($t2)
la $s0, g
sw $t5, 0($s0)
la $t4, ae
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ae
sw $t5, 0($t4)
la $t4, l
lw $t5, 0($t4)
la $s0, h
sw $t8, 0($s0)
la $t9, ae
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ae
sw $t8, 0($t9)
la $t9, m
lw $t8, 0($t9)
la $s0, i
sw $t7, 0($s0)
la $t6, ae
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ae
sw $t7, 0($t6)
la $t6, n
lw $t7, 0($t6)
la $s0, j
sw $t0, 0($s0)
la $t1, ae
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ae
sw $t0, 0($t1)
la $t1, o
lw $t0, 0($t1)
la $s0, k
sw $t3, 0($s0)
la $t2, ae
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ae
sw $t3, 0($t2)
la $t2, p
lw $t3, 0($t2)
la $s0, l
sw $t5, 0($s0)
la $t4, ae
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ae
sw $t5, 0($t4)
la $t4, q
lw $t5, 0($t4)
la $s0, m
sw $t8, 0($s0)
la $t9, ae
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ae
sw $t8, 0($t9)
la $t9, r
lw $t8, 0($t9)
la $s0, n
sw $t7, 0($s0)
la $t6, ae
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ae
sw $t7, 0($t6)
la $t6, s
lw $t7, 0($t6)
la $s0, o
sw $t0, 0($s0)
la $t1, ae
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ae
sw $t0, 0($t1)
la $t1, t
lw $t0, 0($t1)
la $s0, p
sw $t3, 0($s0)
la $t2, ae
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ae
sw $t3, 0($t2)
la $t2, u
lw $t3, 0($t2)
la $s0, q
sw $t5, 0($s0)
la $t4, ae
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ae
sw $t5, 0($t4)
la $t4, v
lw $t5, 0($t4)
la $s0, r
sw $t8, 0($s0)
la $t9, ae
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, ae
sw $t8, 0($t9)
la $t9, w
lw $t8, 0($t9)
la $s0, s
sw $t7, 0($s0)
la $t6, ae
lw $t7, 0($t6)
add $t7, $t7, $t8
la $t6, ae
sw $t7, 0($t6)
la $t6, x
lw $t7, 0($t6)
la $s0, t
sw $t0, 0($s0)
la $t1, ae
lw $t0, 0($t1)
add $t0, $t0, $t7
la $t1, ae
sw $t0, 0($t1)
la $t1, y
lw $t0, 0($t1)
la $s0, u
sw $t3, 0($s0)
la $t2, ae
lw $t3, 0($t2)
add $t3, $t3, $t0
la $t2, ae
sw $t3, 0($t2)
la $t2, z
lw $t3, 0($t2)
la $s0, v
sw $t5, 0($s0)
la $t4, ae
lw $t5, 0($t4)
add $t5, $t5, $t3
la $t4, ae
sw $t5, 0($t4)
la $t4, ae
lw $t5, 0($t4)
la $s0, w
sw $t8, 0($s0)
la $t9, aa
lw $t8, 0($t9)
add $t8, $t8, $t5
la $t9, aa
sw $t8, 0($t9)
la $t9, aa
lw $t8, 0($t9)
li $v0, 1
move $a0, $t8
syscall
