.data
r:	.word	0	# r in original
ai:	.word	0	# temp_i in original
at:	.word	0	# temp_t in original
k:	.word	0	# k in original
w:	.word	0	# w in original
ay:	.word	0	# temp_y in original
aj:	.word	0	# temp_j in original
b:	.word	0	# b in original
au:	.word	0	# temp_u in original
f:	.word	0	# f in original
ao:	.word	0	# temp_o in original
t:	.word	0	# t in original
ab:	.word	0	# temp_b in original
ag:	.word	0	# temp_g in original
m:	.word	0	# m in original
ac:	.word	0	# temp_c in original
u:	.word	0	# u in original
a:	.word	0	# a in original
af:	.word	0	# temp_f in original
d:	.word	0	# d in original
ax:	.word	0	# temp_x in original
j:	.word	0	# j in original
as:	.word	0	# temp_s in original
an:	.word	0	# temp_n in original
x:	.word	0	# x in original
av:	.word	0	# temp_v in original
ar:	.word	0	# temp_r in original
z:	.word	0	# z in original
ak:	.word	0	# temp_k in original
p:	.word	0	# p in original
l:	.word	0	# l in original
i:	.word	0	# i in original
ah:	.word	0	# temp_h in original
aw:	.word	0	# temp_w in original
q:	.word	0	# q in original
ad:	.word	0	# temp_d in original
am:	.word	0	# temp_m in original
c:	.word	0	# c in original
ap:	.word	0	# temp_p in original
h:	.word	0	# h in original
n:	.word	0	# n in original
v:	.word	0	# v in original
e:	.word	0	# e in original
ae:	.word	0	# temp_e in original
y:	.word	0	# y in original
aa:	.word	0	# temp_a in original
al:	.word	0	# temp_l in original
aq:	.word	0	# temp_q in original
s:	.word	0	# s in original
o:	.word	0	# o in original
g:	.word	0	# g in original
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
la $t2, c
lw $t0, 0($t2)
move $t0, $v0
li $v0, 5
syscall
la $t1, d
lw $t9, 0($t1)
move $t9, $v0
li $v0, 5
syscall
la $t5, e
lw $t4, 0($t5)
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
sw $t0, 0($s0)
la $t0, h
lw $t2, 0($t0)
move $t2, $v0
li $v0, 5
syscall
la $s0, d
sw $t9, 0($s0)
la $t9, i
lw $t1, 0($t9)
move $t1, $v0
li $v0, 5
syscall
la $s0, e
sw $t4, 0($s0)
la $t4, j
lw $t5, 0($t4)
move $t5, $v0
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
sw $t2, 0($s0)
la $t2, m
lw $t0, 0($t2)
move $t0, $v0
li $v0, 5
syscall
la $s0, i
sw $t1, 0($s0)
la $t1, n
lw $t9, 0($t1)
move $t9, $v0
li $v0, 5
syscall
la $s0, j
sw $t5, 0($s0)
la $t5, o
lw $t4, 0($t5)
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
sw $t0, 0($s0)
la $t0, r
lw $t2, 0($t0)
move $t2, $v0
li $v0, 5
syscall
la $s0, n
sw $t9, 0($s0)
la $t9, s
lw $t1, 0($t9)
move $t1, $v0
li $v0, 5
syscall
la $s0, o
sw $t4, 0($s0)
la $t4, t
lw $t5, 0($t4)
move $t5, $v0
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
sw $t2, 0($s0)
la $t2, w
lw $t0, 0($t2)
move $t0, $v0
li $v0, 5
syscall
la $s0, s
sw $t1, 0($s0)
la $t1, x
lw $t9, 0($t1)
move $t9, $v0
li $v0, 5
syscall
la $s0, t
sw $t5, 0($s0)
la $t5, y
lw $t4, 0($t5)
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
move $t8, $t3
la $t7, ay
sw $t8, 0($t7)
la $t8, ay
lw $t7, 0($t8)
add $t7, $t7, $t4
la $t8, ay
sw $t7, 0($t8)
la $t8, ay
lw $t7, 0($t8)
la $s0, w
sw $t0, 0($s0)
move $t0, $t7
la $t2, ax
sw $t0, 0($t2)
la $t0, ax
lw $t2, 0($t0)
add $t2, $t2, $t9
la $t0, ax
sw $t2, 0($t0)
la $t0, ax
lw $t2, 0($t0)
la $s0, x
sw $t9, 0($s0)
move $t9, $t2
la $t1, aw
sw $t9, 0($t1)
la $t9, w
lw $t1, 0($t9)
la $s0, y
sw $t4, 0($s0)
la $t5, aw
lw $t4, 0($t5)
add $t4, $t4, $t1
la $t5, aw
sw $t4, 0($t5)
la $t4, aw
lw $t5, 0($t4)
la $s0, z
sw $t3, 0($s0)
move $t3, $t5
la $t6, av
sw $t3, 0($t6)
la $t6, v
lw $t3, 0($t6)
la $s0, ay
sw $t7, 0($s0)
la $t8, av
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, av
sw $t7, 0($t8)
la $t8, av
lw $t7, 0($t8)
la $s0, ax
sw $t2, 0($s0)
move $t2, $t7
la $t0, au
sw $t2, 0($t0)
la $t0, u
lw $t2, 0($t0)
la $s0, w
sw $t1, 0($s0)
la $t9, au
lw $t1, 0($t9)
add $t1, $t1, $t2
la $t9, au
sw $t1, 0($t9)
la $t9, au
lw $t1, 0($t9)
la $s0, aw
sw $t5, 0($s0)
move $t5, $t1
la $t4, at
sw $t5, 0($t4)
la $t4, t
lw $t5, 0($t4)
la $s0, v
sw $t3, 0($s0)
la $t6, at
lw $t3, 0($t6)
add $t3, $t3, $t5
la $t6, at
sw $t3, 0($t6)
la $t6, at
lw $t3, 0($t6)
la $s0, av
sw $t7, 0($s0)
move $t7, $t3
la $t8, as
sw $t7, 0($t8)
la $t8, s
lw $t7, 0($t8)
la $s0, u
sw $t2, 0($s0)
la $t0, as
lw $t2, 0($t0)
add $t2, $t2, $t7
la $t0, as
sw $t2, 0($t0)
la $t0, as
lw $t2, 0($t0)
la $s0, au
sw $t1, 0($s0)
move $t1, $t2
la $t9, ar
sw $t1, 0($t9)
la $t9, r
lw $t1, 0($t9)
la $s0, t
sw $t5, 0($s0)
la $t4, ar
lw $t5, 0($t4)
add $t5, $t5, $t1
la $t4, ar
sw $t5, 0($t4)
la $t4, ar
lw $t5, 0($t4)
la $s0, at
sw $t3, 0($s0)
move $t3, $t5
la $t6, aq
sw $t3, 0($t6)
la $t6, q
lw $t3, 0($t6)
la $s0, s
sw $t7, 0($s0)
la $t8, aq
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, aq
sw $t7, 0($t8)
la $t8, aq
lw $t7, 0($t8)
la $s0, as
sw $t2, 0($s0)
move $t2, $t7
la $t0, ap
sw $t2, 0($t0)
la $t0, p
lw $t2, 0($t0)
la $s0, r
sw $t1, 0($s0)
la $t9, ap
lw $t1, 0($t9)
add $t1, $t1, $t2
la $t9, ap
sw $t1, 0($t9)
la $t9, ap
lw $t1, 0($t9)
la $s0, ar
sw $t5, 0($s0)
move $t5, $t1
la $t4, ao
sw $t5, 0($t4)
la $t4, o
lw $t5, 0($t4)
la $s0, q
sw $t3, 0($s0)
la $t6, ao
lw $t3, 0($t6)
add $t3, $t3, $t5
la $t6, ao
sw $t3, 0($t6)
la $t6, ao
lw $t3, 0($t6)
la $s0, aq
sw $t7, 0($s0)
move $t7, $t3
la $t8, an
sw $t7, 0($t8)
la $t8, n
lw $t7, 0($t8)
la $s0, p
sw $t2, 0($s0)
la $t0, an
lw $t2, 0($t0)
add $t2, $t2, $t7
la $t0, an
sw $t2, 0($t0)
la $t0, an
lw $t2, 0($t0)
la $s0, ap
sw $t1, 0($s0)
move $t1, $t2
la $t9, am
sw $t1, 0($t9)
la $t9, m
lw $t1, 0($t9)
la $s0, o
sw $t5, 0($s0)
la $t4, am
lw $t5, 0($t4)
add $t5, $t5, $t1
la $t4, am
sw $t5, 0($t4)
la $t4, am
lw $t5, 0($t4)
la $s0, ao
sw $t3, 0($s0)
move $t3, $t5
la $t6, al
sw $t3, 0($t6)
la $t6, l
lw $t3, 0($t6)
la $s0, n
sw $t7, 0($s0)
la $t8, al
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, al
sw $t7, 0($t8)
la $t8, al
lw $t7, 0($t8)
la $s0, an
sw $t2, 0($s0)
move $t2, $t7
la $t0, ak
sw $t2, 0($t0)
la $t0, k
lw $t2, 0($t0)
la $s0, m
sw $t1, 0($s0)
la $t9, ak
lw $t1, 0($t9)
add $t1, $t1, $t2
la $t9, ak
sw $t1, 0($t9)
la $t9, ak
lw $t1, 0($t9)
la $s0, am
sw $t5, 0($s0)
move $t5, $t1
la $t4, aj
sw $t5, 0($t4)
la $t4, j
lw $t5, 0($t4)
la $s0, l
sw $t3, 0($s0)
la $t6, aj
lw $t3, 0($t6)
add $t3, $t3, $t5
la $t6, aj
sw $t3, 0($t6)
la $t6, aj
lw $t3, 0($t6)
la $s0, al
sw $t7, 0($s0)
move $t7, $t3
la $t8, ai
sw $t7, 0($t8)
la $t8, i
lw $t7, 0($t8)
la $s0, k
sw $t2, 0($s0)
la $t0, ai
lw $t2, 0($t0)
add $t2, $t2, $t7
la $t0, ai
sw $t2, 0($t0)
la $t0, ai
lw $t2, 0($t0)
la $s0, ak
sw $t1, 0($s0)
move $t1, $t2
la $t9, ah
sw $t1, 0($t9)
la $t9, h
lw $t1, 0($t9)
la $s0, j
sw $t5, 0($s0)
la $t4, ah
lw $t5, 0($t4)
add $t5, $t5, $t1
la $t4, ah
sw $t5, 0($t4)
la $t4, ah
lw $t5, 0($t4)
la $s0, aj
sw $t3, 0($s0)
move $t3, $t5
la $t6, ag
sw $t3, 0($t6)
la $t6, g
lw $t3, 0($t6)
la $s0, i
sw $t7, 0($s0)
la $t8, ag
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ag
sw $t7, 0($t8)
la $t8, ag
lw $t7, 0($t8)
la $s0, ai
sw $t2, 0($s0)
move $t2, $t7
la $t0, af
sw $t2, 0($t0)
la $t0, f
lw $t2, 0($t0)
la $s0, h
sw $t1, 0($s0)
la $t9, af
lw $t1, 0($t9)
add $t1, $t1, $t2
la $t9, af
sw $t1, 0($t9)
la $t9, af
lw $t1, 0($t9)
la $s0, ah
sw $t5, 0($s0)
move $t5, $t1
la $t4, ae
sw $t5, 0($t4)
la $t4, e
lw $t5, 0($t4)
la $s0, g
sw $t3, 0($s0)
la $t6, ae
lw $t3, 0($t6)
add $t3, $t3, $t5
la $t6, ae
sw $t3, 0($t6)
la $t6, ae
lw $t3, 0($t6)
la $s0, ag
sw $t7, 0($s0)
move $t7, $t3
la $t8, ad
sw $t7, 0($t8)
la $t8, d
lw $t7, 0($t8)
la $s0, f
sw $t2, 0($s0)
la $t0, ad
lw $t2, 0($t0)
add $t2, $t2, $t7
la $t0, ad
sw $t2, 0($t0)
la $t0, ad
lw $t2, 0($t0)
la $s0, af
sw $t1, 0($s0)
move $t1, $t2
la $t9, ac
sw $t1, 0($t9)
la $t9, c
lw $t1, 0($t9)
la $s0, e
sw $t5, 0($s0)
la $t4, ac
lw $t5, 0($t4)
add $t5, $t5, $t1
la $t4, ac
sw $t5, 0($t4)
la $t4, ac
lw $t5, 0($t4)
la $s0, ae
sw $t3, 0($s0)
move $t3, $t5
la $t6, ab
sw $t3, 0($t6)
la $t6, b
lw $t3, 0($t6)
la $s0, d
sw $t7, 0($s0)
la $t8, ab
lw $t7, 0($t8)
add $t7, $t7, $t3
la $t8, ab
sw $t7, 0($t8)
la $t8, ab
lw $t7, 0($t8)
la $s0, ad
sw $t2, 0($s0)
move $t2, $t7
la $t0, aa
sw $t2, 0($t0)
la $t0, a
lw $t2, 0($t0)
la $s0, c
sw $t1, 0($s0)
la $t9, aa
lw $t1, 0($t9)
add $t1, $t1, $t2
la $t9, aa
sw $t1, 0($t9)
la $t9, aa
lw $t1, 0($t9)
li $v0, 1
move $a0, $t1
syscall
move $a0, $t2
syscall
move $a0, $t3
syscall
la $s0, ac
sw $t5, 0($s0)
la $t4, c
lw $t5, 0($t4)
move $a0, $t5
syscall
la $s0, b
sw $t3, 0($s0)
la $t6, d
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, ab
sw $t7, 0($s0)
la $t8, e
lw $t7, 0($t8)
move $a0, $t7
syscall
la $s0, a
sw $t2, 0($s0)
la $t0, f
lw $t2, 0($t0)
move $a0, $t2
syscall
la $s0, aa
sw $t1, 0($s0)
la $t9, g
lw $t1, 0($t9)
move $a0, $t1
syscall
la $s0, c
sw $t5, 0($s0)
la $t4, h
lw $t5, 0($t4)
move $a0, $t5
syscall
la $s0, d
sw $t3, 0($s0)
la $t6, i
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, e
sw $t7, 0($s0)
la $t8, j
lw $t7, 0($t8)
move $a0, $t7
syscall
la $s0, f
sw $t2, 0($s0)
la $t0, k
lw $t2, 0($t0)
move $a0, $t2
syscall
la $s0, g
sw $t1, 0($s0)
la $t9, l
lw $t1, 0($t9)
move $a0, $t1
syscall
la $s0, h
sw $t5, 0($s0)
la $t4, m
lw $t5, 0($t4)
move $a0, $t5
syscall
la $s0, i
sw $t3, 0($s0)
la $t6, n
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, j
sw $t7, 0($s0)
la $t8, o
lw $t7, 0($t8)
move $a0, $t7
syscall
la $s0, k
sw $t2, 0($s0)
la $t0, p
lw $t2, 0($t0)
move $a0, $t2
syscall
la $s0, l
sw $t1, 0($s0)
la $t9, q
lw $t1, 0($t9)
move $a0, $t1
syscall
la $s0, m
sw $t5, 0($s0)
la $t4, r
lw $t5, 0($t4)
move $a0, $t5
syscall
la $s0, n
sw $t3, 0($s0)
la $t6, s
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, o
sw $t7, 0($s0)
la $t8, t
lw $t7, 0($t8)
move $a0, $t7
syscall
la $s0, p
sw $t2, 0($s0)
la $t0, u
lw $t2, 0($t0)
move $a0, $t2
syscall
la $s0, q
sw $t1, 0($s0)
la $t9, v
lw $t1, 0($t9)
move $a0, $t1
syscall
la $s0, r
sw $t5, 0($s0)
la $t4, w
lw $t5, 0($t4)
move $a0, $t5
syscall
la $s0, s
sw $t3, 0($s0)
la $t6, x
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, t
sw $t7, 0($s0)
la $t8, y
lw $t7, 0($t8)
move $a0, $t7
syscall
la $s0, u
sw $t2, 0($s0)
la $t0, z
lw $t2, 0($t0)
move $a0, $t2
syscall
