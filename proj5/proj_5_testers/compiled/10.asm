.data
ap:	.word	0	# temp_p in original
r:	.word	0	# r in original
l:	.word	0	# l in original
as:	.word	0	# temp_s in original
s:	.word	0	# s in original
ax:	.word	0	# temp_x in original
e:	.word	0	# e in original
aj:	.word	0	# temp_j in original
an:	.word	0	# temp_n in original
ay:	.word	0	# temp_y in original
g:	.word	0	# g in original
h:	.word	0	# h in original
j:	.word	0	# j in original
n:	.word	0	# n in original
ai:	.word	0	# temp_i in original
z:	.word	0	# z in original
ae:	.word	0	# temp_e in original
at:	.word	0	# temp_t in original
au:	.word	0	# temp_u in original
am:	.word	0	# temp_m in original
af:	.word	0	# temp_f in original
al:	.word	0	# temp_l in original
ah:	.word	0	# temp_h in original
aa:	.word	0	# temp_a in original
ar:	.word	0	# temp_r in original
v:	.word	0	# v in original
p:	.word	0	# p in original
ab:	.word	0	# temp_b in original
ao:	.word	0	# temp_o in original
d:	.word	0	# d in original
w:	.word	0	# w in original
y:	.word	0	# y in original
i:	.word	0	# i in original
av:	.word	0	# temp_v in original
ak:	.word	0	# temp_k in original
m:	.word	0	# m in original
c:	.word	0	# c in original
ac:	.word	0	# temp_c in original
u:	.word	0	# u in original
f:	.word	0	# f in original
o:	.word	0	# o in original
k:	.word	0	# k in original
x:	.word	0	# x in original
b:	.word	0	# b in original
a:	.word	0	# a in original
ad:	.word	0	# temp_d in original
q:	.word	0	# q in original
aw:	.word	0	# temp_w in original
t:	.word	0	# t in original
ag:	.word	0	# temp_g in original
aq:	.word	0	# temp_q in original
.text
li $v0, 5
syscall
la $t1, a
lw $t9, 0($t1)
move $t9, $v0
li $v0, 5
syscall
la $t7, b
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $t5, c
lw $t6, 0($t5)
move $t6, $v0
li $v0, 5
syscall
la $t2, d
lw $t0, 0($t2)
move $t0, $v0
li $v0, 5
syscall
la $t4, e
lw $t8, 0($t4)
move $t8, $v0
li $v0, 5
syscall
la $s0, a
sw $t9, 0($s0)
la $t9, f
lw $t1, 0($t9)
move $t1, $v0
li $v0, 5
syscall
la $s0, b
sw $t3, 0($s0)
la $t3, g
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s0, c
sw $t6, 0($s0)
la $t6, h
lw $t5, 0($t6)
move $t5, $v0
li $v0, 5
syscall
la $s0, d
sw $t0, 0($s0)
la $t0, i
lw $t2, 0($t0)
move $t2, $v0
li $v0, 5
syscall
la $s0, e
sw $t8, 0($s0)
la $t8, j
lw $t4, 0($t8)
move $t4, $v0
li $v0, 5
syscall
la $s0, f
sw $t1, 0($s0)
la $t1, k
lw $t9, 0($t1)
move $t9, $v0
li $v0, 5
syscall
la $s0, g
sw $t7, 0($s0)
la $t7, l
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s0, h
sw $t5, 0($s0)
la $t5, m
lw $t6, 0($t5)
move $t6, $v0
li $v0, 5
syscall
la $s0, i
sw $t2, 0($s0)
la $t2, n
lw $t0, 0($t2)
move $t0, $v0
li $v0, 5
syscall
la $s0, j
sw $t4, 0($s0)
la $t4, o
lw $t8, 0($t4)
move $t8, $v0
li $v0, 5
syscall
la $s0, k
sw $t9, 0($s0)
la $t9, p
lw $t1, 0($t9)
move $t1, $v0
li $v0, 5
syscall
la $s0, l
sw $t3, 0($s0)
la $t3, q
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s0, m
sw $t6, 0($s0)
la $t6, r
lw $t5, 0($t6)
move $t5, $v0
li $v0, 5
syscall
la $s0, n
sw $t0, 0($s0)
la $t0, s
lw $t2, 0($t0)
move $t2, $v0
li $v0, 5
syscall
la $s0, o
sw $t8, 0($s0)
la $t8, t
lw $t4, 0($t8)
move $t4, $v0
li $v0, 5
syscall
la $s0, p
sw $t1, 0($s0)
la $t1, u
lw $t9, 0($t1)
move $t9, $v0
li $v0, 5
syscall
la $s0, q
sw $t7, 0($s0)
la $t7, v
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s0, r
sw $t5, 0($s0)
la $t5, w
lw $t6, 0($t5)
move $t6, $v0
li $v0, 5
syscall
la $s0, s
sw $t2, 0($s0)
la $t2, x
lw $t0, 0($t2)
move $t0, $v0
li $v0, 5
syscall
la $s0, t
sw $t4, 0($s0)
la $t4, y
lw $t8, 0($t4)
move $t8, $v0
li $v0, 5
syscall
la $s0, u
sw $t9, 0($s0)
la $t9, z
lw $t1, 0($t9)
move $t1, $v0
la $s0, v
sw $t3, 0($s0)
move $t3, $t1
la $t7, ay
sw $t3, 0($t7)
la $t3, ay
lw $t7, 0($t3)
add $t7, $t7, $t8
la $t3, ay
sw $t7, 0($t3)
la $t3, ay
lw $t7, 0($t3)
la $s0, w
sw $t6, 0($s0)
move $t6, $t7
la $t5, ax
sw $t6, 0($t5)
la $t6, ax
lw $t5, 0($t6)
add $t5, $t5, $t0
la $t6, ax
sw $t5, 0($t6)
la $t6, ax
lw $t5, 0($t6)
la $s0, x
sw $t0, 0($s0)
move $t0, $t5
la $t2, aw
sw $t0, 0($t2)
la $t0, w
lw $t2, 0($t0)
la $s0, y
sw $t8, 0($s0)
la $t4, aw
lw $t8, 0($t4)
add $t8, $t8, $t2
la $t4, aw
sw $t8, 0($t4)
la $t8, aw
lw $t4, 0($t8)
la $s0, z
sw $t1, 0($s0)
move $t1, $t4
la $t9, av
sw $t1, 0($t9)
la $t9, v
lw $t1, 0($t9)
la $s0, ay
sw $t7, 0($s0)
la $t3, av
lw $t7, 0($t3)
add $t7, $t7, $t1
la $t3, av
sw $t7, 0($t3)
la $t3, av
lw $t7, 0($t3)
la $s0, ax
sw $t5, 0($s0)
move $t5, $t7
la $t6, au
sw $t5, 0($t6)
la $t6, u
lw $t5, 0($t6)
la $s0, w
sw $t2, 0($s0)
la $t0, au
lw $t2, 0($t0)
add $t2, $t2, $t5
la $t0, au
sw $t2, 0($t0)
la $t0, au
lw $t2, 0($t0)
la $s0, aw
sw $t4, 0($s0)
move $t4, $t2
la $t8, at
sw $t4, 0($t8)
la $t8, t
lw $t4, 0($t8)
la $s0, v
sw $t1, 0($s0)
la $t9, at
lw $t1, 0($t9)
add $t1, $t1, $t4
la $t9, at
sw $t1, 0($t9)
la $t9, at
lw $t1, 0($t9)
la $s0, av
sw $t7, 0($s0)
move $t7, $t1
la $t3, as
sw $t7, 0($t3)
la $t3, s
lw $t7, 0($t3)
la $s0, u
sw $t5, 0($s0)
la $t6, as
lw $t5, 0($t6)
add $t5, $t5, $t7
la $t6, as
sw $t5, 0($t6)
la $t6, as
lw $t5, 0($t6)
la $s0, au
sw $t2, 0($s0)
move $t2, $t5
la $t0, ar
sw $t2, 0($t0)
la $t0, r
lw $t2, 0($t0)
la $s0, t
sw $t4, 0($s0)
la $t8, ar
lw $t4, 0($t8)
add $t4, $t4, $t2
la $t8, ar
sw $t4, 0($t8)
la $t8, ar
lw $t4, 0($t8)
la $s0, at
sw $t1, 0($s0)
move $t1, $t4
la $t9, aq
sw $t1, 0($t9)
la $t9, q
lw $t1, 0($t9)
la $s0, s
sw $t7, 0($s0)
la $t3, aq
lw $t7, 0($t3)
add $t7, $t7, $t1
la $t3, aq
sw $t7, 0($t3)
la $t3, aq
lw $t7, 0($t3)
la $s0, as
sw $t5, 0($s0)
move $t5, $t7
la $t6, ap
sw $t5, 0($t6)
la $t6, p
lw $t5, 0($t6)
la $s0, r
sw $t2, 0($s0)
la $t0, ap
lw $t2, 0($t0)
add $t2, $t2, $t5
la $t0, ap
sw $t2, 0($t0)
la $t0, ap
lw $t2, 0($t0)
la $s0, ar
sw $t4, 0($s0)
move $t4, $t2
la $t8, ao
sw $t4, 0($t8)
la $t8, o
lw $t4, 0($t8)
la $s0, q
sw $t1, 0($s0)
la $t9, ao
lw $t1, 0($t9)
add $t1, $t1, $t4
la $t9, ao
sw $t1, 0($t9)
la $t9, ao
lw $t1, 0($t9)
la $s0, aq
sw $t7, 0($s0)
move $t7, $t1
la $t3, an
sw $t7, 0($t3)
la $t3, n
lw $t7, 0($t3)
la $s0, p
sw $t5, 0($s0)
la $t6, an
lw $t5, 0($t6)
add $t5, $t5, $t7
la $t6, an
sw $t5, 0($t6)
la $t6, an
lw $t5, 0($t6)
la $s0, ap
sw $t2, 0($s0)
move $t2, $t5
la $t0, am
sw $t2, 0($t0)
la $t0, m
lw $t2, 0($t0)
la $s0, o
sw $t4, 0($s0)
la $t8, am
lw $t4, 0($t8)
add $t4, $t4, $t2
la $t8, am
sw $t4, 0($t8)
la $t8, am
lw $t4, 0($t8)
la $s0, ao
sw $t1, 0($s0)
move $t1, $t4
la $t9, al
sw $t1, 0($t9)
la $t9, l
lw $t1, 0($t9)
la $s0, n
sw $t7, 0($s0)
la $t3, al
lw $t7, 0($t3)
add $t7, $t7, $t1
la $t3, al
sw $t7, 0($t3)
la $t3, al
lw $t7, 0($t3)
la $s0, an
sw $t5, 0($s0)
move $t5, $t7
la $t6, ak
sw $t5, 0($t6)
la $t6, k
lw $t5, 0($t6)
la $s0, m
sw $t2, 0($s0)
la $t0, ak
lw $t2, 0($t0)
add $t2, $t2, $t5
la $t0, ak
sw $t2, 0($t0)
la $t0, ak
lw $t2, 0($t0)
la $s0, am
sw $t4, 0($s0)
move $t4, $t2
la $t8, aj
sw $t4, 0($t8)
la $t8, j
lw $t4, 0($t8)
la $s0, l
sw $t1, 0($s0)
la $t9, aj
lw $t1, 0($t9)
add $t1, $t1, $t4
la $t9, aj
sw $t1, 0($t9)
la $t9, aj
lw $t1, 0($t9)
la $s0, al
sw $t7, 0($s0)
move $t7, $t1
la $t3, ai
sw $t7, 0($t3)
la $t3, i
lw $t7, 0($t3)
la $s0, k
sw $t5, 0($s0)
la $t6, ai
lw $t5, 0($t6)
add $t5, $t5, $t7
la $t6, ai
sw $t5, 0($t6)
la $t6, ai
lw $t5, 0($t6)
la $s0, ak
sw $t2, 0($s0)
move $t2, $t5
la $t0, ah
sw $t2, 0($t0)
la $t0, h
lw $t2, 0($t0)
la $s0, j
sw $t4, 0($s0)
la $t8, ah
lw $t4, 0($t8)
add $t4, $t4, $t2
la $t8, ah
sw $t4, 0($t8)
la $t8, ah
lw $t4, 0($t8)
la $s0, aj
sw $t1, 0($s0)
move $t1, $t4
la $t9, ag
sw $t1, 0($t9)
la $t9, g
lw $t1, 0($t9)
la $s0, i
sw $t7, 0($s0)
la $t3, ag
lw $t7, 0($t3)
add $t7, $t7, $t1
la $t3, ag
sw $t7, 0($t3)
la $t3, ag
lw $t7, 0($t3)
la $s0, ai
sw $t5, 0($s0)
move $t5, $t7
la $t6, af
sw $t5, 0($t6)
la $t6, f
lw $t5, 0($t6)
la $s0, h
sw $t2, 0($s0)
la $t0, af
lw $t2, 0($t0)
add $t2, $t2, $t5
la $t0, af
sw $t2, 0($t0)
la $t0, af
lw $t2, 0($t0)
la $s0, ah
sw $t4, 0($s0)
move $t4, $t2
la $t8, ae
sw $t4, 0($t8)
la $t8, e
lw $t4, 0($t8)
la $s0, g
sw $t1, 0($s0)
la $t9, ae
lw $t1, 0($t9)
add $t1, $t1, $t4
la $t9, ae
sw $t1, 0($t9)
la $t9, ae
lw $t1, 0($t9)
la $s0, ag
sw $t7, 0($s0)
move $t7, $t1
la $t3, ad
sw $t7, 0($t3)
la $t3, d
lw $t7, 0($t3)
la $s0, f
sw $t5, 0($s0)
la $t6, ad
lw $t5, 0($t6)
add $t5, $t5, $t7
la $t6, ad
sw $t5, 0($t6)
la $t6, ad
lw $t5, 0($t6)
la $s0, af
sw $t2, 0($s0)
move $t2, $t5
la $t0, ac
sw $t2, 0($t0)
la $t0, c
lw $t2, 0($t0)
la $s0, e
sw $t4, 0($s0)
la $t8, ac
lw $t4, 0($t8)
add $t4, $t4, $t2
la $t8, ac
sw $t4, 0($t8)
la $t8, ac
lw $t4, 0($t8)
la $s0, ae
sw $t1, 0($s0)
move $t1, $t4
la $t9, ab
sw $t1, 0($t9)
la $t9, b
lw $t1, 0($t9)
la $s0, d
sw $t7, 0($s0)
la $t3, ab
lw $t7, 0($t3)
add $t7, $t7, $t1
la $t3, ab
sw $t7, 0($t3)
la $t3, ab
lw $t7, 0($t3)
la $s0, ad
sw $t5, 0($s0)
move $t5, $t7
la $t6, aa
sw $t5, 0($t6)
la $t6, a
lw $t5, 0($t6)
la $s0, c
sw $t2, 0($s0)
la $t0, aa
lw $t2, 0($t0)
add $t2, $t2, $t5
la $t0, aa
sw $t2, 0($t0)
la $t0, aa
lw $t2, 0($t0)
li $v0, 1
move $a0, $t2
syscall
