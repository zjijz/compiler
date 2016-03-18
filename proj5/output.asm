.data
ad:	.word	0	# temp_d in original
l:	.word	0	# l in original
c:	.word	0	# c in original
p:	.word	0	# p in original
a:	.word	0	# a in original
n:	.word	0	# n in original
s:	.word	0	# s in original
b:	.word	0	# b in original
r:	.word	0	# r in original
ae:	.word	0	# temp_e in original
v:	.word	0	# v in original
o:	.word	0	# o in original
d:	.word	0	# d in original
t:	.word	0	# t in original
m:	.word	0	# m in original
h:	.word	0	# h in original
q:	.word	0	# q in original
e:	.word	0	# e in original
ag:	.word	0	# temp_g in original
u:	.word	0	# u in original
f:	.word	0	# f in original
k:	.word	0	# k in original
y:	.word	0	# y in original
ab:	.word	0	# temp_b in original
g:	.word	0	# g in original
j:	.word	0	# j in original
ac:	.word	0	# temp_c in original
i:	.word	0	# i in original
z:	.word	0	# z in original
x:	.word	0	# x in original
aa:	.word	0	# temp_a in original
ah:	.word	0	# temp_h in original
af:	.word	0	# temp_f in original
w:	.word	0	# w in original
.text
li $v0, 5
syscall
la $t0, a
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
la $t6, b
lw $t2, 0($t6)
move $t2, $v0
li $v0, 5
syscall
la $t4, c
lw $t9, 0($t4)
move $t9, $v0
li $v0, 5
syscall
la $t7, d
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $t5, e
lw $t8, 0($t5)
move $t8, $v0
li $v0, 5
syscall
la $s0, a
sw $t1, 0($s0)
la $t1, f
lw $t0, 0($t1)
move $t0, $v0
li $v0, 5
syscall
la $s0, b
sw $t2, 0($s0)
la $t2, g
lw $t6, 0($t2)
move $t6, $v0
li $v0, 5
syscall
la $s0, c
sw $t9, 0($s0)
la $t9, h
lw $t4, 0($t9)
move $t4, $v0
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
sw $t8, 0($s0)
la $t8, j
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $s0, f
sw $t0, 0($s0)
la $t0, k
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
la $s0, g
sw $t6, 0($s0)
la $t6, l
lw $t2, 0($t6)
move $t2, $v0
li $v0, 5
syscall
la $s0, h
sw $t4, 0($s0)
la $t4, m
lw $t9, 0($t4)
move $t9, $v0
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
sw $t5, 0($s0)
la $t5, o
lw $t8, 0($t5)
move $t8, $v0
li $v0, 5
syscall
la $s0, k
sw $t1, 0($s0)
la $t1, p
lw $t0, 0($t1)
move $t0, $v0
li $v0, 5
syscall
la $s0, l
sw $t2, 0($s0)
la $t2, q
lw $t6, 0($t2)
move $t6, $v0
li $v0, 5
syscall
la $s0, m
sw $t9, 0($s0)
la $t9, r
lw $t4, 0($t9)
move $t4, $v0
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
sw $t8, 0($s0)
la $t8, t
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $s0, p
sw $t0, 0($s0)
la $t0, u
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
la $s0, q
sw $t6, 0($s0)
la $t6, v
lw $t2, 0($t6)
move $t2, $v0
li $v0, 5
syscall
la $s0, r
sw $t4, 0($s0)
la $t4, w
lw $t9, 0($t4)
move $t9, $v0
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
sw $t5, 0($s0)
la $t5, y
lw $t8, 0($t5)
move $t8, $v0
li $v0, 5
syscall
la $s0, u
sw $t1, 0($s0)
la $t1, z
lw $t0, 0($t1)
move $t0, $v0
la $s0, v
sw $t2, 0($s0)
la $t6, a
lw $t2, 0($t6)
la $s0, w
sw $t9, 0($s0)
move $t9, $t2
la $t4, ab
sw $t9, 0($t4)
la $t9, b
lw $t4, 0($t9)
la $s0, x
sw $t3, 0($s0)
la $t7, ab
lw $t3, 0($t7)
add $t3, $t3, $t4
la $t7, ab
sw $t3, 0($t7)
la $t3, c
lw $t7, 0($t3)
la $s0, y
sw $t8, 0($s0)
la $t5, ab
lw $t8, 0($t5)
add $t8, $t8, $t7
la $t5, ab
sw $t8, 0($t5)
la $t8, d
lw $t5, 0($t8)
la $s0, z
sw $t0, 0($s0)
la $t1, ab
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ab
sw $t0, 0($t1)
la $t1, e
lw $t0, 0($t1)
la $s0, a
sw $t2, 0($s0)
la $t6, ab
lw $t2, 0($t6)
add $t2, $t2, $t0
la $t6, ab
sw $t2, 0($t6)
la $t2, f
lw $t6, 0($t2)
la $s0, b
sw $t4, 0($s0)
la $t9, ab
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ab
sw $t4, 0($t9)
la $t9, g
lw $t4, 0($t9)
la $s0, c
sw $t7, 0($s0)
la $t3, ab
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ab
sw $t7, 0($t3)
la $t3, h
lw $t7, 0($t3)
la $s0, d
sw $t5, 0($s0)
la $t8, ab
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ab
sw $t5, 0($t8)
la $t8, i
lw $t5, 0($t8)
la $s0, e
sw $t0, 0($s0)
la $t1, ab
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ab
sw $t0, 0($t1)
la $t1, j
lw $t0, 0($t1)
la $s0, f
sw $t6, 0($s0)
la $t2, ab
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ab
sw $t6, 0($t2)
la $t2, k
lw $t6, 0($t2)
la $s0, g
sw $t4, 0($s0)
la $t9, ab
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ab
sw $t4, 0($t9)
la $t9, l
lw $t4, 0($t9)
la $s0, h
sw $t7, 0($s0)
la $t3, ab
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ab
sw $t7, 0($t3)
la $t3, m
lw $t7, 0($t3)
la $s0, i
sw $t5, 0($s0)
la $t8, ab
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ab
sw $t5, 0($t8)
la $t8, n
lw $t5, 0($t8)
la $s0, j
sw $t0, 0($s0)
la $t1, ab
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ab
sw $t0, 0($t1)
la $t1, o
lw $t0, 0($t1)
la $s0, k
sw $t6, 0($s0)
la $t2, ab
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ab
sw $t6, 0($t2)
la $t2, p
lw $t6, 0($t2)
la $s0, l
sw $t4, 0($s0)
la $t9, ab
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ab
sw $t4, 0($t9)
la $t9, q
lw $t4, 0($t9)
la $s0, m
sw $t7, 0($s0)
la $t3, ab
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ab
sw $t7, 0($t3)
la $t3, r
lw $t7, 0($t3)
la $s0, n
sw $t5, 0($s0)
la $t8, ab
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ab
sw $t5, 0($t8)
la $t8, s
lw $t5, 0($t8)
la $s0, o
sw $t0, 0($s0)
la $t1, ab
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ab
sw $t0, 0($t1)
la $t1, t
lw $t0, 0($t1)
la $s0, p
sw $t6, 0($s0)
la $t2, ab
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ab
sw $t6, 0($t2)
la $t2, u
lw $t6, 0($t2)
la $s0, q
sw $t4, 0($s0)
la $t9, ab
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ab
sw $t4, 0($t9)
la $t9, v
lw $t4, 0($t9)
la $s0, r
sw $t7, 0($s0)
la $t3, ab
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ab
sw $t7, 0($t3)
la $t3, w
lw $t7, 0($t3)
la $s0, s
sw $t5, 0($s0)
la $t8, ab
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ab
sw $t5, 0($t8)
la $t8, x
lw $t5, 0($t8)
la $s0, t
sw $t0, 0($s0)
la $t1, ab
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ab
sw $t0, 0($t1)
la $t1, y
lw $t0, 0($t1)
la $s0, u
sw $t6, 0($s0)
la $t2, ab
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ab
sw $t6, 0($t2)
la $t2, z
lw $t6, 0($t2)
la $s0, v
sw $t4, 0($s0)
la $t9, ab
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ab
sw $t4, 0($t9)
la $t9, ab
lw $t4, 0($t9)
la $s0, w
sw $t7, 0($s0)
move $t7, $t4
la $t3, aa
sw $t7, 0($t3)
la $t3, a
lw $t7, 0($t3)
la $s0, x
sw $t5, 0($s0)
move $t5, $t7
la $t8, ac
sw $t5, 0($t8)
la $t8, b
lw $t5, 0($t8)
la $s0, y
sw $t0, 0($s0)
la $t1, ac
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ac
sw $t0, 0($t1)
la $t1, c
lw $t0, 0($t1)
la $s0, z
sw $t6, 0($s0)
la $t2, ac
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ac
sw $t6, 0($t2)
la $t2, d
lw $t6, 0($t2)
la $s0, ab
sw $t4, 0($s0)
la $t9, ac
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ac
sw $t4, 0($t9)
la $t9, e
lw $t4, 0($t9)
la $s0, a
sw $t7, 0($s0)
la $t3, ac
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ac
sw $t7, 0($t3)
la $t3, f
lw $t7, 0($t3)
la $s0, b
sw $t5, 0($s0)
la $t8, ac
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ac
sw $t5, 0($t8)
la $t8, g
lw $t5, 0($t8)
la $s0, c
sw $t0, 0($s0)
la $t1, ac
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ac
sw $t0, 0($t1)
la $t1, h
lw $t0, 0($t1)
la $s0, d
sw $t6, 0($s0)
la $t2, ac
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ac
sw $t6, 0($t2)
la $t2, i
lw $t6, 0($t2)
la $s0, e
sw $t4, 0($s0)
la $t9, ac
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ac
sw $t4, 0($t9)
la $t9, j
lw $t4, 0($t9)
la $s0, f
sw $t7, 0($s0)
la $t3, ac
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ac
sw $t7, 0($t3)
la $t3, k
lw $t7, 0($t3)
la $s0, g
sw $t5, 0($s0)
la $t8, ac
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ac
sw $t5, 0($t8)
la $t8, l
lw $t5, 0($t8)
la $s0, h
sw $t0, 0($s0)
la $t1, ac
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ac
sw $t0, 0($t1)
la $t1, m
lw $t0, 0($t1)
la $s0, i
sw $t6, 0($s0)
la $t2, ac
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ac
sw $t6, 0($t2)
la $t2, n
lw $t6, 0($t2)
la $s0, j
sw $t4, 0($s0)
la $t9, ac
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ac
sw $t4, 0($t9)
la $t9, o
lw $t4, 0($t9)
la $s0, k
sw $t7, 0($s0)
la $t3, ac
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ac
sw $t7, 0($t3)
la $t3, p
lw $t7, 0($t3)
la $s0, l
sw $t5, 0($s0)
la $t8, ac
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ac
sw $t5, 0($t8)
la $t8, q
lw $t5, 0($t8)
la $s0, m
sw $t0, 0($s0)
la $t1, ac
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ac
sw $t0, 0($t1)
la $t1, r
lw $t0, 0($t1)
la $s0, n
sw $t6, 0($s0)
la $t2, ac
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ac
sw $t6, 0($t2)
la $t2, s
lw $t6, 0($t2)
la $s0, o
sw $t4, 0($s0)
la $t9, ac
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ac
sw $t4, 0($t9)
la $t9, t
lw $t4, 0($t9)
la $s0, p
sw $t7, 0($s0)
la $t3, ac
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ac
sw $t7, 0($t3)
la $t3, u
lw $t7, 0($t3)
la $s0, q
sw $t5, 0($s0)
la $t8, ac
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ac
sw $t5, 0($t8)
la $t8, v
lw $t5, 0($t8)
la $s0, r
sw $t0, 0($s0)
la $t1, ac
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ac
sw $t0, 0($t1)
la $t1, w
lw $t0, 0($t1)
la $s0, s
sw $t6, 0($s0)
la $t2, ac
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ac
sw $t6, 0($t2)
la $t2, x
lw $t6, 0($t2)
la $s0, t
sw $t4, 0($s0)
la $t9, ac
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ac
sw $t4, 0($t9)
la $t9, y
lw $t4, 0($t9)
la $s0, u
sw $t7, 0($s0)
la $t3, ac
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ac
sw $t7, 0($t3)
la $t3, z
lw $t7, 0($t3)
la $s0, v
sw $t5, 0($s0)
la $t8, ac
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ac
sw $t5, 0($t8)
la $t8, ac
lw $t5, 0($t8)
la $s0, w
sw $t0, 0($s0)
la $t1, aa
lw $t0, 0($t1)
sub $t0, $t0, $t5
la $t1, aa
sw $t0, 0($t1)
la $t1, a
lw $t0, 0($t1)
la $s0, x
sw $t6, 0($s0)
move $t6, $t0
la $t2, ad
sw $t6, 0($t2)
la $t2, b
lw $t6, 0($t2)
la $s0, y
sw $t4, 0($s0)
la $t9, ad
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ad
sw $t4, 0($t9)
la $t9, c
lw $t4, 0($t9)
la $s0, z
sw $t7, 0($s0)
la $t3, ad
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ad
sw $t7, 0($t3)
la $t3, d
lw $t7, 0($t3)
la $s0, ac
sw $t5, 0($s0)
la $t8, ad
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ad
sw $t5, 0($t8)
la $t8, e
lw $t5, 0($t8)
la $s0, a
sw $t0, 0($s0)
la $t1, ad
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ad
sw $t0, 0($t1)
la $t1, f
lw $t0, 0($t1)
la $s0, b
sw $t6, 0($s0)
la $t2, ad
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ad
sw $t6, 0($t2)
la $t2, g
lw $t6, 0($t2)
la $s0, c
sw $t4, 0($s0)
la $t9, ad
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ad
sw $t4, 0($t9)
la $t9, h
lw $t4, 0($t9)
la $s0, d
sw $t7, 0($s0)
la $t3, ad
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ad
sw $t7, 0($t3)
la $t3, i
lw $t7, 0($t3)
la $s0, e
sw $t5, 0($s0)
la $t8, ad
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ad
sw $t5, 0($t8)
la $t8, j
lw $t5, 0($t8)
la $s0, f
sw $t0, 0($s0)
la $t1, ad
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ad
sw $t0, 0($t1)
la $t1, k
lw $t0, 0($t1)
la $s0, g
sw $t6, 0($s0)
la $t2, ad
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ad
sw $t6, 0($t2)
la $t2, l
lw $t6, 0($t2)
la $s0, h
sw $t4, 0($s0)
la $t9, ad
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ad
sw $t4, 0($t9)
la $t9, m
lw $t4, 0($t9)
la $s0, i
sw $t7, 0($s0)
la $t3, ad
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ad
sw $t7, 0($t3)
la $t3, n
lw $t7, 0($t3)
la $s0, j
sw $t5, 0($s0)
la $t8, ad
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ad
sw $t5, 0($t8)
la $t8, o
lw $t5, 0($t8)
la $s0, k
sw $t0, 0($s0)
la $t1, ad
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ad
sw $t0, 0($t1)
la $t1, p
lw $t0, 0($t1)
la $s0, l
sw $t6, 0($s0)
la $t2, ad
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ad
sw $t6, 0($t2)
la $t2, q
lw $t6, 0($t2)
la $s0, m
sw $t4, 0($s0)
la $t9, ad
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ad
sw $t4, 0($t9)
la $t9, r
lw $t4, 0($t9)
la $s0, n
sw $t7, 0($s0)
la $t3, ad
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ad
sw $t7, 0($t3)
la $t3, s
lw $t7, 0($t3)
la $s0, o
sw $t5, 0($s0)
la $t8, ad
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ad
sw $t5, 0($t8)
la $t8, t
lw $t5, 0($t8)
la $s0, p
sw $t0, 0($s0)
la $t1, ad
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ad
sw $t0, 0($t1)
la $t1, u
lw $t0, 0($t1)
la $s0, q
sw $t6, 0($s0)
la $t2, ad
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ad
sw $t6, 0($t2)
la $t2, v
lw $t6, 0($t2)
la $s0, r
sw $t4, 0($s0)
la $t9, ad
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ad
sw $t4, 0($t9)
la $t9, w
lw $t4, 0($t9)
la $s0, s
sw $t7, 0($s0)
la $t3, ad
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ad
sw $t7, 0($t3)
la $t3, x
lw $t7, 0($t3)
la $s0, t
sw $t5, 0($s0)
la $t8, ad
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ad
sw $t5, 0($t8)
la $t8, y
lw $t5, 0($t8)
la $s0, u
sw $t0, 0($s0)
la $t1, ad
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ad
sw $t0, 0($t1)
la $t1, z
lw $t0, 0($t1)
la $s0, v
sw $t6, 0($s0)
la $t2, ad
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ad
sw $t6, 0($t2)
la $t2, ad
lw $t6, 0($t2)
la $s0, w
sw $t4, 0($s0)
la $t9, aa
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, aa
sw $t4, 0($t9)
la $t9, a
lw $t4, 0($t9)
la $s0, x
sw $t7, 0($s0)
move $t7, $t4
la $t3, ae
sw $t7, 0($t3)
la $t3, b
lw $t7, 0($t3)
la $s0, y
sw $t5, 0($s0)
la $t8, ae
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ae
sw $t5, 0($t8)
la $t8, c
lw $t5, 0($t8)
la $s0, z
sw $t0, 0($s0)
la $t1, ae
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ae
sw $t0, 0($t1)
la $t1, d
lw $t0, 0($t1)
la $s0, ad
sw $t6, 0($s0)
la $t2, ae
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ae
sw $t6, 0($t2)
la $t2, e
lw $t6, 0($t2)
la $s0, a
sw $t4, 0($s0)
la $t9, ae
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ae
sw $t4, 0($t9)
la $t9, f
lw $t4, 0($t9)
la $s0, b
sw $t7, 0($s0)
la $t3, ae
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ae
sw $t7, 0($t3)
la $t3, g
lw $t7, 0($t3)
la $s0, c
sw $t5, 0($s0)
la $t8, ae
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ae
sw $t5, 0($t8)
la $t8, h
lw $t5, 0($t8)
la $s0, d
sw $t0, 0($s0)
la $t1, ae
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ae
sw $t0, 0($t1)
la $t1, i
lw $t0, 0($t1)
la $s0, e
sw $t6, 0($s0)
la $t2, ae
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ae
sw $t6, 0($t2)
la $t2, j
lw $t6, 0($t2)
la $s0, f
sw $t4, 0($s0)
la $t9, ae
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ae
sw $t4, 0($t9)
la $t9, k
lw $t4, 0($t9)
la $s0, g
sw $t7, 0($s0)
la $t3, ae
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ae
sw $t7, 0($t3)
la $t3, l
lw $t7, 0($t3)
la $s0, h
sw $t5, 0($s0)
la $t8, ae
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ae
sw $t5, 0($t8)
la $t8, m
lw $t5, 0($t8)
la $s0, i
sw $t0, 0($s0)
la $t1, ae
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ae
sw $t0, 0($t1)
la $t1, n
lw $t0, 0($t1)
la $s0, j
sw $t6, 0($s0)
la $t2, ae
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ae
sw $t6, 0($t2)
la $t2, o
lw $t6, 0($t2)
la $s0, k
sw $t4, 0($s0)
la $t9, ae
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ae
sw $t4, 0($t9)
la $t9, p
lw $t4, 0($t9)
la $s0, l
sw $t7, 0($s0)
la $t3, ae
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ae
sw $t7, 0($t3)
la $t3, q
lw $t7, 0($t3)
la $s0, m
sw $t5, 0($s0)
la $t8, ae
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ae
sw $t5, 0($t8)
la $t8, r
lw $t5, 0($t8)
la $s0, n
sw $t0, 0($s0)
la $t1, ae
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ae
sw $t0, 0($t1)
la $t1, s
lw $t0, 0($t1)
la $s0, o
sw $t6, 0($s0)
la $t2, ae
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ae
sw $t6, 0($t2)
la $t2, t
lw $t6, 0($t2)
la $s0, p
sw $t4, 0($s0)
la $t9, ae
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ae
sw $t4, 0($t9)
la $t9, u
lw $t4, 0($t9)
la $s0, q
sw $t7, 0($s0)
la $t3, ae
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ae
sw $t7, 0($t3)
la $t3, v
lw $t7, 0($t3)
la $s0, r
sw $t5, 0($s0)
la $t8, ae
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ae
sw $t5, 0($t8)
la $t8, w
lw $t5, 0($t8)
la $s0, s
sw $t0, 0($s0)
la $t1, ae
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ae
sw $t0, 0($t1)
la $t1, x
lw $t0, 0($t1)
la $s0, t
sw $t6, 0($s0)
la $t2, ae
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ae
sw $t6, 0($t2)
la $t2, y
lw $t6, 0($t2)
la $s0, u
sw $t4, 0($s0)
la $t9, ae
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ae
sw $t4, 0($t9)
la $t9, z
lw $t4, 0($t9)
la $s0, v
sw $t7, 0($s0)
la $t3, ae
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ae
sw $t7, 0($t3)
la $t3, ae
lw $t7, 0($t3)
la $s0, w
sw $t5, 0($s0)
la $t8, aa
lw $t5, 0($t8)
sub $t5, $t5, $t7
la $t8, aa
sw $t5, 0($t8)
la $t8, a
lw $t5, 0($t8)
la $s0, x
sw $t0, 0($s0)
move $t0, $t5
la $t1, af
sw $t0, 0($t1)
la $t1, b
lw $t0, 0($t1)
la $s0, y
sw $t6, 0($s0)
la $t2, af
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, af
sw $t6, 0($t2)
la $t2, c
lw $t6, 0($t2)
la $s0, z
sw $t4, 0($s0)
la $t9, af
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, af
sw $t4, 0($t9)
la $t9, d
lw $t4, 0($t9)
la $s0, ae
sw $t7, 0($s0)
la $t3, af
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, af
sw $t7, 0($t3)
la $t3, e
lw $t7, 0($t3)
la $s0, a
sw $t5, 0($s0)
la $t8, af
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, af
sw $t5, 0($t8)
la $t8, f
lw $t5, 0($t8)
la $s0, b
sw $t0, 0($s0)
la $t1, af
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, af
sw $t0, 0($t1)
la $t1, g
lw $t0, 0($t1)
la $s0, c
sw $t6, 0($s0)
la $t2, af
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, af
sw $t6, 0($t2)
la $t2, h
lw $t6, 0($t2)
la $s0, d
sw $t4, 0($s0)
la $t9, af
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, af
sw $t4, 0($t9)
la $t9, i
lw $t4, 0($t9)
la $s0, e
sw $t7, 0($s0)
la $t3, af
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, af
sw $t7, 0($t3)
la $t3, j
lw $t7, 0($t3)
la $s0, f
sw $t5, 0($s0)
la $t8, af
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, af
sw $t5, 0($t8)
la $t8, k
lw $t5, 0($t8)
la $s0, g
sw $t0, 0($s0)
la $t1, af
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, af
sw $t0, 0($t1)
la $t1, l
lw $t0, 0($t1)
la $s0, h
sw $t6, 0($s0)
la $t2, af
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, af
sw $t6, 0($t2)
la $t2, m
lw $t6, 0($t2)
la $s0, i
sw $t4, 0($s0)
la $t9, af
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, af
sw $t4, 0($t9)
la $t9, n
lw $t4, 0($t9)
la $s0, j
sw $t7, 0($s0)
la $t3, af
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, af
sw $t7, 0($t3)
la $t3, o
lw $t7, 0($t3)
la $s0, k
sw $t5, 0($s0)
la $t8, af
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, af
sw $t5, 0($t8)
la $t8, p
lw $t5, 0($t8)
la $s0, l
sw $t0, 0($s0)
la $t1, af
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, af
sw $t0, 0($t1)
la $t1, q
lw $t0, 0($t1)
la $s0, m
sw $t6, 0($s0)
la $t2, af
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, af
sw $t6, 0($t2)
la $t2, r
lw $t6, 0($t2)
la $s0, n
sw $t4, 0($s0)
la $t9, af
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, af
sw $t4, 0($t9)
la $t9, s
lw $t4, 0($t9)
la $s0, o
sw $t7, 0($s0)
la $t3, af
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, af
sw $t7, 0($t3)
la $t3, t
lw $t7, 0($t3)
la $s0, p
sw $t5, 0($s0)
la $t8, af
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, af
sw $t5, 0($t8)
la $t8, u
lw $t5, 0($t8)
la $s0, q
sw $t0, 0($s0)
la $t1, af
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, af
sw $t0, 0($t1)
la $t1, v
lw $t0, 0($t1)
la $s0, r
sw $t6, 0($s0)
la $t2, af
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, af
sw $t6, 0($t2)
la $t2, w
lw $t6, 0($t2)
la $s0, s
sw $t4, 0($s0)
la $t9, af
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, af
sw $t4, 0($t9)
la $t9, x
lw $t4, 0($t9)
la $s0, t
sw $t7, 0($s0)
la $t3, af
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, af
sw $t7, 0($t3)
la $t3, y
lw $t7, 0($t3)
la $s0, u
sw $t5, 0($s0)
la $t8, af
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, af
sw $t5, 0($t8)
la $t8, z
lw $t5, 0($t8)
la $s0, v
sw $t0, 0($s0)
la $t1, af
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, af
sw $t0, 0($t1)
la $t1, af
lw $t0, 0($t1)
la $s0, w
sw $t6, 0($s0)
la $t2, aa
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, aa
sw $t6, 0($t2)
la $t2, a
lw $t6, 0($t2)
la $s0, x
sw $t4, 0($s0)
move $t4, $t6
la $t9, ag
sw $t4, 0($t9)
la $t9, b
lw $t4, 0($t9)
la $s0, y
sw $t7, 0($s0)
la $t3, ag
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ag
sw $t7, 0($t3)
la $t3, c
lw $t7, 0($t3)
la $s0, z
sw $t5, 0($s0)
la $t8, ag
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ag
sw $t5, 0($t8)
la $t8, d
lw $t5, 0($t8)
la $s0, af
sw $t0, 0($s0)
la $t1, ag
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ag
sw $t0, 0($t1)
la $t1, e
lw $t0, 0($t1)
la $s0, a
sw $t6, 0($s0)
la $t2, ag
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ag
sw $t6, 0($t2)
la $t2, f
lw $t6, 0($t2)
la $s0, b
sw $t4, 0($s0)
la $t9, ag
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ag
sw $t4, 0($t9)
la $t9, g
lw $t4, 0($t9)
la $s0, c
sw $t7, 0($s0)
la $t3, ag
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ag
sw $t7, 0($t3)
la $t3, h
lw $t7, 0($t3)
la $s0, d
sw $t5, 0($s0)
la $t8, ag
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ag
sw $t5, 0($t8)
la $t8, i
lw $t5, 0($t8)
la $s0, e
sw $t0, 0($s0)
la $t1, ag
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ag
sw $t0, 0($t1)
la $t1, j
lw $t0, 0($t1)
la $s0, f
sw $t6, 0($s0)
la $t2, ag
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ag
sw $t6, 0($t2)
la $t2, k
lw $t6, 0($t2)
la $s0, g
sw $t4, 0($s0)
la $t9, ag
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ag
sw $t4, 0($t9)
la $t9, l
lw $t4, 0($t9)
la $s0, h
sw $t7, 0($s0)
la $t3, ag
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ag
sw $t7, 0($t3)
la $t3, m
lw $t7, 0($t3)
la $s0, i
sw $t5, 0($s0)
la $t8, ag
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ag
sw $t5, 0($t8)
la $t8, n
lw $t5, 0($t8)
la $s0, j
sw $t0, 0($s0)
la $t1, ag
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ag
sw $t0, 0($t1)
la $t1, o
lw $t0, 0($t1)
la $s0, k
sw $t6, 0($s0)
la $t2, ag
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ag
sw $t6, 0($t2)
la $t2, p
lw $t6, 0($t2)
la $s0, l
sw $t4, 0($s0)
la $t9, ag
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ag
sw $t4, 0($t9)
la $t9, q
lw $t4, 0($t9)
la $s0, m
sw $t7, 0($s0)
la $t3, ag
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ag
sw $t7, 0($t3)
la $t3, r
lw $t7, 0($t3)
la $s0, n
sw $t5, 0($s0)
la $t8, ag
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ag
sw $t5, 0($t8)
la $t8, s
lw $t5, 0($t8)
la $s0, o
sw $t0, 0($s0)
la $t1, ag
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ag
sw $t0, 0($t1)
la $t1, t
lw $t0, 0($t1)
la $s0, p
sw $t6, 0($s0)
la $t2, ag
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ag
sw $t6, 0($t2)
la $t2, u
lw $t6, 0($t2)
la $s0, q
sw $t4, 0($s0)
la $t9, ag
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ag
sw $t4, 0($t9)
la $t9, v
lw $t4, 0($t9)
la $s0, r
sw $t7, 0($s0)
la $t3, ag
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ag
sw $t7, 0($t3)
la $t3, w
lw $t7, 0($t3)
la $s0, s
sw $t5, 0($s0)
la $t8, ag
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ag
sw $t5, 0($t8)
la $t8, x
lw $t5, 0($t8)
la $s0, t
sw $t0, 0($s0)
la $t1, ag
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ag
sw $t0, 0($t1)
la $t1, y
lw $t0, 0($t1)
la $s0, u
sw $t6, 0($s0)
la $t2, ag
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ag
sw $t6, 0($t2)
la $t2, z
lw $t6, 0($t2)
la $s0, v
sw $t4, 0($s0)
la $t9, ag
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ag
sw $t4, 0($t9)
la $t9, ag
lw $t4, 0($t9)
la $s0, w
sw $t7, 0($s0)
la $t3, aa
lw $t7, 0($t3)
sub $t7, $t7, $t4
la $t3, aa
sw $t7, 0($t3)
la $t3, a
lw $t7, 0($t3)
la $s0, x
sw $t5, 0($s0)
move $t5, $t7
la $t8, ah
sw $t5, 0($t8)
la $t8, b
lw $t5, 0($t8)
la $s0, y
sw $t0, 0($s0)
la $t1, ah
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ah
sw $t0, 0($t1)
la $t1, c
lw $t0, 0($t1)
la $s0, z
sw $t6, 0($s0)
la $t2, ah
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ah
sw $t6, 0($t2)
la $t2, d
lw $t6, 0($t2)
la $s0, ag
sw $t4, 0($s0)
la $t9, ah
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ah
sw $t4, 0($t9)
la $t9, e
lw $t4, 0($t9)
la $s0, a
sw $t7, 0($s0)
la $t3, ah
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ah
sw $t7, 0($t3)
la $t3, f
lw $t7, 0($t3)
la $s0, b
sw $t5, 0($s0)
la $t8, ah
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ah
sw $t5, 0($t8)
la $t8, g
lw $t5, 0($t8)
la $s0, c
sw $t0, 0($s0)
la $t1, ah
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ah
sw $t0, 0($t1)
la $t1, h
lw $t0, 0($t1)
la $s0, d
sw $t6, 0($s0)
la $t2, ah
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ah
sw $t6, 0($t2)
la $t2, i
lw $t6, 0($t2)
la $s0, e
sw $t4, 0($s0)
la $t9, ah
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ah
sw $t4, 0($t9)
la $t9, j
lw $t4, 0($t9)
la $s0, f
sw $t7, 0($s0)
la $t3, ah
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ah
sw $t7, 0($t3)
la $t3, k
lw $t7, 0($t3)
la $s0, g
sw $t5, 0($s0)
la $t8, ah
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ah
sw $t5, 0($t8)
la $t8, l
lw $t5, 0($t8)
la $s0, h
sw $t0, 0($s0)
la $t1, ah
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ah
sw $t0, 0($t1)
la $t1, m
lw $t0, 0($t1)
la $s0, i
sw $t6, 0($s0)
la $t2, ah
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ah
sw $t6, 0($t2)
la $t2, n
lw $t6, 0($t2)
la $s0, j
sw $t4, 0($s0)
la $t9, ah
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ah
sw $t4, 0($t9)
la $t9, o
lw $t4, 0($t9)
la $s0, k
sw $t7, 0($s0)
la $t3, ah
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ah
sw $t7, 0($t3)
la $t3, p
lw $t7, 0($t3)
la $s0, l
sw $t5, 0($s0)
la $t8, ah
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ah
sw $t5, 0($t8)
la $t8, q
lw $t5, 0($t8)
la $s0, m
sw $t0, 0($s0)
la $t1, ah
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ah
sw $t0, 0($t1)
la $t1, r
lw $t0, 0($t1)
la $s0, n
sw $t6, 0($s0)
la $t2, ah
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ah
sw $t6, 0($t2)
la $t2, s
lw $t6, 0($t2)
la $s0, o
sw $t4, 0($s0)
la $t9, ah
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ah
sw $t4, 0($t9)
la $t9, t
lw $t4, 0($t9)
la $s0, p
sw $t7, 0($s0)
la $t3, ah
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ah
sw $t7, 0($t3)
la $t3, u
lw $t7, 0($t3)
la $s0, q
sw $t5, 0($s0)
la $t8, ah
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ah
sw $t5, 0($t8)
la $t8, v
lw $t5, 0($t8)
la $s0, r
sw $t0, 0($s0)
la $t1, ah
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, ah
sw $t0, 0($t1)
la $t1, w
lw $t0, 0($t1)
la $s0, s
sw $t6, 0($s0)
la $t2, ah
lw $t6, 0($t2)
add $t6, $t6, $t0
la $t2, ah
sw $t6, 0($t2)
la $t2, x
lw $t6, 0($t2)
la $s0, t
sw $t4, 0($s0)
la $t9, ah
lw $t4, 0($t9)
add $t4, $t4, $t6
la $t9, ah
sw $t4, 0($t9)
la $t9, y
lw $t4, 0($t9)
la $s0, u
sw $t7, 0($s0)
la $t3, ah
lw $t7, 0($t3)
add $t7, $t7, $t4
la $t3, ah
sw $t7, 0($t3)
la $t3, z
lw $t7, 0($t3)
la $s0, v
sw $t5, 0($s0)
la $t8, ah
lw $t5, 0($t8)
add $t5, $t5, $t7
la $t8, ah
sw $t5, 0($t8)
la $t8, ah
lw $t5, 0($t8)
la $s0, w
sw $t0, 0($s0)
la $t1, aa
lw $t0, 0($t1)
add $t0, $t0, $t5
la $t1, aa
sw $t0, 0($t1)
la $t1, aa
lw $t0, 0($t1)
li $v0, 1
move $a0, $t0
syscall
