.data
a:	.word	0	# a in original
k:	.word	0	# k in original
ab:	.word	0	# temp_b in original
av:	.word	0	# temp_v in original
p:	.word	0	# p in original
s:	.word	0	# s in original
ah:	.word	0	# temp_h in original
am:	.word	0	# temp_m in original
ak:	.word	0	# temp_k in original
ao:	.word	0	# temp_o in original
ar:	.word	0	# temp_r in original
ag:	.word	0	# temp_g in original
l:	.word	0	# l in original
m:	.word	0	# m in original
j:	.word	0	# j in original
as:	.word	0	# temp_s in original
aj:	.word	0	# temp_j in original
af:	.word	0	# temp_f in original
i:	.word	0	# i in original
z:	.word	0	# z in original
w:	.word	0	# w in original
ax:	.word	0	# temp_x in original
aa:	.word	0	# temp_a in original
aq:	.word	0	# temp_q in original
an:	.word	0	# temp_n in original
n:	.word	0	# n in original
o:	.word	0	# o in original
au:	.word	0	# temp_u in original
aw:	.word	0	# temp_w in original
e:	.word	0	# e in original
t:	.word	0	# t in original
u:	.word	0	# u in original
b:	.word	0	# b in original
ai:	.word	0	# temp_i in original
y:	.word	0	# y in original
q:	.word	0	# q in original
x:	.word	0	# x in original
al:	.word	0	# temp_l in original
at:	.word	0	# temp_t in original
g:	.word	0	# g in original
ac:	.word	0	# temp_c in original
ae:	.word	0	# temp_e in original
ad:	.word	0	# temp_d in original
r:	.word	0	# r in original
c:	.word	0	# c in original
d:	.word	0	# d in original
f:	.word	0	# f in original
ay:	.word	0	# temp_y in original
h:	.word	0	# h in original
ap:	.word	0	# temp_p in original
v:	.word	0	# v in original
.text
li $v0, 5
syscall
la $t6, a
lw $t2, 0($t6)
move $t2, $v0
li $v0, 5
syscall
la $t5, b
lw $t7, 0($t5)
move $t7, $v0
li $v0, 5
syscall
la $t4, c
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $t8, d
lw $t3, 0($t8)
move $t3, $v0
li $v0, 5
syscall
la $t9, e
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, a
sw $t2, 0($s0)
la $t2, f
lw $t6, 0($t2)
move $t6, $v0
li $v0, 5
syscall
la $s0, b
sw $t7, 0($s0)
la $t7, g
lw $t5, 0($t7)
move $t5, $v0
li $v0, 5
syscall
la $s0, c
sw $t1, 0($s0)
la $t1, h
lw $t4, 0($t1)
move $t4, $v0
li $v0, 5
syscall
la $s0, d
sw $t3, 0($s0)
la $t3, i
lw $t8, 0($t3)
move $t8, $v0
li $v0, 5
syscall
la $s0, e
sw $t0, 0($s0)
la $t0, j
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $s0, f
sw $t6, 0($s0)
la $t6, k
lw $t2, 0($t6)
move $t2, $v0
li $v0, 5
syscall
la $s0, g
sw $t5, 0($s0)
la $t5, l
lw $t7, 0($t5)
move $t7, $v0
li $v0, 5
syscall
la $s0, h
sw $t4, 0($s0)
la $t4, m
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $s0, i
sw $t8, 0($s0)
la $t8, n
lw $t3, 0($t8)
move $t3, $v0
li $v0, 5
syscall
la $s0, j
sw $t9, 0($s0)
la $t9, o
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, k
sw $t2, 0($s0)
la $t2, p
lw $t6, 0($t2)
move $t6, $v0
li $v0, 5
syscall
la $s0, l
sw $t7, 0($s0)
la $t7, q
lw $t5, 0($t7)
move $t5, $v0
li $v0, 5
syscall
la $s0, m
sw $t1, 0($s0)
la $t1, r
lw $t4, 0($t1)
move $t4, $v0
li $v0, 5
syscall
la $s0, n
sw $t3, 0($s0)
la $t3, s
lw $t8, 0($t3)
move $t8, $v0
li $v0, 5
syscall
la $s0, o
sw $t0, 0($s0)
la $t0, t
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $s0, p
sw $t6, 0($s0)
la $t6, u
lw $t2, 0($t6)
move $t2, $v0
li $v0, 5
syscall
la $s0, q
sw $t5, 0($s0)
la $t5, v
lw $t7, 0($t5)
move $t7, $v0
li $v0, 5
syscall
la $s0, r
sw $t4, 0($s0)
la $t4, w
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $s0, s
sw $t8, 0($s0)
la $t8, x
lw $t3, 0($t8)
move $t3, $v0
li $v0, 5
syscall
la $s0, t
sw $t9, 0($s0)
la $t9, y
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, u
sw $t2, 0($s0)
la $t2, z
lw $t6, 0($t2)
move $t6, $v0
la $s0, v
sw $t7, 0($s0)
move $t7, $t6
la $t5, ay
sw $t7, 0($t5)
la $t7, ay
lw $t5, 0($t7)
add $t5, $t5, $t0
la $t7, ay
sw $t5, 0($t7)
la $t7, ay
lw $t5, 0($t7)
la $s0, w
sw $t1, 0($s0)
move $t1, $t5
la $t4, ax
sw $t1, 0($t4)
la $t1, ax
lw $t4, 0($t1)
add $t4, $t4, $t3
la $t1, ax
sw $t4, 0($t1)
la $t1, ax
lw $t4, 0($t1)
la $s0, x
sw $t3, 0($s0)
move $t3, $t4
la $t8, aw
sw $t3, 0($t8)
la $t3, w
lw $t8, 0($t3)
la $s0, y
sw $t0, 0($s0)
la $t9, aw
lw $t0, 0($t9)
add $t0, $t0, $t8
la $t9, aw
sw $t0, 0($t9)
la $t0, aw
lw $t9, 0($t0)
la $s0, z
sw $t6, 0($s0)
move $t6, $t9
la $t2, av
sw $t6, 0($t2)
la $t2, v
lw $t6, 0($t2)
la $s0, ay
sw $t5, 0($s0)
la $t7, av
lw $t5, 0($t7)
add $t5, $t5, $t6
la $t7, av
sw $t5, 0($t7)
la $t7, av
lw $t5, 0($t7)
la $s0, ax
sw $t4, 0($s0)
move $t4, $t5
la $t1, au
sw $t4, 0($t1)
la $t1, u
lw $t4, 0($t1)
la $s0, w
sw $t8, 0($s0)
la $t3, au
lw $t8, 0($t3)
add $t8, $t8, $t4
la $t3, au
sw $t8, 0($t3)
la $t3, au
lw $t8, 0($t3)
la $s0, aw
sw $t9, 0($s0)
move $t9, $t8
la $t0, at
sw $t9, 0($t0)
la $t0, t
lw $t9, 0($t0)
la $s0, v
sw $t6, 0($s0)
la $t2, at
lw $t6, 0($t2)
add $t6, $t6, $t9
la $t2, at
sw $t6, 0($t2)
la $t2, at
lw $t6, 0($t2)
la $s0, av
sw $t5, 0($s0)
move $t5, $t6
la $t7, as
sw $t5, 0($t7)
la $t7, s
lw $t5, 0($t7)
la $s0, u
sw $t4, 0($s0)
la $t1, as
lw $t4, 0($t1)
add $t4, $t4, $t5
la $t1, as
sw $t4, 0($t1)
la $t1, as
lw $t4, 0($t1)
la $s0, au
sw $t8, 0($s0)
move $t8, $t4
la $t3, ar
sw $t8, 0($t3)
la $t3, r
lw $t8, 0($t3)
la $s0, t
sw $t9, 0($s0)
la $t0, ar
lw $t9, 0($t0)
add $t9, $t9, $t8
la $t0, ar
sw $t9, 0($t0)
la $t0, ar
lw $t9, 0($t0)
la $s0, at
sw $t6, 0($s0)
move $t6, $t9
la $t2, aq
sw $t6, 0($t2)
la $t2, q
lw $t6, 0($t2)
la $s0, s
sw $t5, 0($s0)
la $t7, aq
lw $t5, 0($t7)
add $t5, $t5, $t6
la $t7, aq
sw $t5, 0($t7)
la $t7, aq
lw $t5, 0($t7)
la $s0, as
sw $t4, 0($s0)
move $t4, $t5
la $t1, ap
sw $t4, 0($t1)
la $t1, p
lw $t4, 0($t1)
la $s0, r
sw $t8, 0($s0)
la $t3, ap
lw $t8, 0($t3)
add $t8, $t8, $t4
la $t3, ap
sw $t8, 0($t3)
la $t3, ap
lw $t8, 0($t3)
la $s0, ar
sw $t9, 0($s0)
move $t9, $t8
la $t0, ao
sw $t9, 0($t0)
la $t0, o
lw $t9, 0($t0)
la $s0, q
sw $t6, 0($s0)
la $t2, ao
lw $t6, 0($t2)
add $t6, $t6, $t9
la $t2, ao
sw $t6, 0($t2)
la $t2, ao
lw $t6, 0($t2)
la $s0, aq
sw $t5, 0($s0)
move $t5, $t6
la $t7, an
sw $t5, 0($t7)
la $t7, n
lw $t5, 0($t7)
la $s0, p
sw $t4, 0($s0)
la $t1, an
lw $t4, 0($t1)
add $t4, $t4, $t5
la $t1, an
sw $t4, 0($t1)
la $t1, an
lw $t4, 0($t1)
la $s0, ap
sw $t8, 0($s0)
move $t8, $t4
la $t3, am
sw $t8, 0($t3)
la $t3, m
lw $t8, 0($t3)
la $s0, o
sw $t9, 0($s0)
la $t0, am
lw $t9, 0($t0)
add $t9, $t9, $t8
la $t0, am
sw $t9, 0($t0)
la $t0, am
lw $t9, 0($t0)
la $s0, ao
sw $t6, 0($s0)
move $t6, $t9
la $t2, al
sw $t6, 0($t2)
la $t2, l
lw $t6, 0($t2)
la $s0, n
sw $t5, 0($s0)
la $t7, al
lw $t5, 0($t7)
add $t5, $t5, $t6
la $t7, al
sw $t5, 0($t7)
la $t7, al
lw $t5, 0($t7)
la $s0, an
sw $t4, 0($s0)
move $t4, $t5
la $t1, ak
sw $t4, 0($t1)
la $t1, k
lw $t4, 0($t1)
la $s0, m
sw $t8, 0($s0)
la $t3, ak
lw $t8, 0($t3)
add $t8, $t8, $t4
la $t3, ak
sw $t8, 0($t3)
la $t3, ak
lw $t8, 0($t3)
la $s0, am
sw $t9, 0($s0)
move $t9, $t8
la $t0, aj
sw $t9, 0($t0)
la $t0, j
lw $t9, 0($t0)
la $s0, l
sw $t6, 0($s0)
la $t2, aj
lw $t6, 0($t2)
add $t6, $t6, $t9
la $t2, aj
sw $t6, 0($t2)
la $t2, aj
lw $t6, 0($t2)
la $s0, al
sw $t5, 0($s0)
move $t5, $t6
la $t7, ai
sw $t5, 0($t7)
la $t7, i
lw $t5, 0($t7)
la $s0, k
sw $t4, 0($s0)
la $t1, ai
lw $t4, 0($t1)
add $t4, $t4, $t5
la $t1, ai
sw $t4, 0($t1)
la $t1, ai
lw $t4, 0($t1)
la $s0, ak
sw $t8, 0($s0)
move $t8, $t4
la $t3, ah
sw $t8, 0($t3)
la $t3, h
lw $t8, 0($t3)
la $s0, j
sw $t9, 0($s0)
la $t0, ah
lw $t9, 0($t0)
add $t9, $t9, $t8
la $t0, ah
sw $t9, 0($t0)
la $t0, ah
lw $t9, 0($t0)
la $s0, aj
sw $t6, 0($s0)
move $t6, $t9
la $t2, ag
sw $t6, 0($t2)
la $t2, g
lw $t6, 0($t2)
la $s0, i
sw $t5, 0($s0)
la $t7, ag
lw $t5, 0($t7)
add $t5, $t5, $t6
la $t7, ag
sw $t5, 0($t7)
la $t7, ag
lw $t5, 0($t7)
la $s0, ai
sw $t4, 0($s0)
move $t4, $t5
la $t1, af
sw $t4, 0($t1)
la $t1, f
lw $t4, 0($t1)
la $s0, h
sw $t8, 0($s0)
la $t3, af
lw $t8, 0($t3)
add $t8, $t8, $t4
la $t3, af
sw $t8, 0($t3)
la $t3, af
lw $t8, 0($t3)
la $s0, ah
sw $t9, 0($s0)
move $t9, $t8
la $t0, ae
sw $t9, 0($t0)
la $t0, e
lw $t9, 0($t0)
la $s0, g
sw $t6, 0($s0)
la $t2, ae
lw $t6, 0($t2)
add $t6, $t6, $t9
la $t2, ae
sw $t6, 0($t2)
la $t2, ae
lw $t6, 0($t2)
la $s0, ag
sw $t5, 0($s0)
move $t5, $t6
la $t7, ad
sw $t5, 0($t7)
la $t7, d
lw $t5, 0($t7)
la $s0, f
sw $t4, 0($s0)
la $t1, ad
lw $t4, 0($t1)
add $t4, $t4, $t5
la $t1, ad
sw $t4, 0($t1)
la $t1, ad
lw $t4, 0($t1)
la $s0, af
sw $t8, 0($s0)
move $t8, $t4
la $t3, ac
sw $t8, 0($t3)
la $t3, c
lw $t8, 0($t3)
la $s0, e
sw $t9, 0($s0)
la $t0, ac
lw $t9, 0($t0)
add $t9, $t9, $t8
la $t0, ac
sw $t9, 0($t0)
la $t0, ac
lw $t9, 0($t0)
la $s0, ae
sw $t6, 0($s0)
move $t6, $t9
la $t2, ab
sw $t6, 0($t2)
la $t2, b
lw $t6, 0($t2)
la $s0, d
sw $t5, 0($s0)
la $t7, ab
lw $t5, 0($t7)
add $t5, $t5, $t6
la $t7, ab
sw $t5, 0($t7)
la $t7, ab
lw $t5, 0($t7)
la $s0, ad
sw $t4, 0($s0)
move $t4, $t5
la $t1, aa
sw $t4, 0($t1)
la $t1, a
lw $t4, 0($t1)
la $s0, c
sw $t8, 0($s0)
la $t3, aa
lw $t8, 0($t3)
add $t8, $t8, $t4
la $t3, aa
sw $t8, 0($t3)
la $t3, aa
lw $t8, 0($t3)
li $v0, 1
move $a0, $t8
syscall
move $a0, $t4
syscall
move $a0, $t6
syscall
la $s0, ac
sw $t9, 0($s0)
la $t0, c
lw $t9, 0($t0)
move $a0, $t9
syscall
la $s0, b
sw $t6, 0($s0)
la $t2, d
lw $t6, 0($t2)
move $a0, $t6
syscall
la $s0, ab
sw $t5, 0($s0)
la $t7, e
lw $t5, 0($t7)
move $a0, $t5
syscall
la $s0, a
sw $t4, 0($s0)
la $t1, f
lw $t4, 0($t1)
move $a0, $t4
syscall
la $s0, aa
sw $t8, 0($s0)
la $t3, g
lw $t8, 0($t3)
move $a0, $t8
syscall
la $s0, c
sw $t9, 0($s0)
la $t0, h
lw $t9, 0($t0)
move $a0, $t9
syscall
la $s0, d
sw $t6, 0($s0)
la $t2, i
lw $t6, 0($t2)
move $a0, $t6
syscall
la $s0, e
sw $t5, 0($s0)
la $t7, j
lw $t5, 0($t7)
move $a0, $t5
syscall
la $s0, f
sw $t4, 0($s0)
la $t1, k
lw $t4, 0($t1)
move $a0, $t4
syscall
la $s0, g
sw $t8, 0($s0)
la $t3, l
lw $t8, 0($t3)
move $a0, $t8
syscall
la $s0, h
sw $t9, 0($s0)
la $t0, m
lw $t9, 0($t0)
move $a0, $t9
syscall
la $s0, i
sw $t6, 0($s0)
la $t2, n
lw $t6, 0($t2)
move $a0, $t6
syscall
la $s0, j
sw $t5, 0($s0)
la $t7, o
lw $t5, 0($t7)
move $a0, $t5
syscall
la $s0, k
sw $t4, 0($s0)
la $t1, p
lw $t4, 0($t1)
move $a0, $t4
syscall
la $s0, l
sw $t8, 0($s0)
la $t3, q
lw $t8, 0($t3)
move $a0, $t8
syscall
la $s0, m
sw $t9, 0($s0)
la $t0, r
lw $t9, 0($t0)
move $a0, $t9
syscall
la $s0, n
sw $t6, 0($s0)
la $t2, s
lw $t6, 0($t2)
move $a0, $t6
syscall
la $s0, o
sw $t5, 0($s0)
la $t7, t
lw $t5, 0($t7)
move $a0, $t5
syscall
la $s0, p
sw $t4, 0($s0)
la $t1, u
lw $t4, 0($t1)
move $a0, $t4
syscall
la $s0, q
sw $t8, 0($s0)
la $t3, v
lw $t8, 0($t3)
move $a0, $t8
syscall
la $s0, r
sw $t9, 0($s0)
la $t0, w
lw $t9, 0($t0)
move $a0, $t9
syscall
la $s0, s
sw $t6, 0($s0)
la $t2, x
lw $t6, 0($t2)
move $a0, $t6
syscall
la $s0, t
sw $t5, 0($s0)
la $t7, y
lw $t5, 0($t7)
move $a0, $t5
syscall
la $s0, u
sw $t4, 0($s0)
la $t1, z
lw $t4, 0($t1)
move $a0, $t4
syscall
