.data
ag:	.word	0	# temp_g in original
ac:	.word	0	# temp_c in original
l:	.word	0	# l in original
b:	.word	0	# b in original
s:	.word	0	# s in original
z:	.word	0	# z in original
r:	.word	0	# r in original
j:	.word	0	# j in original
d:	.word	0	# d in original
w:	.word	0	# w in original
e:	.word	0	# e in original
g:	.word	0	# g in original
x:	.word	0	# x in original
t:	.word	0	# t in original
af:	.word	0	# temp_f in original
ah:	.word	0	# temp_h in original
a:	.word	0	# a in original
ad:	.word	0	# temp_d in original
h:	.word	0	# h in original
q:	.word	0	# q in original
m:	.word	0	# m in original
n:	.word	0	# n in original
p:	.word	0	# p in original
v:	.word	0	# v in original
c:	.word	0	# c in original
ab:	.word	0	# temp_b in original
i:	.word	0	# i in original
aa:	.word	0	# temp_a in original
u:	.word	0	# u in original
ae:	.word	0	# temp_e in original
f:	.word	0	# f in original
k:	.word	0	# k in original
o:	.word	0	# o in original
y:	.word	0	# y in original
.text
li $v0, 5
syscall
la $t3, a
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $t7, b
lw $t8, 0($t7)
move $t8, $v0
li $v0, 5
syscall
la $t0, c
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $t1, d
lw $t5, 0($t1)
move $t5, $v0
li $v0, 5
syscall
la $t2, e
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s0, a
sw $t6, 0($s0)
la $t6, f
lw $t3, 0($t6)
move $t3, $v0
li $v0, 5
syscall
la $s0, b
sw $t8, 0($s0)
la $t8, g
lw $t7, 0($t8)
move $t7, $v0
li $v0, 5
syscall
la $s0, c
sw $t9, 0($s0)
la $t9, h
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, d
sw $t5, 0($s0)
la $t5, i
lw $t1, 0($t5)
move $t1, $v0
li $v0, 5
syscall
la $s0, e
sw $t4, 0($s0)
la $t4, j
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
la $s0, f
sw $t3, 0($s0)
la $t3, k
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $s0, g
sw $t7, 0($s0)
la $t7, l
lw $t8, 0($t7)
move $t8, $v0
li $v0, 5
syscall
la $s0, h
sw $t0, 0($s0)
la $t0, m
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $s0, i
sw $t1, 0($s0)
la $t1, n
lw $t5, 0($t1)
move $t5, $v0
li $v0, 5
syscall
la $s0, j
sw $t2, 0($s0)
la $t2, o
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s0, k
sw $t6, 0($s0)
la $t6, p
lw $t3, 0($t6)
move $t3, $v0
li $v0, 5
syscall
la $s0, l
sw $t8, 0($s0)
la $t8, q
lw $t7, 0($t8)
move $t7, $v0
li $v0, 5
syscall
la $s0, m
sw $t9, 0($s0)
la $t9, r
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, n
sw $t5, 0($s0)
la $t5, s
lw $t1, 0($t5)
move $t1, $v0
li $v0, 5
syscall
la $s0, o
sw $t4, 0($s0)
la $t4, t
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
la $s0, p
sw $t3, 0($s0)
la $t3, u
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $s0, q
sw $t7, 0($s0)
la $t7, v
lw $t8, 0($t7)
move $t8, $v0
li $v0, 5
syscall
la $s0, r
sw $t0, 0($s0)
la $t0, w
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $s0, s
sw $t1, 0($s0)
la $t1, x
lw $t5, 0($t1)
move $t5, $v0
li $v0, 5
syscall
la $s0, t
sw $t2, 0($s0)
la $t2, y
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s0, u
sw $t6, 0($s0)
la $t6, z
lw $t3, 0($t6)
move $t3, $v0
la $s0, v
sw $t8, 0($s0)
la $t7, a
lw $t8, 0($t7)
la $s0, w
sw $t9, 0($s0)
move $t9, $t8
la $t0, ab
sw $t9, 0($t0)
la $t9, b
lw $t0, 0($t9)
la $s0, x
sw $t5, 0($s0)
la $t1, ab
lw $t5, 0($t1)
add $t5, $t5, $t0
la $t1, ab
sw $t5, 0($t1)
la $t5, c
lw $t1, 0($t5)
la $s0, y
sw $t4, 0($s0)
la $t2, ab
lw $t4, 0($t2)
add $t4, $t4, $t1
la $t2, ab
sw $t4, 0($t2)
la $t4, d
lw $t2, 0($t4)
la $s0, z
sw $t3, 0($s0)
la $t6, ab
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ab
sw $t3, 0($t6)
la $t6, e
lw $t3, 0($t6)
la $s0, a
sw $t8, 0($s0)
la $t7, ab
lw $t8, 0($t7)
add $t8, $t8, $t3
la $t7, ab
sw $t8, 0($t7)
la $t8, f
lw $t7, 0($t8)
la $s0, b
sw $t0, 0($s0)
la $t9, ab
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ab
sw $t0, 0($t9)
la $t9, g
lw $t0, 0($t9)
la $s0, c
sw $t1, 0($s0)
la $t5, ab
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ab
sw $t1, 0($t5)
la $t5, h
lw $t1, 0($t5)
la $s0, d
sw $t2, 0($s0)
la $t4, ab
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ab
sw $t2, 0($t4)
la $t4, i
lw $t2, 0($t4)
la $s0, e
sw $t3, 0($s0)
la $t6, ab
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ab
sw $t3, 0($t6)
la $t6, j
lw $t3, 0($t6)
la $s0, f
sw $t7, 0($s0)
la $t8, ab
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ab
sw $t7, 0($t8)
la $t8, k
lw $t7, 0($t8)
la $s0, g
sw $t0, 0($s0)
la $t9, ab
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ab
sw $t0, 0($t9)
la $t9, l
lw $t0, 0($t9)
la $s0, h
sw $t1, 0($s0)
la $t5, ab
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ab
sw $t1, 0($t5)
la $t5, m
lw $t1, 0($t5)
la $s0, i
sw $t2, 0($s0)
la $t4, ab
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ab
sw $t2, 0($t4)
la $t4, n
lw $t2, 0($t4)
la $s0, j
sw $t3, 0($s0)
la $t6, ab
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ab
sw $t3, 0($t6)
la $t6, o
lw $t3, 0($t6)
la $s0, k
sw $t7, 0($s0)
la $t8, ab
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ab
sw $t7, 0($t8)
la $t8, p
lw $t7, 0($t8)
la $s0, l
sw $t0, 0($s0)
la $t9, ab
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ab
sw $t0, 0($t9)
la $t9, q
lw $t0, 0($t9)
la $s0, m
sw $t1, 0($s0)
la $t5, ab
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ab
sw $t1, 0($t5)
la $t5, r
lw $t1, 0($t5)
la $s0, n
sw $t2, 0($s0)
la $t4, ab
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ab
sw $t2, 0($t4)
la $t4, s
lw $t2, 0($t4)
la $s0, o
sw $t3, 0($s0)
la $t6, ab
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ab
sw $t3, 0($t6)
la $t6, t
lw $t3, 0($t6)
la $s0, p
sw $t7, 0($s0)
la $t8, ab
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ab
sw $t7, 0($t8)
la $t8, u
lw $t7, 0($t8)
la $s0, q
sw $t0, 0($s0)
la $t9, ab
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ab
sw $t0, 0($t9)
la $t9, v
lw $t0, 0($t9)
la $s0, r
sw $t1, 0($s0)
la $t5, ab
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ab
sw $t1, 0($t5)
la $t5, w
lw $t1, 0($t5)
la $s0, s
sw $t2, 0($s0)
la $t4, ab
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ab
sw $t2, 0($t4)
la $t4, x
lw $t2, 0($t4)
la $s0, t
sw $t3, 0($s0)
la $t6, ab
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ab
sw $t3, 0($t6)
la $t6, y
lw $t3, 0($t6)
la $s0, u
sw $t7, 0($s0)
la $t8, ab
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ab
sw $t7, 0($t8)
la $t8, z
lw $t7, 0($t8)
la $s0, v
sw $t0, 0($s0)
la $t9, ab
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ab
sw $t0, 0($t9)
la $t9, ab
lw $t0, 0($t9)
la $s0, w
sw $t1, 0($s0)
move $t1, $t0
la $t5, aa
sw $t1, 0($t5)
la $t5, a
lw $t1, 0($t5)
la $s0, x
sw $t2, 0($s0)
move $t2, $t1
la $t4, ac
sw $t2, 0($t4)
la $t4, b
lw $t2, 0($t4)
la $s0, y
sw $t3, 0($s0)
la $t6, ac
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ac
sw $t3, 0($t6)
la $t6, c
lw $t3, 0($t6)
la $s0, z
sw $t7, 0($s0)
la $t8, ac
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ac
sw $t7, 0($t8)
la $t8, d
lw $t7, 0($t8)
la $s0, ab
sw $t0, 0($s0)
la $t9, ac
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ac
sw $t0, 0($t9)
la $t9, e
lw $t0, 0($t9)
la $s0, a
sw $t1, 0($s0)
la $t5, ac
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ac
sw $t1, 0($t5)
la $t5, f
lw $t1, 0($t5)
la $s0, b
sw $t2, 0($s0)
la $t4, ac
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ac
sw $t2, 0($t4)
la $t4, g
lw $t2, 0($t4)
la $s0, c
sw $t3, 0($s0)
la $t6, ac
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ac
sw $t3, 0($t6)
la $t6, h
lw $t3, 0($t6)
la $s0, d
sw $t7, 0($s0)
la $t8, ac
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ac
sw $t7, 0($t8)
la $t8, i
lw $t7, 0($t8)
la $s0, e
sw $t0, 0($s0)
la $t9, ac
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ac
sw $t0, 0($t9)
la $t9, j
lw $t0, 0($t9)
la $s0, f
sw $t1, 0($s0)
la $t5, ac
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ac
sw $t1, 0($t5)
la $t5, k
lw $t1, 0($t5)
la $s0, g
sw $t2, 0($s0)
la $t4, ac
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ac
sw $t2, 0($t4)
la $t4, l
lw $t2, 0($t4)
la $s0, h
sw $t3, 0($s0)
la $t6, ac
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ac
sw $t3, 0($t6)
la $t6, m
lw $t3, 0($t6)
la $s0, i
sw $t7, 0($s0)
la $t8, ac
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ac
sw $t7, 0($t8)
la $t8, n
lw $t7, 0($t8)
la $s0, j
sw $t0, 0($s0)
la $t9, ac
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ac
sw $t0, 0($t9)
la $t9, o
lw $t0, 0($t9)
la $s0, k
sw $t1, 0($s0)
la $t5, ac
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ac
sw $t1, 0($t5)
la $t5, p
lw $t1, 0($t5)
la $s0, l
sw $t2, 0($s0)
la $t4, ac
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ac
sw $t2, 0($t4)
la $t4, q
lw $t2, 0($t4)
la $s0, m
sw $t3, 0($s0)
la $t6, ac
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ac
sw $t3, 0($t6)
la $t6, r
lw $t3, 0($t6)
la $s0, n
sw $t7, 0($s0)
la $t8, ac
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ac
sw $t7, 0($t8)
la $t8, s
lw $t7, 0($t8)
la $s0, o
sw $t0, 0($s0)
la $t9, ac
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ac
sw $t0, 0($t9)
la $t9, t
lw $t0, 0($t9)
la $s0, p
sw $t1, 0($s0)
la $t5, ac
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ac
sw $t1, 0($t5)
la $t5, u
lw $t1, 0($t5)
la $s0, q
sw $t2, 0($s0)
la $t4, ac
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ac
sw $t2, 0($t4)
la $t4, v
lw $t2, 0($t4)
la $s0, r
sw $t3, 0($s0)
la $t6, ac
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ac
sw $t3, 0($t6)
la $t6, w
lw $t3, 0($t6)
la $s0, s
sw $t7, 0($s0)
la $t8, ac
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ac
sw $t7, 0($t8)
la $t8, x
lw $t7, 0($t8)
la $s0, t
sw $t0, 0($s0)
la $t9, ac
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ac
sw $t0, 0($t9)
la $t9, y
lw $t0, 0($t9)
la $s0, u
sw $t1, 0($s0)
la $t5, ac
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ac
sw $t1, 0($t5)
la $t5, z
lw $t1, 0($t5)
la $s0, v
sw $t2, 0($s0)
la $t4, ac
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ac
sw $t2, 0($t4)
la $t4, ac
lw $t2, 0($t4)
la $s0, w
sw $t3, 0($s0)
la $t6, aa
lw $t3, 0($t6)
sub $t3, $t3, $t2
la $t6, aa
sw $t3, 0($t6)
la $t6, a
lw $t3, 0($t6)
la $s0, x
sw $t7, 0($s0)
move $t7, $t3
la $t8, ad
sw $t7, 0($t8)
la $t8, b
lw $t7, 0($t8)
la $s0, y
sw $t0, 0($s0)
la $t9, ad
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ad
sw $t0, 0($t9)
la $t9, c
lw $t0, 0($t9)
la $s0, z
sw $t1, 0($s0)
la $t5, ad
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ad
sw $t1, 0($t5)
la $t5, d
lw $t1, 0($t5)
la $s0, ac
sw $t2, 0($s0)
la $t4, ad
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ad
sw $t2, 0($t4)
la $t4, e
lw $t2, 0($t4)
la $s0, a
sw $t3, 0($s0)
la $t6, ad
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ad
sw $t3, 0($t6)
la $t6, f
lw $t3, 0($t6)
la $s0, b
sw $t7, 0($s0)
la $t8, ad
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ad
sw $t7, 0($t8)
la $t8, g
lw $t7, 0($t8)
la $s0, c
sw $t0, 0($s0)
la $t9, ad
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ad
sw $t0, 0($t9)
la $t9, h
lw $t0, 0($t9)
la $s0, d
sw $t1, 0($s0)
la $t5, ad
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ad
sw $t1, 0($t5)
la $t5, i
lw $t1, 0($t5)
la $s0, e
sw $t2, 0($s0)
la $t4, ad
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ad
sw $t2, 0($t4)
la $t4, j
lw $t2, 0($t4)
la $s0, f
sw $t3, 0($s0)
la $t6, ad
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ad
sw $t3, 0($t6)
la $t6, k
lw $t3, 0($t6)
la $s0, g
sw $t7, 0($s0)
la $t8, ad
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ad
sw $t7, 0($t8)
la $t8, l
lw $t7, 0($t8)
la $s0, h
sw $t0, 0($s0)
la $t9, ad
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ad
sw $t0, 0($t9)
la $t9, m
lw $t0, 0($t9)
la $s0, i
sw $t1, 0($s0)
la $t5, ad
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ad
sw $t1, 0($t5)
la $t5, n
lw $t1, 0($t5)
la $s0, j
sw $t2, 0($s0)
la $t4, ad
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ad
sw $t2, 0($t4)
la $t4, o
lw $t2, 0($t4)
la $s0, k
sw $t3, 0($s0)
la $t6, ad
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ad
sw $t3, 0($t6)
la $t6, p
lw $t3, 0($t6)
la $s0, l
sw $t7, 0($s0)
la $t8, ad
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ad
sw $t7, 0($t8)
la $t8, q
lw $t7, 0($t8)
la $s0, m
sw $t0, 0($s0)
la $t9, ad
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ad
sw $t0, 0($t9)
la $t9, r
lw $t0, 0($t9)
la $s0, n
sw $t1, 0($s0)
la $t5, ad
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ad
sw $t1, 0($t5)
la $t5, s
lw $t1, 0($t5)
la $s0, o
sw $t2, 0($s0)
la $t4, ad
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ad
sw $t2, 0($t4)
la $t4, t
lw $t2, 0($t4)
la $s0, p
sw $t3, 0($s0)
la $t6, ad
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ad
sw $t3, 0($t6)
la $t6, u
lw $t3, 0($t6)
la $s0, q
sw $t7, 0($s0)
la $t8, ad
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ad
sw $t7, 0($t8)
la $t8, v
lw $t7, 0($t8)
la $s0, r
sw $t0, 0($s0)
la $t9, ad
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ad
sw $t0, 0($t9)
la $t9, w
lw $t0, 0($t9)
la $s0, s
sw $t1, 0($s0)
la $t5, ad
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ad
sw $t1, 0($t5)
la $t5, x
lw $t1, 0($t5)
la $s0, t
sw $t2, 0($s0)
la $t4, ad
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ad
sw $t2, 0($t4)
la $t4, y
lw $t2, 0($t4)
la $s0, u
sw $t3, 0($s0)
la $t6, ad
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ad
sw $t3, 0($t6)
la $t6, z
lw $t3, 0($t6)
la $s0, v
sw $t7, 0($s0)
la $t8, ad
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ad
sw $t7, 0($t8)
la $t8, ad
lw $t7, 0($t8)
la $s0, w
sw $t0, 0($s0)
la $t9, aa
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, aa
sw $t0, 0($t9)
la $t9, a
lw $t0, 0($t9)
la $s0, x
sw $t1, 0($s0)
move $t1, $t0
la $t5, ae
sw $t1, 0($t5)
la $t5, b
lw $t1, 0($t5)
la $s0, y
sw $t2, 0($s0)
la $t4, ae
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ae
sw $t2, 0($t4)
la $t4, c
lw $t2, 0($t4)
la $s0, z
sw $t3, 0($s0)
la $t6, ae
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ae
sw $t3, 0($t6)
la $t6, d
lw $t3, 0($t6)
la $s0, ad
sw $t7, 0($s0)
la $t8, ae
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ae
sw $t7, 0($t8)
la $t8, e
lw $t7, 0($t8)
la $s0, a
sw $t0, 0($s0)
la $t9, ae
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ae
sw $t0, 0($t9)
la $t9, f
lw $t0, 0($t9)
la $s0, b
sw $t1, 0($s0)
la $t5, ae
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ae
sw $t1, 0($t5)
la $t5, g
lw $t1, 0($t5)
la $s0, c
sw $t2, 0($s0)
la $t4, ae
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ae
sw $t2, 0($t4)
la $t4, h
lw $t2, 0($t4)
la $s0, d
sw $t3, 0($s0)
la $t6, ae
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ae
sw $t3, 0($t6)
la $t6, i
lw $t3, 0($t6)
la $s0, e
sw $t7, 0($s0)
la $t8, ae
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ae
sw $t7, 0($t8)
la $t8, j
lw $t7, 0($t8)
la $s0, f
sw $t0, 0($s0)
la $t9, ae
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ae
sw $t0, 0($t9)
la $t9, k
lw $t0, 0($t9)
la $s0, g
sw $t1, 0($s0)
la $t5, ae
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ae
sw $t1, 0($t5)
la $t5, l
lw $t1, 0($t5)
la $s0, h
sw $t2, 0($s0)
la $t4, ae
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ae
sw $t2, 0($t4)
la $t4, m
lw $t2, 0($t4)
la $s0, i
sw $t3, 0($s0)
la $t6, ae
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ae
sw $t3, 0($t6)
la $t6, n
lw $t3, 0($t6)
la $s0, j
sw $t7, 0($s0)
la $t8, ae
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ae
sw $t7, 0($t8)
la $t8, o
lw $t7, 0($t8)
la $s0, k
sw $t0, 0($s0)
la $t9, ae
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ae
sw $t0, 0($t9)
la $t9, p
lw $t0, 0($t9)
la $s0, l
sw $t1, 0($s0)
la $t5, ae
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ae
sw $t1, 0($t5)
la $t5, q
lw $t1, 0($t5)
la $s0, m
sw $t2, 0($s0)
la $t4, ae
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ae
sw $t2, 0($t4)
la $t4, r
lw $t2, 0($t4)
la $s0, n
sw $t3, 0($s0)
la $t6, ae
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ae
sw $t3, 0($t6)
la $t6, s
lw $t3, 0($t6)
la $s0, o
sw $t7, 0($s0)
la $t8, ae
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ae
sw $t7, 0($t8)
la $t8, t
lw $t7, 0($t8)
la $s0, p
sw $t0, 0($s0)
la $t9, ae
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ae
sw $t0, 0($t9)
la $t9, u
lw $t0, 0($t9)
la $s0, q
sw $t1, 0($s0)
la $t5, ae
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ae
sw $t1, 0($t5)
la $t5, v
lw $t1, 0($t5)
la $s0, r
sw $t2, 0($s0)
la $t4, ae
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ae
sw $t2, 0($t4)
la $t4, w
lw $t2, 0($t4)
la $s0, s
sw $t3, 0($s0)
la $t6, ae
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ae
sw $t3, 0($t6)
la $t6, x
lw $t3, 0($t6)
la $s0, t
sw $t7, 0($s0)
la $t8, ae
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ae
sw $t7, 0($t8)
la $t8, y
lw $t7, 0($t8)
la $s0, u
sw $t0, 0($s0)
la $t9, ae
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ae
sw $t0, 0($t9)
la $t9, z
lw $t0, 0($t9)
la $s0, v
sw $t1, 0($s0)
la $t5, ae
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ae
sw $t1, 0($t5)
la $t5, ae
lw $t1, 0($t5)
la $s0, w
sw $t2, 0($s0)
la $t4, aa
lw $t2, 0($t4)
sub $t2, $t2, $t1
la $t4, aa
sw $t2, 0($t4)
la $t4, a
lw $t2, 0($t4)
la $s0, x
sw $t3, 0($s0)
move $t3, $t2
la $t6, af
sw $t3, 0($t6)
la $t6, b
lw $t3, 0($t6)
la $s0, y
sw $t7, 0($s0)
la $t8, af
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, af
sw $t7, 0($t8)
la $t8, c
lw $t7, 0($t8)
la $s0, z
sw $t0, 0($s0)
la $t9, af
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, af
sw $t0, 0($t9)
la $t9, d
lw $t0, 0($t9)
la $s0, ae
sw $t1, 0($s0)
la $t5, af
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, af
sw $t1, 0($t5)
la $t5, e
lw $t1, 0($t5)
la $s0, a
sw $t2, 0($s0)
la $t4, af
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, af
sw $t2, 0($t4)
la $t4, f
lw $t2, 0($t4)
la $s0, b
sw $t3, 0($s0)
la $t6, af
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, af
sw $t3, 0($t6)
la $t6, g
lw $t3, 0($t6)
la $s0, c
sw $t7, 0($s0)
la $t8, af
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, af
sw $t7, 0($t8)
la $t8, h
lw $t7, 0($t8)
la $s0, d
sw $t0, 0($s0)
la $t9, af
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, af
sw $t0, 0($t9)
la $t9, i
lw $t0, 0($t9)
la $s0, e
sw $t1, 0($s0)
la $t5, af
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, af
sw $t1, 0($t5)
la $t5, j
lw $t1, 0($t5)
la $s0, f
sw $t2, 0($s0)
la $t4, af
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, af
sw $t2, 0($t4)
la $t4, k
lw $t2, 0($t4)
la $s0, g
sw $t3, 0($s0)
la $t6, af
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, af
sw $t3, 0($t6)
la $t6, l
lw $t3, 0($t6)
la $s0, h
sw $t7, 0($s0)
la $t8, af
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, af
sw $t7, 0($t8)
la $t8, m
lw $t7, 0($t8)
la $s0, i
sw $t0, 0($s0)
la $t9, af
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, af
sw $t0, 0($t9)
la $t9, n
lw $t0, 0($t9)
la $s0, j
sw $t1, 0($s0)
la $t5, af
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, af
sw $t1, 0($t5)
la $t5, o
lw $t1, 0($t5)
la $s0, k
sw $t2, 0($s0)
la $t4, af
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, af
sw $t2, 0($t4)
la $t4, p
lw $t2, 0($t4)
la $s0, l
sw $t3, 0($s0)
la $t6, af
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, af
sw $t3, 0($t6)
la $t6, q
lw $t3, 0($t6)
la $s0, m
sw $t7, 0($s0)
la $t8, af
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, af
sw $t7, 0($t8)
la $t8, r
lw $t7, 0($t8)
la $s0, n
sw $t0, 0($s0)
la $t9, af
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, af
sw $t0, 0($t9)
la $t9, s
lw $t0, 0($t9)
la $s0, o
sw $t1, 0($s0)
la $t5, af
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, af
sw $t1, 0($t5)
la $t5, t
lw $t1, 0($t5)
la $s0, p
sw $t2, 0($s0)
la $t4, af
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, af
sw $t2, 0($t4)
la $t4, u
lw $t2, 0($t4)
la $s0, q
sw $t3, 0($s0)
la $t6, af
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, af
sw $t3, 0($t6)
la $t6, v
lw $t3, 0($t6)
la $s0, r
sw $t7, 0($s0)
la $t8, af
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, af
sw $t7, 0($t8)
la $t8, w
lw $t7, 0($t8)
la $s0, s
sw $t0, 0($s0)
la $t9, af
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, af
sw $t0, 0($t9)
la $t9, x
lw $t0, 0($t9)
la $s0, t
sw $t1, 0($s0)
la $t5, af
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, af
sw $t1, 0($t5)
la $t5, y
lw $t1, 0($t5)
la $s0, u
sw $t2, 0($s0)
la $t4, af
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, af
sw $t2, 0($t4)
la $t4, z
lw $t2, 0($t4)
la $s0, v
sw $t3, 0($s0)
la $t6, af
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, af
sw $t3, 0($t6)
la $t6, af
lw $t3, 0($t6)
la $s0, w
sw $t7, 0($s0)
la $t8, aa
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, aa
sw $t7, 0($t8)
la $t8, a
lw $t7, 0($t8)
la $s0, x
sw $t0, 0($s0)
move $t0, $t7
la $t9, ag
sw $t0, 0($t9)
la $t9, b
lw $t0, 0($t9)
la $s0, y
sw $t1, 0($s0)
la $t5, ag
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ag
sw $t1, 0($t5)
la $t5, c
lw $t1, 0($t5)
la $s0, z
sw $t2, 0($s0)
la $t4, ag
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ag
sw $t2, 0($t4)
la $t4, d
lw $t2, 0($t4)
la $s0, af
sw $t3, 0($s0)
la $t6, ag
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ag
sw $t3, 0($t6)
la $t6, e
lw $t3, 0($t6)
la $s0, a
sw $t7, 0($s0)
la $t8, ag
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ag
sw $t7, 0($t8)
la $t8, f
lw $t7, 0($t8)
la $s0, b
sw $t0, 0($s0)
la $t9, ag
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ag
sw $t0, 0($t9)
la $t9, g
lw $t0, 0($t9)
la $s0, c
sw $t1, 0($s0)
la $t5, ag
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ag
sw $t1, 0($t5)
la $t5, h
lw $t1, 0($t5)
la $s0, d
sw $t2, 0($s0)
la $t4, ag
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ag
sw $t2, 0($t4)
la $t4, i
lw $t2, 0($t4)
la $s0, e
sw $t3, 0($s0)
la $t6, ag
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ag
sw $t3, 0($t6)
la $t6, j
lw $t3, 0($t6)
la $s0, f
sw $t7, 0($s0)
la $t8, ag
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ag
sw $t7, 0($t8)
la $t8, k
lw $t7, 0($t8)
la $s0, g
sw $t0, 0($s0)
la $t9, ag
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ag
sw $t0, 0($t9)
la $t9, l
lw $t0, 0($t9)
la $s0, h
sw $t1, 0($s0)
la $t5, ag
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ag
sw $t1, 0($t5)
la $t5, m
lw $t1, 0($t5)
la $s0, i
sw $t2, 0($s0)
la $t4, ag
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ag
sw $t2, 0($t4)
la $t4, n
lw $t2, 0($t4)
la $s0, j
sw $t3, 0($s0)
la $t6, ag
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ag
sw $t3, 0($t6)
la $t6, o
lw $t3, 0($t6)
la $s0, k
sw $t7, 0($s0)
la $t8, ag
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ag
sw $t7, 0($t8)
la $t8, p
lw $t7, 0($t8)
la $s0, l
sw $t0, 0($s0)
la $t9, ag
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ag
sw $t0, 0($t9)
la $t9, q
lw $t0, 0($t9)
la $s0, m
sw $t1, 0($s0)
la $t5, ag
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ag
sw $t1, 0($t5)
la $t5, r
lw $t1, 0($t5)
la $s0, n
sw $t2, 0($s0)
la $t4, ag
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ag
sw $t2, 0($t4)
la $t4, s
lw $t2, 0($t4)
la $s0, o
sw $t3, 0($s0)
la $t6, ag
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ag
sw $t3, 0($t6)
la $t6, t
lw $t3, 0($t6)
la $s0, p
sw $t7, 0($s0)
la $t8, ag
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ag
sw $t7, 0($t8)
la $t8, u
lw $t7, 0($t8)
la $s0, q
sw $t0, 0($s0)
la $t9, ag
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ag
sw $t0, 0($t9)
la $t9, v
lw $t0, 0($t9)
la $s0, r
sw $t1, 0($s0)
la $t5, ag
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ag
sw $t1, 0($t5)
la $t5, w
lw $t1, 0($t5)
la $s0, s
sw $t2, 0($s0)
la $t4, ag
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ag
sw $t2, 0($t4)
la $t4, x
lw $t2, 0($t4)
la $s0, t
sw $t3, 0($s0)
la $t6, ag
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ag
sw $t3, 0($t6)
la $t6, y
lw $t3, 0($t6)
la $s0, u
sw $t7, 0($s0)
la $t8, ag
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ag
sw $t7, 0($t8)
la $t8, z
lw $t7, 0($t8)
la $s0, v
sw $t0, 0($s0)
la $t9, ag
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ag
sw $t0, 0($t9)
la $t9, ag
lw $t0, 0($t9)
la $s0, w
sw $t1, 0($s0)
la $t5, aa
lw $t1, 0($t5)
sub $t1, $t1, $t0
la $t5, aa
sw $t1, 0($t5)
la $t5, a
lw $t1, 0($t5)
la $s0, x
sw $t2, 0($s0)
move $t2, $t1
la $t4, ah
sw $t2, 0($t4)
la $t4, b
lw $t2, 0($t4)
la $s0, y
sw $t3, 0($s0)
la $t6, ah
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ah
sw $t3, 0($t6)
la $t6, c
lw $t3, 0($t6)
la $s0, z
sw $t7, 0($s0)
la $t8, ah
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ah
sw $t7, 0($t8)
la $t8, d
lw $t7, 0($t8)
la $s0, ag
sw $t0, 0($s0)
la $t9, ah
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ah
sw $t0, 0($t9)
la $t9, e
lw $t0, 0($t9)
la $s0, a
sw $t1, 0($s0)
la $t5, ah
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ah
sw $t1, 0($t5)
la $t5, f
lw $t1, 0($t5)
la $s0, b
sw $t2, 0($s0)
la $t4, ah
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ah
sw $t2, 0($t4)
la $t4, g
lw $t2, 0($t4)
la $s0, c
sw $t3, 0($s0)
la $t6, ah
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ah
sw $t3, 0($t6)
la $t6, h
lw $t3, 0($t6)
la $s0, d
sw $t7, 0($s0)
la $t8, ah
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ah
sw $t7, 0($t8)
la $t8, i
lw $t7, 0($t8)
la $s0, e
sw $t0, 0($s0)
la $t9, ah
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ah
sw $t0, 0($t9)
la $t9, j
lw $t0, 0($t9)
la $s0, f
sw $t1, 0($s0)
la $t5, ah
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ah
sw $t1, 0($t5)
la $t5, k
lw $t1, 0($t5)
la $s0, g
sw $t2, 0($s0)
la $t4, ah
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ah
sw $t2, 0($t4)
la $t4, l
lw $t2, 0($t4)
la $s0, h
sw $t3, 0($s0)
la $t6, ah
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ah
sw $t3, 0($t6)
la $t6, m
lw $t3, 0($t6)
la $s0, i
sw $t7, 0($s0)
la $t8, ah
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ah
sw $t7, 0($t8)
la $t8, n
lw $t7, 0($t8)
la $s0, j
sw $t0, 0($s0)
la $t9, ah
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ah
sw $t0, 0($t9)
la $t9, o
lw $t0, 0($t9)
la $s0, k
sw $t1, 0($s0)
la $t5, ah
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ah
sw $t1, 0($t5)
la $t5, p
lw $t1, 0($t5)
la $s0, l
sw $t2, 0($s0)
la $t4, ah
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ah
sw $t2, 0($t4)
la $t4, q
lw $t2, 0($t4)
la $s0, m
sw $t3, 0($s0)
la $t6, ah
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ah
sw $t3, 0($t6)
la $t6, r
lw $t3, 0($t6)
la $s0, n
sw $t7, 0($s0)
la $t8, ah
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ah
sw $t7, 0($t8)
la $t8, s
lw $t7, 0($t8)
la $s0, o
sw $t0, 0($s0)
la $t9, ah
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ah
sw $t0, 0($t9)
la $t9, t
lw $t0, 0($t9)
la $s0, p
sw $t1, 0($s0)
la $t5, ah
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ah
sw $t1, 0($t5)
la $t5, u
lw $t1, 0($t5)
la $s0, q
sw $t2, 0($s0)
la $t4, ah
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ah
sw $t2, 0($t4)
la $t4, v
lw $t2, 0($t4)
la $s0, r
sw $t3, 0($s0)
la $t6, ah
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, ah
sw $t3, 0($t6)
la $t6, w
lw $t3, 0($t6)
la $s0, s
sw $t7, 0($s0)
la $t8, ah
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ah
sw $t7, 0($t8)
la $t8, x
lw $t7, 0($t8)
la $s0, t
sw $t0, 0($s0)
la $t9, ah
lw $t0, 0($t9)
add $t0, $t0, $t7
la $t9, ah
sw $t0, 0($t9)
la $t9, y
lw $t0, 0($t9)
la $s0, u
sw $t1, 0($s0)
la $t5, ah
lw $t1, 0($t5)
add $t1, $t1, $t0
la $t5, ah
sw $t1, 0($t5)
la $t5, z
lw $t1, 0($t5)
la $s0, v
sw $t2, 0($s0)
la $t4, ah
lw $t2, 0($t4)
add $t2, $t2, $t1
la $t4, ah
sw $t2, 0($t4)
la $t4, ah
lw $t2, 0($t4)
la $s0, w
sw $t3, 0($s0)
la $t6, aa
lw $t3, 0($t6)
add $t3, $t3, $t2
la $t6, aa
sw $t3, 0($t6)
la $t6, aa
lw $t3, 0($t6)
li $v0, 1
move $a0, $t3
syscall
