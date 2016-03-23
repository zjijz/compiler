.data
i:	.word	0	# i in original
ae:	.word	0	# temp_e in original
j:	.word	0	# j in original
d:	.word	0	# d in original
o:	.word	0	# o in original
ag:	.word	0	# temp_g in original
z:	.word	0	# z in original
aa:	.word	0	# temp_a in original
l:	.word	0	# l in original
p:	.word	0	# p in original
q:	.word	0	# q in original
t:	.word	0	# t in original
v:	.word	0	# v in original
y:	.word	0	# y in original
r:	.word	0	# r in original
af:	.word	0	# temp_f in original
s:	.word	0	# s in original
ad:	.word	0	# temp_d in original
b:	.word	0	# b in original
a:	.word	0	# a in original
ab:	.word	0	# temp_b in original
ah:	.word	0	# temp_h in original
g:	.word	0	# g in original
e:	.word	0	# e in original
n:	.word	0	# n in original
f:	.word	0	# f in original
m:	.word	0	# m in original
c:	.word	0	# c in original
x:	.word	0	# x in original
ac:	.word	0	# temp_c in original
w:	.word	0	# w in original
k:	.word	0	# k in original
u:	.word	0	# u in original
h:	.word	0	# h in original
.text
li $v0, 5
syscall
la $t5, a
lw $t0, 0($t5)
move $t0, $v0
li $v0, 5
syscall
la $t2, b
lw $t9, 0($t2)
move $t9, $v0
li $v0, 5
syscall
la $t4, c
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $t1, d
lw $t6, 0($t1)
move $t6, $v0
li $v0, 5
syscall
la $t8, e
lw $t7, 0($t8)
move $t7, $v0
li $v0, 5
syscall
la $s0, a
sw $t0, 0($s0)
la $t0, f
lw $t5, 0($t0)
move $t5, $v0
li $v0, 5
syscall
la $s0, b
sw $t9, 0($s0)
la $t9, g
lw $t2, 0($t9)
move $t2, $v0
li $v0, 5
syscall
la $s0, c
sw $t3, 0($s0)
la $t3, h
lw $t4, 0($t3)
move $t4, $v0
li $v0, 5
syscall
la $s0, d
sw $t6, 0($s0)
la $t6, i
lw $t1, 0($t6)
move $t1, $v0
li $v0, 5
syscall
la $s0, e
sw $t7, 0($s0)
la $t7, j
lw $t8, 0($t7)
move $t8, $v0
li $v0, 5
syscall
la $s0, f
sw $t5, 0($s0)
la $t5, k
lw $t0, 0($t5)
move $t0, $v0
li $v0, 5
syscall
la $s0, g
sw $t2, 0($s0)
la $t2, l
lw $t9, 0($t2)
move $t9, $v0
li $v0, 5
syscall
la $s0, h
sw $t4, 0($s0)
la $t4, m
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $s0, i
sw $t1, 0($s0)
la $t1, n
lw $t6, 0($t1)
move $t6, $v0
li $v0, 5
syscall
la $s0, j
sw $t8, 0($s0)
la $t8, o
lw $t7, 0($t8)
move $t7, $v0
li $v0, 5
syscall
la $s0, k
sw $t0, 0($s0)
la $t0, p
lw $t5, 0($t0)
move $t5, $v0
li $v0, 5
syscall
la $s0, l
sw $t9, 0($s0)
la $t9, q
lw $t2, 0($t9)
move $t2, $v0
li $v0, 5
syscall
la $s0, m
sw $t3, 0($s0)
la $t3, r
lw $t4, 0($t3)
move $t4, $v0
li $v0, 5
syscall
la $s0, n
sw $t6, 0($s0)
la $t6, s
lw $t1, 0($t6)
move $t1, $v0
li $v0, 5
syscall
la $s0, o
sw $t7, 0($s0)
la $t7, t
lw $t8, 0($t7)
move $t8, $v0
li $v0, 5
syscall
la $s0, p
sw $t5, 0($s0)
la $t5, u
lw $t0, 0($t5)
move $t0, $v0
li $v0, 5
syscall
la $s0, q
sw $t2, 0($s0)
la $t2, v
lw $t9, 0($t2)
move $t9, $v0
li $v0, 5
syscall
la $s0, r
sw $t4, 0($s0)
la $t4, w
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $s0, s
sw $t1, 0($s0)
la $t1, x
lw $t6, 0($t1)
move $t6, $v0
li $v0, 5
syscall
la $s0, t
sw $t8, 0($s0)
la $t8, y
lw $t7, 0($t8)
move $t7, $v0
li $v0, 5
syscall
la $s0, u
sw $t0, 0($s0)
la $t0, z
lw $t5, 0($t0)
move $t5, $v0
la $s0, v
sw $t9, 0($s0)
la $t2, a
lw $t9, 0($t2)
la $s0, w
sw $t3, 0($s0)
move $t3, $t9
la $t4, ab
sw $t3, 0($t4)
la $t3, b
lw $t4, 0($t3)
la $s0, x
sw $t6, 0($s0)
la $t1, ab
lw $t6, 0($t1)
add $t6, $t6, $t4
la $t1, ab
sw $t6, 0($t1)
la $t6, c
lw $t1, 0($t6)
la $s0, y
sw $t7, 0($s0)
la $t8, ab
lw $t7, 0($t8)
add $t7, $t7, $t1
la $t8, ab
sw $t7, 0($t8)
la $t7, d
lw $t8, 0($t7)
la $s0, z
sw $t5, 0($s0)
la $t0, ab
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ab
sw $t5, 0($t0)
la $t0, e
lw $t5, 0($t0)
la $s0, a
sw $t9, 0($s0)
la $t2, ab
lw $t9, 0($t2)
add $t9, $t9, $t5
la $t2, ab
sw $t9, 0($t2)
la $t9, f
lw $t2, 0($t9)
la $s0, b
sw $t4, 0($s0)
la $t3, ab
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ab
sw $t4, 0($t3)
la $t3, g
lw $t4, 0($t3)
la $s0, c
sw $t1, 0($s0)
la $t6, ab
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ab
sw $t1, 0($t6)
la $t6, h
lw $t1, 0($t6)
la $s0, d
sw $t8, 0($s0)
la $t7, ab
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ab
sw $t8, 0($t7)
la $t7, i
lw $t8, 0($t7)
la $s0, e
sw $t5, 0($s0)
la $t0, ab
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ab
sw $t5, 0($t0)
la $t0, j
lw $t5, 0($t0)
la $s0, f
sw $t2, 0($s0)
la $t9, ab
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ab
sw $t2, 0($t9)
la $t9, k
lw $t2, 0($t9)
la $s0, g
sw $t4, 0($s0)
la $t3, ab
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ab
sw $t4, 0($t3)
la $t3, l
lw $t4, 0($t3)
la $s0, h
sw $t1, 0($s0)
la $t6, ab
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ab
sw $t1, 0($t6)
la $t6, m
lw $t1, 0($t6)
la $s0, i
sw $t8, 0($s0)
la $t7, ab
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ab
sw $t8, 0($t7)
la $t7, n
lw $t8, 0($t7)
la $s0, j
sw $t5, 0($s0)
la $t0, ab
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ab
sw $t5, 0($t0)
la $t0, o
lw $t5, 0($t0)
la $s0, k
sw $t2, 0($s0)
la $t9, ab
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ab
sw $t2, 0($t9)
la $t9, p
lw $t2, 0($t9)
la $s0, l
sw $t4, 0($s0)
la $t3, ab
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ab
sw $t4, 0($t3)
la $t3, q
lw $t4, 0($t3)
la $s0, m
sw $t1, 0($s0)
la $t6, ab
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ab
sw $t1, 0($t6)
la $t6, r
lw $t1, 0($t6)
la $s0, n
sw $t8, 0($s0)
la $t7, ab
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ab
sw $t8, 0($t7)
la $t7, s
lw $t8, 0($t7)
la $s0, o
sw $t5, 0($s0)
la $t0, ab
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ab
sw $t5, 0($t0)
la $t0, t
lw $t5, 0($t0)
la $s0, p
sw $t2, 0($s0)
la $t9, ab
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ab
sw $t2, 0($t9)
la $t9, u
lw $t2, 0($t9)
la $s0, q
sw $t4, 0($s0)
la $t3, ab
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ab
sw $t4, 0($t3)
la $t3, v
lw $t4, 0($t3)
la $s0, r
sw $t1, 0($s0)
la $t6, ab
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ab
sw $t1, 0($t6)
la $t6, w
lw $t1, 0($t6)
la $s0, s
sw $t8, 0($s0)
la $t7, ab
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ab
sw $t8, 0($t7)
la $t7, x
lw $t8, 0($t7)
la $s0, t
sw $t5, 0($s0)
la $t0, ab
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ab
sw $t5, 0($t0)
la $t0, y
lw $t5, 0($t0)
la $s0, u
sw $t2, 0($s0)
la $t9, ab
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ab
sw $t2, 0($t9)
la $t9, z
lw $t2, 0($t9)
la $s0, v
sw $t4, 0($s0)
la $t3, ab
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ab
sw $t4, 0($t3)
la $t3, ab
lw $t4, 0($t3)
la $s0, w
sw $t1, 0($s0)
move $t1, $t4
la $t6, aa
sw $t1, 0($t6)
la $t6, a
lw $t1, 0($t6)
la $s0, x
sw $t8, 0($s0)
move $t8, $t1
la $t7, ac
sw $t8, 0($t7)
la $t7, b
lw $t8, 0($t7)
la $s0, y
sw $t5, 0($s0)
la $t0, ac
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ac
sw $t5, 0($t0)
la $t0, c
lw $t5, 0($t0)
la $s0, z
sw $t2, 0($s0)
la $t9, ac
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ac
sw $t2, 0($t9)
la $t9, d
lw $t2, 0($t9)
la $s0, ab
sw $t4, 0($s0)
la $t3, ac
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ac
sw $t4, 0($t3)
la $t3, e
lw $t4, 0($t3)
la $s0, a
sw $t1, 0($s0)
la $t6, ac
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ac
sw $t1, 0($t6)
la $t6, f
lw $t1, 0($t6)
la $s0, b
sw $t8, 0($s0)
la $t7, ac
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ac
sw $t8, 0($t7)
la $t7, g
lw $t8, 0($t7)
la $s0, c
sw $t5, 0($s0)
la $t0, ac
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ac
sw $t5, 0($t0)
la $t0, h
lw $t5, 0($t0)
la $s0, d
sw $t2, 0($s0)
la $t9, ac
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ac
sw $t2, 0($t9)
la $t9, i
lw $t2, 0($t9)
la $s0, e
sw $t4, 0($s0)
la $t3, ac
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ac
sw $t4, 0($t3)
la $t3, j
lw $t4, 0($t3)
la $s0, f
sw $t1, 0($s0)
la $t6, ac
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ac
sw $t1, 0($t6)
la $t6, k
lw $t1, 0($t6)
la $s0, g
sw $t8, 0($s0)
la $t7, ac
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ac
sw $t8, 0($t7)
la $t7, l
lw $t8, 0($t7)
la $s0, h
sw $t5, 0($s0)
la $t0, ac
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ac
sw $t5, 0($t0)
la $t0, m
lw $t5, 0($t0)
la $s0, i
sw $t2, 0($s0)
la $t9, ac
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ac
sw $t2, 0($t9)
la $t9, n
lw $t2, 0($t9)
la $s0, j
sw $t4, 0($s0)
la $t3, ac
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ac
sw $t4, 0($t3)
la $t3, o
lw $t4, 0($t3)
la $s0, k
sw $t1, 0($s0)
la $t6, ac
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ac
sw $t1, 0($t6)
la $t6, p
lw $t1, 0($t6)
la $s0, l
sw $t8, 0($s0)
la $t7, ac
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ac
sw $t8, 0($t7)
la $t7, q
lw $t8, 0($t7)
la $s0, m
sw $t5, 0($s0)
la $t0, ac
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ac
sw $t5, 0($t0)
la $t0, r
lw $t5, 0($t0)
la $s0, n
sw $t2, 0($s0)
la $t9, ac
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ac
sw $t2, 0($t9)
la $t9, s
lw $t2, 0($t9)
la $s0, o
sw $t4, 0($s0)
la $t3, ac
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ac
sw $t4, 0($t3)
la $t3, t
lw $t4, 0($t3)
la $s0, p
sw $t1, 0($s0)
la $t6, ac
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ac
sw $t1, 0($t6)
la $t6, u
lw $t1, 0($t6)
la $s0, q
sw $t8, 0($s0)
la $t7, ac
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ac
sw $t8, 0($t7)
la $t7, v
lw $t8, 0($t7)
la $s0, r
sw $t5, 0($s0)
la $t0, ac
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ac
sw $t5, 0($t0)
la $t0, w
lw $t5, 0($t0)
la $s0, s
sw $t2, 0($s0)
la $t9, ac
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ac
sw $t2, 0($t9)
la $t9, x
lw $t2, 0($t9)
la $s0, t
sw $t4, 0($s0)
la $t3, ac
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ac
sw $t4, 0($t3)
la $t3, y
lw $t4, 0($t3)
la $s0, u
sw $t1, 0($s0)
la $t6, ac
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ac
sw $t1, 0($t6)
la $t6, z
lw $t1, 0($t6)
la $s0, v
sw $t8, 0($s0)
la $t7, ac
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ac
sw $t8, 0($t7)
la $t7, ac
lw $t8, 0($t7)
la $s0, w
sw $t5, 0($s0)
la $t0, aa
lw $t5, 0($t0)
sub $t5, $t5, $t8
la $t0, aa
sw $t5, 0($t0)
la $t0, a
lw $t5, 0($t0)
la $s0, x
sw $t2, 0($s0)
move $t2, $t5
la $t9, ad
sw $t2, 0($t9)
la $t9, b
lw $t2, 0($t9)
la $s0, y
sw $t4, 0($s0)
la $t3, ad
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ad
sw $t4, 0($t3)
la $t3, c
lw $t4, 0($t3)
la $s0, z
sw $t1, 0($s0)
la $t6, ad
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ad
sw $t1, 0($t6)
la $t6, d
lw $t1, 0($t6)
la $s0, ac
sw $t8, 0($s0)
la $t7, ad
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ad
sw $t8, 0($t7)
la $t7, e
lw $t8, 0($t7)
la $s0, a
sw $t5, 0($s0)
la $t0, ad
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ad
sw $t5, 0($t0)
la $t0, f
lw $t5, 0($t0)
la $s0, b
sw $t2, 0($s0)
la $t9, ad
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ad
sw $t2, 0($t9)
la $t9, g
lw $t2, 0($t9)
la $s0, c
sw $t4, 0($s0)
la $t3, ad
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ad
sw $t4, 0($t3)
la $t3, h
lw $t4, 0($t3)
la $s0, d
sw $t1, 0($s0)
la $t6, ad
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ad
sw $t1, 0($t6)
la $t6, i
lw $t1, 0($t6)
la $s0, e
sw $t8, 0($s0)
la $t7, ad
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ad
sw $t8, 0($t7)
la $t7, j
lw $t8, 0($t7)
la $s0, f
sw $t5, 0($s0)
la $t0, ad
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ad
sw $t5, 0($t0)
la $t0, k
lw $t5, 0($t0)
la $s0, g
sw $t2, 0($s0)
la $t9, ad
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ad
sw $t2, 0($t9)
la $t9, l
lw $t2, 0($t9)
la $s0, h
sw $t4, 0($s0)
la $t3, ad
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ad
sw $t4, 0($t3)
la $t3, m
lw $t4, 0($t3)
la $s0, i
sw $t1, 0($s0)
la $t6, ad
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ad
sw $t1, 0($t6)
la $t6, n
lw $t1, 0($t6)
la $s0, j
sw $t8, 0($s0)
la $t7, ad
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ad
sw $t8, 0($t7)
la $t7, o
lw $t8, 0($t7)
la $s0, k
sw $t5, 0($s0)
la $t0, ad
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ad
sw $t5, 0($t0)
la $t0, p
lw $t5, 0($t0)
la $s0, l
sw $t2, 0($s0)
la $t9, ad
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ad
sw $t2, 0($t9)
la $t9, q
lw $t2, 0($t9)
la $s0, m
sw $t4, 0($s0)
la $t3, ad
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ad
sw $t4, 0($t3)
la $t3, r
lw $t4, 0($t3)
la $s0, n
sw $t1, 0($s0)
la $t6, ad
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ad
sw $t1, 0($t6)
la $t6, s
lw $t1, 0($t6)
la $s0, o
sw $t8, 0($s0)
la $t7, ad
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ad
sw $t8, 0($t7)
la $t7, t
lw $t8, 0($t7)
la $s0, p
sw $t5, 0($s0)
la $t0, ad
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ad
sw $t5, 0($t0)
la $t0, u
lw $t5, 0($t0)
la $s0, q
sw $t2, 0($s0)
la $t9, ad
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ad
sw $t2, 0($t9)
la $t9, v
lw $t2, 0($t9)
la $s0, r
sw $t4, 0($s0)
la $t3, ad
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ad
sw $t4, 0($t3)
la $t3, w
lw $t4, 0($t3)
la $s0, s
sw $t1, 0($s0)
la $t6, ad
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ad
sw $t1, 0($t6)
la $t6, x
lw $t1, 0($t6)
la $s0, t
sw $t8, 0($s0)
la $t7, ad
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ad
sw $t8, 0($t7)
la $t7, y
lw $t8, 0($t7)
la $s0, u
sw $t5, 0($s0)
la $t0, ad
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ad
sw $t5, 0($t0)
la $t0, z
lw $t5, 0($t0)
la $s0, v
sw $t2, 0($s0)
la $t9, ad
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ad
sw $t2, 0($t9)
la $t9, ad
lw $t2, 0($t9)
la $s0, w
sw $t4, 0($s0)
la $t3, aa
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, aa
sw $t4, 0($t3)
la $t3, a
lw $t4, 0($t3)
la $s0, x
sw $t1, 0($s0)
move $t1, $t4
la $t6, ae
sw $t1, 0($t6)
la $t6, b
lw $t1, 0($t6)
la $s0, y
sw $t8, 0($s0)
la $t7, ae
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ae
sw $t8, 0($t7)
la $t7, c
lw $t8, 0($t7)
la $s0, z
sw $t5, 0($s0)
la $t0, ae
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ae
sw $t5, 0($t0)
la $t0, d
lw $t5, 0($t0)
la $s0, ad
sw $t2, 0($s0)
la $t9, ae
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ae
sw $t2, 0($t9)
la $t9, e
lw $t2, 0($t9)
la $s0, a
sw $t4, 0($s0)
la $t3, ae
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ae
sw $t4, 0($t3)
la $t3, f
lw $t4, 0($t3)
la $s0, b
sw $t1, 0($s0)
la $t6, ae
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ae
sw $t1, 0($t6)
la $t6, g
lw $t1, 0($t6)
la $s0, c
sw $t8, 0($s0)
la $t7, ae
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ae
sw $t8, 0($t7)
la $t7, h
lw $t8, 0($t7)
la $s0, d
sw $t5, 0($s0)
la $t0, ae
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ae
sw $t5, 0($t0)
la $t0, i
lw $t5, 0($t0)
la $s0, e
sw $t2, 0($s0)
la $t9, ae
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ae
sw $t2, 0($t9)
la $t9, j
lw $t2, 0($t9)
la $s0, f
sw $t4, 0($s0)
la $t3, ae
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ae
sw $t4, 0($t3)
la $t3, k
lw $t4, 0($t3)
la $s0, g
sw $t1, 0($s0)
la $t6, ae
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ae
sw $t1, 0($t6)
la $t6, l
lw $t1, 0($t6)
la $s0, h
sw $t8, 0($s0)
la $t7, ae
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ae
sw $t8, 0($t7)
la $t7, m
lw $t8, 0($t7)
la $s0, i
sw $t5, 0($s0)
la $t0, ae
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ae
sw $t5, 0($t0)
la $t0, n
lw $t5, 0($t0)
la $s0, j
sw $t2, 0($s0)
la $t9, ae
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ae
sw $t2, 0($t9)
la $t9, o
lw $t2, 0($t9)
la $s0, k
sw $t4, 0($s0)
la $t3, ae
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ae
sw $t4, 0($t3)
la $t3, p
lw $t4, 0($t3)
la $s0, l
sw $t1, 0($s0)
la $t6, ae
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ae
sw $t1, 0($t6)
la $t6, q
lw $t1, 0($t6)
la $s0, m
sw $t8, 0($s0)
la $t7, ae
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ae
sw $t8, 0($t7)
la $t7, r
lw $t8, 0($t7)
la $s0, n
sw $t5, 0($s0)
la $t0, ae
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ae
sw $t5, 0($t0)
la $t0, s
lw $t5, 0($t0)
la $s0, o
sw $t2, 0($s0)
la $t9, ae
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ae
sw $t2, 0($t9)
la $t9, t
lw $t2, 0($t9)
la $s0, p
sw $t4, 0($s0)
la $t3, ae
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ae
sw $t4, 0($t3)
la $t3, u
lw $t4, 0($t3)
la $s0, q
sw $t1, 0($s0)
la $t6, ae
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ae
sw $t1, 0($t6)
la $t6, v
lw $t1, 0($t6)
la $s0, r
sw $t8, 0($s0)
la $t7, ae
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ae
sw $t8, 0($t7)
la $t7, w
lw $t8, 0($t7)
la $s0, s
sw $t5, 0($s0)
la $t0, ae
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ae
sw $t5, 0($t0)
la $t0, x
lw $t5, 0($t0)
la $s0, t
sw $t2, 0($s0)
la $t9, ae
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ae
sw $t2, 0($t9)
la $t9, y
lw $t2, 0($t9)
la $s0, u
sw $t4, 0($s0)
la $t3, ae
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ae
sw $t4, 0($t3)
la $t3, z
lw $t4, 0($t3)
la $s0, v
sw $t1, 0($s0)
la $t6, ae
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ae
sw $t1, 0($t6)
la $t6, ae
lw $t1, 0($t6)
la $s0, w
sw $t8, 0($s0)
la $t7, aa
lw $t8, 0($t7)
sub $t8, $t8, $t1
la $t7, aa
sw $t8, 0($t7)
la $t7, a
lw $t8, 0($t7)
la $s0, x
sw $t5, 0($s0)
move $t5, $t8
la $t0, af
sw $t5, 0($t0)
la $t0, b
lw $t5, 0($t0)
la $s0, y
sw $t2, 0($s0)
la $t9, af
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, af
sw $t2, 0($t9)
la $t9, c
lw $t2, 0($t9)
la $s0, z
sw $t4, 0($s0)
la $t3, af
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, af
sw $t4, 0($t3)
la $t3, d
lw $t4, 0($t3)
la $s0, ae
sw $t1, 0($s0)
la $t6, af
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, af
sw $t1, 0($t6)
la $t6, e
lw $t1, 0($t6)
la $s0, a
sw $t8, 0($s0)
la $t7, af
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, af
sw $t8, 0($t7)
la $t7, f
lw $t8, 0($t7)
la $s0, b
sw $t5, 0($s0)
la $t0, af
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, af
sw $t5, 0($t0)
la $t0, g
lw $t5, 0($t0)
la $s0, c
sw $t2, 0($s0)
la $t9, af
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, af
sw $t2, 0($t9)
la $t9, h
lw $t2, 0($t9)
la $s0, d
sw $t4, 0($s0)
la $t3, af
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, af
sw $t4, 0($t3)
la $t3, i
lw $t4, 0($t3)
la $s0, e
sw $t1, 0($s0)
la $t6, af
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, af
sw $t1, 0($t6)
la $t6, j
lw $t1, 0($t6)
la $s0, f
sw $t8, 0($s0)
la $t7, af
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, af
sw $t8, 0($t7)
la $t7, k
lw $t8, 0($t7)
la $s0, g
sw $t5, 0($s0)
la $t0, af
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, af
sw $t5, 0($t0)
la $t0, l
lw $t5, 0($t0)
la $s0, h
sw $t2, 0($s0)
la $t9, af
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, af
sw $t2, 0($t9)
la $t9, m
lw $t2, 0($t9)
la $s0, i
sw $t4, 0($s0)
la $t3, af
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, af
sw $t4, 0($t3)
la $t3, n
lw $t4, 0($t3)
la $s0, j
sw $t1, 0($s0)
la $t6, af
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, af
sw $t1, 0($t6)
la $t6, o
lw $t1, 0($t6)
la $s0, k
sw $t8, 0($s0)
la $t7, af
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, af
sw $t8, 0($t7)
la $t7, p
lw $t8, 0($t7)
la $s0, l
sw $t5, 0($s0)
la $t0, af
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, af
sw $t5, 0($t0)
la $t0, q
lw $t5, 0($t0)
la $s0, m
sw $t2, 0($s0)
la $t9, af
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, af
sw $t2, 0($t9)
la $t9, r
lw $t2, 0($t9)
la $s0, n
sw $t4, 0($s0)
la $t3, af
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, af
sw $t4, 0($t3)
la $t3, s
lw $t4, 0($t3)
la $s0, o
sw $t1, 0($s0)
la $t6, af
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, af
sw $t1, 0($t6)
la $t6, t
lw $t1, 0($t6)
la $s0, p
sw $t8, 0($s0)
la $t7, af
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, af
sw $t8, 0($t7)
la $t7, u
lw $t8, 0($t7)
la $s0, q
sw $t5, 0($s0)
la $t0, af
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, af
sw $t5, 0($t0)
la $t0, v
lw $t5, 0($t0)
la $s0, r
sw $t2, 0($s0)
la $t9, af
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, af
sw $t2, 0($t9)
la $t9, w
lw $t2, 0($t9)
la $s0, s
sw $t4, 0($s0)
la $t3, af
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, af
sw $t4, 0($t3)
la $t3, x
lw $t4, 0($t3)
la $s0, t
sw $t1, 0($s0)
la $t6, af
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, af
sw $t1, 0($t6)
la $t6, y
lw $t1, 0($t6)
la $s0, u
sw $t8, 0($s0)
la $t7, af
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, af
sw $t8, 0($t7)
la $t7, z
lw $t8, 0($t7)
la $s0, v
sw $t5, 0($s0)
la $t0, af
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, af
sw $t5, 0($t0)
la $t0, af
lw $t5, 0($t0)
la $s0, w
sw $t2, 0($s0)
la $t9, aa
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, aa
sw $t2, 0($t9)
la $t9, a
lw $t2, 0($t9)
la $s0, x
sw $t4, 0($s0)
move $t4, $t2
la $t3, ag
sw $t4, 0($t3)
la $t3, b
lw $t4, 0($t3)
la $s0, y
sw $t1, 0($s0)
la $t6, ag
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ag
sw $t1, 0($t6)
la $t6, c
lw $t1, 0($t6)
la $s0, z
sw $t8, 0($s0)
la $t7, ag
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ag
sw $t8, 0($t7)
la $t7, d
lw $t8, 0($t7)
la $s0, af
sw $t5, 0($s0)
la $t0, ag
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ag
sw $t5, 0($t0)
la $t0, e
lw $t5, 0($t0)
la $s0, a
sw $t2, 0($s0)
la $t9, ag
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ag
sw $t2, 0($t9)
la $t9, f
lw $t2, 0($t9)
la $s0, b
sw $t4, 0($s0)
la $t3, ag
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ag
sw $t4, 0($t3)
la $t3, g
lw $t4, 0($t3)
la $s0, c
sw $t1, 0($s0)
la $t6, ag
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ag
sw $t1, 0($t6)
la $t6, h
lw $t1, 0($t6)
la $s0, d
sw $t8, 0($s0)
la $t7, ag
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ag
sw $t8, 0($t7)
la $t7, i
lw $t8, 0($t7)
la $s0, e
sw $t5, 0($s0)
la $t0, ag
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ag
sw $t5, 0($t0)
la $t0, j
lw $t5, 0($t0)
la $s0, f
sw $t2, 0($s0)
la $t9, ag
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ag
sw $t2, 0($t9)
la $t9, k
lw $t2, 0($t9)
la $s0, g
sw $t4, 0($s0)
la $t3, ag
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ag
sw $t4, 0($t3)
la $t3, l
lw $t4, 0($t3)
la $s0, h
sw $t1, 0($s0)
la $t6, ag
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ag
sw $t1, 0($t6)
la $t6, m
lw $t1, 0($t6)
la $s0, i
sw $t8, 0($s0)
la $t7, ag
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ag
sw $t8, 0($t7)
la $t7, n
lw $t8, 0($t7)
la $s0, j
sw $t5, 0($s0)
la $t0, ag
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ag
sw $t5, 0($t0)
la $t0, o
lw $t5, 0($t0)
la $s0, k
sw $t2, 0($s0)
la $t9, ag
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ag
sw $t2, 0($t9)
la $t9, p
lw $t2, 0($t9)
la $s0, l
sw $t4, 0($s0)
la $t3, ag
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ag
sw $t4, 0($t3)
la $t3, q
lw $t4, 0($t3)
la $s0, m
sw $t1, 0($s0)
la $t6, ag
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ag
sw $t1, 0($t6)
la $t6, r
lw $t1, 0($t6)
la $s0, n
sw $t8, 0($s0)
la $t7, ag
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ag
sw $t8, 0($t7)
la $t7, s
lw $t8, 0($t7)
la $s0, o
sw $t5, 0($s0)
la $t0, ag
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ag
sw $t5, 0($t0)
la $t0, t
lw $t5, 0($t0)
la $s0, p
sw $t2, 0($s0)
la $t9, ag
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ag
sw $t2, 0($t9)
la $t9, u
lw $t2, 0($t9)
la $s0, q
sw $t4, 0($s0)
la $t3, ag
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ag
sw $t4, 0($t3)
la $t3, v
lw $t4, 0($t3)
la $s0, r
sw $t1, 0($s0)
la $t6, ag
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ag
sw $t1, 0($t6)
la $t6, w
lw $t1, 0($t6)
la $s0, s
sw $t8, 0($s0)
la $t7, ag
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ag
sw $t8, 0($t7)
la $t7, x
lw $t8, 0($t7)
la $s0, t
sw $t5, 0($s0)
la $t0, ag
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ag
sw $t5, 0($t0)
la $t0, y
lw $t5, 0($t0)
la $s0, u
sw $t2, 0($s0)
la $t9, ag
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ag
sw $t2, 0($t9)
la $t9, z
lw $t2, 0($t9)
la $s0, v
sw $t4, 0($s0)
la $t3, ag
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ag
sw $t4, 0($t3)
la $t3, ag
lw $t4, 0($t3)
la $s0, w
sw $t1, 0($s0)
la $t6, aa
lw $t1, 0($t6)
sub $t1, $t1, $t4
la $t6, aa
sw $t1, 0($t6)
la $t6, a
lw $t1, 0($t6)
la $s0, x
sw $t8, 0($s0)
move $t8, $t1
la $t7, ah
sw $t8, 0($t7)
la $t7, b
lw $t8, 0($t7)
la $s0, y
sw $t5, 0($s0)
la $t0, ah
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ah
sw $t5, 0($t0)
la $t0, c
lw $t5, 0($t0)
la $s0, z
sw $t2, 0($s0)
la $t9, ah
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ah
sw $t2, 0($t9)
la $t9, d
lw $t2, 0($t9)
la $s0, ag
sw $t4, 0($s0)
la $t3, ah
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ah
sw $t4, 0($t3)
la $t3, e
lw $t4, 0($t3)
la $s0, a
sw $t1, 0($s0)
la $t6, ah
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ah
sw $t1, 0($t6)
la $t6, f
lw $t1, 0($t6)
la $s0, b
sw $t8, 0($s0)
la $t7, ah
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ah
sw $t8, 0($t7)
la $t7, g
lw $t8, 0($t7)
la $s0, c
sw $t5, 0($s0)
la $t0, ah
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ah
sw $t5, 0($t0)
la $t0, h
lw $t5, 0($t0)
la $s0, d
sw $t2, 0($s0)
la $t9, ah
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ah
sw $t2, 0($t9)
la $t9, i
lw $t2, 0($t9)
la $s0, e
sw $t4, 0($s0)
la $t3, ah
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ah
sw $t4, 0($t3)
la $t3, j
lw $t4, 0($t3)
la $s0, f
sw $t1, 0($s0)
la $t6, ah
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ah
sw $t1, 0($t6)
la $t6, k
lw $t1, 0($t6)
la $s0, g
sw $t8, 0($s0)
la $t7, ah
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ah
sw $t8, 0($t7)
la $t7, l
lw $t8, 0($t7)
la $s0, h
sw $t5, 0($s0)
la $t0, ah
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ah
sw $t5, 0($t0)
la $t0, m
lw $t5, 0($t0)
la $s0, i
sw $t2, 0($s0)
la $t9, ah
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ah
sw $t2, 0($t9)
la $t9, n
lw $t2, 0($t9)
la $s0, j
sw $t4, 0($s0)
la $t3, ah
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ah
sw $t4, 0($t3)
la $t3, o
lw $t4, 0($t3)
la $s0, k
sw $t1, 0($s0)
la $t6, ah
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ah
sw $t1, 0($t6)
la $t6, p
lw $t1, 0($t6)
la $s0, l
sw $t8, 0($s0)
la $t7, ah
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ah
sw $t8, 0($t7)
la $t7, q
lw $t8, 0($t7)
la $s0, m
sw $t5, 0($s0)
la $t0, ah
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ah
sw $t5, 0($t0)
la $t0, r
lw $t5, 0($t0)
la $s0, n
sw $t2, 0($s0)
la $t9, ah
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ah
sw $t2, 0($t9)
la $t9, s
lw $t2, 0($t9)
la $s0, o
sw $t4, 0($s0)
la $t3, ah
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ah
sw $t4, 0($t3)
la $t3, t
lw $t4, 0($t3)
la $s0, p
sw $t1, 0($s0)
la $t6, ah
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ah
sw $t1, 0($t6)
la $t6, u
lw $t1, 0($t6)
la $s0, q
sw $t8, 0($s0)
la $t7, ah
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ah
sw $t8, 0($t7)
la $t7, v
lw $t8, 0($t7)
la $s0, r
sw $t5, 0($s0)
la $t0, ah
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, ah
sw $t5, 0($t0)
la $t0, w
lw $t5, 0($t0)
la $s0, s
sw $t2, 0($s0)
la $t9, ah
lw $t2, 0($t9)
add $t2, $t2, $t5
la $t9, ah
sw $t2, 0($t9)
la $t9, x
lw $t2, 0($t9)
la $s0, t
sw $t4, 0($s0)
la $t3, ah
lw $t4, 0($t3)
add $t4, $t4, $t2
la $t3, ah
sw $t4, 0($t3)
la $t3, y
lw $t4, 0($t3)
la $s0, u
sw $t1, 0($s0)
la $t6, ah
lw $t1, 0($t6)
add $t1, $t1, $t4
la $t6, ah
sw $t1, 0($t6)
la $t6, z
lw $t1, 0($t6)
la $s0, v
sw $t8, 0($s0)
la $t7, ah
lw $t8, 0($t7)
add $t8, $t8, $t1
la $t7, ah
sw $t8, 0($t7)
la $t7, ah
lw $t8, 0($t7)
la $s0, w
sw $t5, 0($s0)
la $t0, aa
lw $t5, 0($t0)
add $t5, $t5, $t8
la $t0, aa
sw $t5, 0($t0)
la $t0, aa
lw $t5, 0($t0)
li $v0, 1
move $a0, $t5
syscall
