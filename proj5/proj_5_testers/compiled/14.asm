.data
y:	.word	0	# y in original
l:	.word	0	# l in original
ae:	.word	0	# temp_e in original
i:	.word	0	# i in original
d:	.word	0	# d in original
k:	.word	0	# k in original
t:	.word	0	# t in original
b:	.word	0	# b in original
ac:	.word	0	# temp_c in original
f:	.word	0	# f in original
n:	.word	0	# n in original
g:	.word	0	# g in original
x:	.word	0	# x in original
v:	.word	0	# v in original
aa:	.word	0	# temp_a in original
z:	.word	0	# z in original
u:	.word	0	# u in original
q:	.word	0	# q in original
s:	.word	0	# s in original
h:	.word	0	# h in original
j:	.word	0	# j in original
p:	.word	0	# p in original
w:	.word	0	# w in original
o:	.word	0	# o in original
a:	.word	0	# a in original
c:	.word	0	# c in original
r:	.word	0	# r in original
ab:	.word	0	# temp_b in original
ad:	.word	0	# temp_d in original
m:	.word	0	# m in original
e:	.word	0	# e in original
.text
li $v0, 5
syscall
la $t0, a
lw $t8, 0($t0)
move $t8, $v0
li $v0, 5
syscall
la $t5, b
lw $t4, 0($t5)
move $t4, $v0
li $v0, 5
syscall
la $t9, c
lw $t2, 0($t9)
move $t2, $v0
li $v0, 5
syscall
la $t7, d
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $t1, e
lw $t6, 0($t1)
move $t6, $v0
li $v0, 5
syscall
la $s0, a
sw $t8, 0($s0)
la $t8, f
lw $t0, 0($t8)
move $t0, $v0
li $v0, 5
syscall
la $s0, b
sw $t4, 0($s0)
la $t4, g
lw $t5, 0($t4)
move $t5, $v0
li $v0, 5
syscall
la $s0, c
sw $t2, 0($s0)
la $t2, h
lw $t9, 0($t2)
move $t9, $v0
li $v0, 5
syscall
la $s0, d
sw $t3, 0($s0)
la $t3, i
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s0, e
sw $t6, 0($s0)
la $t6, j
lw $t1, 0($t6)
move $t1, $v0
li $v0, 5
syscall
la $s0, f
sw $t0, 0($s0)
la $t0, k
lw $t8, 0($t0)
move $t8, $v0
li $v0, 5
syscall
la $s0, g
sw $t5, 0($s0)
la $t5, l
lw $t4, 0($t5)
move $t4, $v0
li $v0, 5
syscall
la $s0, h
sw $t9, 0($s0)
la $t9, m
lw $t2, 0($t9)
move $t2, $v0
li $v0, 5
syscall
la $s0, i
sw $t7, 0($s0)
la $t7, n
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s0, j
sw $t1, 0($s0)
la $t1, o
lw $t6, 0($t1)
move $t6, $v0
li $v0, 5
syscall
la $s0, k
sw $t8, 0($s0)
la $t8, p
lw $t0, 0($t8)
move $t0, $v0
li $v0, 5
syscall
la $s0, l
sw $t4, 0($s0)
la $t4, q
lw $t5, 0($t4)
move $t5, $v0
li $v0, 5
syscall
la $s0, m
sw $t2, 0($s0)
la $t2, r
lw $t9, 0($t2)
move $t9, $v0
li $v0, 5
syscall
la $s0, n
sw $t3, 0($s0)
la $t3, s
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s0, o
sw $t6, 0($s0)
la $t6, t
lw $t1, 0($t6)
move $t1, $v0
li $v0, 5
syscall
la $s0, p
sw $t0, 0($s0)
la $t0, u
lw $t8, 0($t0)
move $t8, $v0
li $v0, 5
syscall
la $s0, q
sw $t5, 0($s0)
la $t5, v
lw $t4, 0($t5)
move $t4, $v0
li $v0, 5
syscall
la $s0, r
sw $t9, 0($s0)
la $t9, w
lw $t2, 0($t9)
move $t2, $v0
li $v0, 5
syscall
la $s0, s
sw $t7, 0($s0)
la $t7, x
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s0, t
sw $t1, 0($s0)
la $t1, y
lw $t6, 0($t1)
move $t6, $v0
li $v0, 5
syscall
la $s0, u
sw $t8, 0($s0)
la $t8, z
lw $t0, 0($t8)
move $t0, $v0
la $s0, v
sw $t4, 0($s0)
la $t5, a
lw $t4, 0($t5)
la $s0, w
sw $t2, 0($s0)
move $t2, $t4
la $t9, ab
sw $t2, 0($t9)
la $t2, b
lw $t9, 0($t2)
la $s0, x
sw $t3, 0($s0)
la $t7, ab
lw $t3, 0($t7)
add $t3, $t3, $t9
la $t7, ab
sw $t3, 0($t7)
la $t3, c
lw $t7, 0($t3)
la $s0, y
sw $t6, 0($s0)
la $t1, ab
lw $t6, 0($t1)
add $t6, $t6, $t7
la $t1, ab
sw $t6, 0($t1)
la $t6, d
lw $t1, 0($t6)
la $s0, z
sw $t0, 0($s0)
la $t8, ab
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ab
sw $t0, 0($t8)
la $t8, e
lw $t0, 0($t8)
la $s0, a
sw $t4, 0($s0)
la $t5, ab
lw $t4, 0($t5)
add $t4, $t4, $t0
la $t5, ab
sw $t4, 0($t5)
la $t4, f
lw $t5, 0($t4)
la $s0, b
sw $t9, 0($s0)
la $t2, ab
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ab
sw $t9, 0($t2)
la $t2, g
lw $t9, 0($t2)
la $s0, c
sw $t7, 0($s0)
la $t3, ab
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ab
sw $t7, 0($t3)
la $t3, h
lw $t7, 0($t3)
la $s0, d
sw $t1, 0($s0)
la $t6, ab
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ab
sw $t1, 0($t6)
la $t6, i
lw $t1, 0($t6)
la $s0, e
sw $t0, 0($s0)
la $t8, ab
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ab
sw $t0, 0($t8)
la $t8, j
lw $t0, 0($t8)
la $s0, f
sw $t5, 0($s0)
la $t4, ab
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ab
sw $t5, 0($t4)
la $t4, k
lw $t5, 0($t4)
la $s0, g
sw $t9, 0($s0)
la $t2, ab
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ab
sw $t9, 0($t2)
la $t2, l
lw $t9, 0($t2)
la $s0, h
sw $t7, 0($s0)
la $t3, ab
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ab
sw $t7, 0($t3)
la $t3, m
lw $t7, 0($t3)
la $s0, i
sw $t1, 0($s0)
la $t6, ab
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ab
sw $t1, 0($t6)
la $t6, n
lw $t1, 0($t6)
la $s0, j
sw $t0, 0($s0)
la $t8, ab
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ab
sw $t0, 0($t8)
la $t8, o
lw $t0, 0($t8)
la $s0, k
sw $t5, 0($s0)
la $t4, ab
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ab
sw $t5, 0($t4)
la $t4, p
lw $t5, 0($t4)
la $s0, l
sw $t9, 0($s0)
la $t2, ab
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ab
sw $t9, 0($t2)
la $t2, q
lw $t9, 0($t2)
la $s0, m
sw $t7, 0($s0)
la $t3, ab
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ab
sw $t7, 0($t3)
la $t3, r
lw $t7, 0($t3)
la $s0, n
sw $t1, 0($s0)
la $t6, ab
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ab
sw $t1, 0($t6)
la $t6, s
lw $t1, 0($t6)
la $s0, o
sw $t0, 0($s0)
la $t8, ab
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ab
sw $t0, 0($t8)
la $t8, t
lw $t0, 0($t8)
la $s0, p
sw $t5, 0($s0)
la $t4, ab
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ab
sw $t5, 0($t4)
la $t4, u
lw $t5, 0($t4)
la $s0, q
sw $t9, 0($s0)
la $t2, ab
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ab
sw $t9, 0($t2)
la $t2, v
lw $t9, 0($t2)
la $s0, r
sw $t7, 0($s0)
la $t3, ab
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ab
sw $t7, 0($t3)
la $t3, w
lw $t7, 0($t3)
la $s0, s
sw $t1, 0($s0)
la $t6, ab
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ab
sw $t1, 0($t6)
la $t6, x
lw $t1, 0($t6)
la $s0, t
sw $t0, 0($s0)
la $t8, ab
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ab
sw $t0, 0($t8)
la $t8, y
lw $t0, 0($t8)
la $s0, u
sw $t5, 0($s0)
la $t4, ab
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ab
sw $t5, 0($t4)
la $t4, z
lw $t5, 0($t4)
la $s0, v
sw $t9, 0($s0)
la $t2, ab
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ab
sw $t9, 0($t2)
la $t2, ab
lw $t9, 0($t2)
la $s0, w
sw $t7, 0($s0)
move $t7, $t9
la $t3, aa
sw $t7, 0($t3)
la $t3, a
lw $t7, 0($t3)
la $s0, x
sw $t1, 0($s0)
move $t1, $t7
la $t6, ac
sw $t1, 0($t6)
la $t6, b
lw $t1, 0($t6)
la $s0, y
sw $t0, 0($s0)
la $t8, ac
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ac
sw $t0, 0($t8)
la $t8, c
lw $t0, 0($t8)
la $s0, z
sw $t5, 0($s0)
la $t4, ac
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ac
sw $t5, 0($t4)
la $t4, d
lw $t5, 0($t4)
la $s0, ab
sw $t9, 0($s0)
la $t2, ac
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ac
sw $t9, 0($t2)
la $t2, e
lw $t9, 0($t2)
la $s0, a
sw $t7, 0($s0)
la $t3, ac
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ac
sw $t7, 0($t3)
la $t3, f
lw $t7, 0($t3)
la $s0, b
sw $t1, 0($s0)
la $t6, ac
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ac
sw $t1, 0($t6)
la $t6, g
lw $t1, 0($t6)
la $s0, c
sw $t0, 0($s0)
la $t8, ac
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ac
sw $t0, 0($t8)
la $t8, h
lw $t0, 0($t8)
la $s0, d
sw $t5, 0($s0)
la $t4, ac
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ac
sw $t5, 0($t4)
la $t4, i
lw $t5, 0($t4)
la $s0, e
sw $t9, 0($s0)
la $t2, ac
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ac
sw $t9, 0($t2)
la $t2, j
lw $t9, 0($t2)
la $s0, f
sw $t7, 0($s0)
la $t3, ac
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ac
sw $t7, 0($t3)
la $t3, k
lw $t7, 0($t3)
la $s0, g
sw $t1, 0($s0)
la $t6, ac
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ac
sw $t1, 0($t6)
la $t6, l
lw $t1, 0($t6)
la $s0, h
sw $t0, 0($s0)
la $t8, ac
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ac
sw $t0, 0($t8)
la $t8, m
lw $t0, 0($t8)
la $s0, i
sw $t5, 0($s0)
la $t4, ac
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ac
sw $t5, 0($t4)
la $t4, n
lw $t5, 0($t4)
la $s0, j
sw $t9, 0($s0)
la $t2, ac
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ac
sw $t9, 0($t2)
la $t2, o
lw $t9, 0($t2)
la $s0, k
sw $t7, 0($s0)
la $t3, ac
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ac
sw $t7, 0($t3)
la $t3, p
lw $t7, 0($t3)
la $s0, l
sw $t1, 0($s0)
la $t6, ac
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ac
sw $t1, 0($t6)
la $t6, q
lw $t1, 0($t6)
la $s0, m
sw $t0, 0($s0)
la $t8, ac
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ac
sw $t0, 0($t8)
la $t8, r
lw $t0, 0($t8)
la $s0, n
sw $t5, 0($s0)
la $t4, ac
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ac
sw $t5, 0($t4)
la $t4, s
lw $t5, 0($t4)
la $s0, o
sw $t9, 0($s0)
la $t2, ac
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ac
sw $t9, 0($t2)
la $t2, t
lw $t9, 0($t2)
la $s0, p
sw $t7, 0($s0)
la $t3, ac
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ac
sw $t7, 0($t3)
la $t3, u
lw $t7, 0($t3)
la $s0, q
sw $t1, 0($s0)
la $t6, ac
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ac
sw $t1, 0($t6)
la $t6, v
lw $t1, 0($t6)
la $s0, r
sw $t0, 0($s0)
la $t8, ac
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ac
sw $t0, 0($t8)
la $t8, w
lw $t0, 0($t8)
la $s0, s
sw $t5, 0($s0)
la $t4, ac
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ac
sw $t5, 0($t4)
la $t4, x
lw $t5, 0($t4)
la $s0, t
sw $t9, 0($s0)
la $t2, ac
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ac
sw $t9, 0($t2)
la $t2, y
lw $t9, 0($t2)
la $s0, u
sw $t7, 0($s0)
la $t3, ac
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ac
sw $t7, 0($t3)
la $t3, z
lw $t7, 0($t3)
la $s0, v
sw $t1, 0($s0)
la $t6, ac
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ac
sw $t1, 0($t6)
la $t6, ac
lw $t1, 0($t6)
la $s0, w
sw $t0, 0($s0)
la $t8, aa
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, aa
sw $t0, 0($t8)
la $t8, a
lw $t0, 0($t8)
la $s0, x
sw $t5, 0($s0)
move $t5, $t0
la $t4, ad
sw $t5, 0($t4)
la $t4, b
lw $t5, 0($t4)
la $s0, y
sw $t9, 0($s0)
la $t2, ad
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ad
sw $t9, 0($t2)
la $t2, c
lw $t9, 0($t2)
la $s0, z
sw $t7, 0($s0)
la $t3, ad
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ad
sw $t7, 0($t3)
la $t3, d
lw $t7, 0($t3)
la $s0, ac
sw $t1, 0($s0)
la $t6, ad
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ad
sw $t1, 0($t6)
la $t6, e
lw $t1, 0($t6)
la $s0, a
sw $t0, 0($s0)
la $t8, ad
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ad
sw $t0, 0($t8)
la $t8, f
lw $t0, 0($t8)
la $s0, b
sw $t5, 0($s0)
la $t4, ad
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ad
sw $t5, 0($t4)
la $t4, g
lw $t5, 0($t4)
la $s0, c
sw $t9, 0($s0)
la $t2, ad
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ad
sw $t9, 0($t2)
la $t2, h
lw $t9, 0($t2)
la $s0, d
sw $t7, 0($s0)
la $t3, ad
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ad
sw $t7, 0($t3)
la $t3, i
lw $t7, 0($t3)
la $s0, e
sw $t1, 0($s0)
la $t6, ad
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ad
sw $t1, 0($t6)
la $t6, j
lw $t1, 0($t6)
la $s0, f
sw $t0, 0($s0)
la $t8, ad
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ad
sw $t0, 0($t8)
la $t8, k
lw $t0, 0($t8)
la $s0, g
sw $t5, 0($s0)
la $t4, ad
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ad
sw $t5, 0($t4)
la $t4, l
lw $t5, 0($t4)
la $s0, h
sw $t9, 0($s0)
la $t2, ad
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ad
sw $t9, 0($t2)
la $t2, m
lw $t9, 0($t2)
la $s0, i
sw $t7, 0($s0)
la $t3, ad
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ad
sw $t7, 0($t3)
la $t3, n
lw $t7, 0($t3)
la $s0, j
sw $t1, 0($s0)
la $t6, ad
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ad
sw $t1, 0($t6)
la $t6, o
lw $t1, 0($t6)
la $s0, k
sw $t0, 0($s0)
la $t8, ad
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ad
sw $t0, 0($t8)
la $t8, p
lw $t0, 0($t8)
la $s0, l
sw $t5, 0($s0)
la $t4, ad
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ad
sw $t5, 0($t4)
la $t4, q
lw $t5, 0($t4)
la $s0, m
sw $t9, 0($s0)
la $t2, ad
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ad
sw $t9, 0($t2)
la $t2, r
lw $t9, 0($t2)
la $s0, n
sw $t7, 0($s0)
la $t3, ad
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ad
sw $t7, 0($t3)
la $t3, s
lw $t7, 0($t3)
la $s0, o
sw $t1, 0($s0)
la $t6, ad
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ad
sw $t1, 0($t6)
la $t6, t
lw $t1, 0($t6)
la $s0, p
sw $t0, 0($s0)
la $t8, ad
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ad
sw $t0, 0($t8)
la $t8, u
lw $t0, 0($t8)
la $s0, q
sw $t5, 0($s0)
la $t4, ad
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ad
sw $t5, 0($t4)
la $t4, v
lw $t5, 0($t4)
la $s0, r
sw $t9, 0($s0)
la $t2, ad
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ad
sw $t9, 0($t2)
la $t2, w
lw $t9, 0($t2)
la $s0, s
sw $t7, 0($s0)
la $t3, ad
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ad
sw $t7, 0($t3)
la $t3, x
lw $t7, 0($t3)
la $s0, t
sw $t1, 0($s0)
la $t6, ad
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ad
sw $t1, 0($t6)
la $t6, y
lw $t1, 0($t6)
la $s0, u
sw $t0, 0($s0)
la $t8, ad
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ad
sw $t0, 0($t8)
la $t8, z
lw $t0, 0($t8)
la $s0, v
sw $t5, 0($s0)
la $t4, ad
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ad
sw $t5, 0($t4)
la $t4, ad
lw $t5, 0($t4)
la $s0, w
sw $t9, 0($s0)
la $t2, aa
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, aa
sw $t9, 0($t2)
la $t2, a
lw $t9, 0($t2)
la $s0, x
sw $t7, 0($s0)
move $t7, $t9
la $t3, ae
sw $t7, 0($t3)
la $t3, b
lw $t7, 0($t3)
la $s0, y
sw $t1, 0($s0)
la $t6, ae
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ae
sw $t1, 0($t6)
la $t6, c
lw $t1, 0($t6)
la $s0, z
sw $t0, 0($s0)
la $t8, ae
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ae
sw $t0, 0($t8)
la $t8, d
lw $t0, 0($t8)
la $s0, ad
sw $t5, 0($s0)
la $t4, ae
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ae
sw $t5, 0($t4)
la $t4, e
lw $t5, 0($t4)
la $s0, a
sw $t9, 0($s0)
la $t2, ae
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ae
sw $t9, 0($t2)
la $t2, f
lw $t9, 0($t2)
la $s0, b
sw $t7, 0($s0)
la $t3, ae
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ae
sw $t7, 0($t3)
la $t3, g
lw $t7, 0($t3)
la $s0, c
sw $t1, 0($s0)
la $t6, ae
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ae
sw $t1, 0($t6)
la $t6, h
lw $t1, 0($t6)
la $s0, d
sw $t0, 0($s0)
la $t8, ae
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ae
sw $t0, 0($t8)
la $t8, i
lw $t0, 0($t8)
la $s0, e
sw $t5, 0($s0)
la $t4, ae
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ae
sw $t5, 0($t4)
la $t4, j
lw $t5, 0($t4)
la $s0, f
sw $t9, 0($s0)
la $t2, ae
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ae
sw $t9, 0($t2)
la $t2, k
lw $t9, 0($t2)
la $s0, g
sw $t7, 0($s0)
la $t3, ae
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ae
sw $t7, 0($t3)
la $t3, l
lw $t7, 0($t3)
la $s0, h
sw $t1, 0($s0)
la $t6, ae
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ae
sw $t1, 0($t6)
la $t6, m
lw $t1, 0($t6)
la $s0, i
sw $t0, 0($s0)
la $t8, ae
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ae
sw $t0, 0($t8)
la $t8, n
lw $t0, 0($t8)
la $s0, j
sw $t5, 0($s0)
la $t4, ae
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ae
sw $t5, 0($t4)
la $t4, o
lw $t5, 0($t4)
la $s0, k
sw $t9, 0($s0)
la $t2, ae
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ae
sw $t9, 0($t2)
la $t2, p
lw $t9, 0($t2)
la $s0, l
sw $t7, 0($s0)
la $t3, ae
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ae
sw $t7, 0($t3)
la $t3, q
lw $t7, 0($t3)
la $s0, m
sw $t1, 0($s0)
la $t6, ae
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ae
sw $t1, 0($t6)
la $t6, r
lw $t1, 0($t6)
la $s0, n
sw $t0, 0($s0)
la $t8, ae
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ae
sw $t0, 0($t8)
la $t8, s
lw $t0, 0($t8)
la $s0, o
sw $t5, 0($s0)
la $t4, ae
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ae
sw $t5, 0($t4)
la $t4, t
lw $t5, 0($t4)
la $s0, p
sw $t9, 0($s0)
la $t2, ae
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ae
sw $t9, 0($t2)
la $t2, u
lw $t9, 0($t2)
la $s0, q
sw $t7, 0($s0)
la $t3, ae
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ae
sw $t7, 0($t3)
la $t3, v
lw $t7, 0($t3)
la $s0, r
sw $t1, 0($s0)
la $t6, ae
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, ae
sw $t1, 0($t6)
la $t6, w
lw $t1, 0($t6)
la $s0, s
sw $t0, 0($s0)
la $t8, ae
lw $t0, 0($t8)
add $t0, $t0, $t1
la $t8, ae
sw $t0, 0($t8)
la $t8, x
lw $t0, 0($t8)
la $s0, t
sw $t5, 0($s0)
la $t4, ae
lw $t5, 0($t4)
add $t5, $t5, $t0
la $t4, ae
sw $t5, 0($t4)
la $t4, y
lw $t5, 0($t4)
la $s0, u
sw $t9, 0($s0)
la $t2, ae
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ae
sw $t9, 0($t2)
la $t2, z
lw $t9, 0($t2)
la $s0, v
sw $t7, 0($s0)
la $t3, ae
lw $t7, 0($t3)
add $t7, $t7, $t9
la $t3, ae
sw $t7, 0($t3)
la $t3, ae
lw $t7, 0($t3)
la $s0, w
sw $t1, 0($s0)
la $t6, aa
lw $t1, 0($t6)
add $t1, $t1, $t7
la $t6, aa
sw $t1, 0($t6)
la $t6, aa
lw $t1, 0($t6)
li $v0, 1
move $a0, $t1
syscall
