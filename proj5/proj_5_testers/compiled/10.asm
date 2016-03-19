.data
ag:	.word	0	# temp_g in original
aq:	.word	0	# temp_q in original
a:	.word	0	# a in original
al:	.word	0	# temp_l in original
ax:	.word	0	# temp_x in original
u:	.word	0	# u in original
j:	.word	0	# j in original
t:	.word	0	# t in original
o:	.word	0	# o in original
h:	.word	0	# h in original
e:	.word	0	# e in original
ah:	.word	0	# temp_h in original
w:	.word	0	# w in original
ae:	.word	0	# temp_e in original
v:	.word	0	# v in original
g:	.word	0	# g in original
ao:	.word	0	# temp_o in original
ad:	.word	0	# temp_d in original
l:	.word	0	# l in original
q:	.word	0	# q in original
ai:	.word	0	# temp_i in original
d:	.word	0	# d in original
at:	.word	0	# temp_t in original
aj:	.word	0	# temp_j in original
r:	.word	0	# r in original
an:	.word	0	# temp_n in original
s:	.word	0	# s in original
am:	.word	0	# temp_m in original
ap:	.word	0	# temp_p in original
f:	.word	0	# f in original
p:	.word	0	# p in original
av:	.word	0	# temp_v in original
au:	.word	0	# temp_u in original
ar:	.word	0	# temp_r in original
ab:	.word	0	# temp_b in original
z:	.word	0	# z in original
c:	.word	0	# c in original
x:	.word	0	# x in original
af:	.word	0	# temp_f in original
b:	.word	0	# b in original
m:	.word	0	# m in original
n:	.word	0	# n in original
y:	.word	0	# y in original
as:	.word	0	# temp_s in original
ak:	.word	0	# temp_k in original
aw:	.word	0	# temp_w in original
i:	.word	0	# i in original
aa:	.word	0	# temp_a in original
ac:	.word	0	# temp_c in original
ay:	.word	0	# temp_y in original
k:	.word	0	# k in original
.text
li $v0, 5
syscall
la $t3, a
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $t8, b
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $t6, c
lw $t4, 0($t6)
move $t4, $v0
li $v0, 5
syscall
la $t5, d
lw $t0, 0($t5)
move $t0, $v0
li $v0, 5
syscall
la $t2, e
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $s0, a
sw $t7, 0($s0)
la $t7, f
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s0, b
sw $t9, 0($s0)
la $t9, g
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s0, c
sw $t4, 0($s0)
la $t4, h
lw $t6, 0($t4)
move $t6, $v0
li $v0, 5
syscall
la $s0, d
sw $t0, 0($s0)
la $t0, i
lw $t5, 0($t0)
move $t5, $v0
li $v0, 5
syscall
la $s0, e
sw $t1, 0($s0)
la $t1, j
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $s0, f
sw $t3, 0($s0)
la $t3, k
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s0, g
sw $t8, 0($s0)
la $t8, l
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, h
sw $t6, 0($s0)
la $t6, m
lw $t4, 0($t6)
move $t4, $v0
li $v0, 5
syscall
la $s0, i
sw $t5, 0($s0)
la $t5, n
lw $t0, 0($t5)
move $t0, $v0
li $v0, 5
syscall
la $s0, j
sw $t2, 0($s0)
la $t2, o
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $s0, k
sw $t7, 0($s0)
la $t7, p
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s0, l
sw $t9, 0($s0)
la $t9, q
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s0, m
sw $t4, 0($s0)
la $t4, r
lw $t6, 0($t4)
move $t6, $v0
li $v0, 5
syscall
la $s0, n
sw $t0, 0($s0)
la $t0, s
lw $t5, 0($t0)
move $t5, $v0
li $v0, 5
syscall
la $s0, o
sw $t1, 0($s0)
la $t1, t
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $s0, p
sw $t3, 0($s0)
la $t3, u
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s0, q
sw $t8, 0($s0)
la $t8, v
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, r
sw $t6, 0($s0)
la $t6, w
lw $t4, 0($t6)
move $t4, $v0
li $v0, 5
syscall
la $s0, s
sw $t5, 0($s0)
la $t5, x
lw $t0, 0($t5)
move $t0, $v0
li $v0, 5
syscall
la $s0, t
sw $t2, 0($s0)
la $t2, y
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $s0, u
sw $t7, 0($s0)
la $t7, z
lw $t3, 0($t7)
move $t3, $v0
la $s0, v
sw $t9, 0($s0)
move $t9, $t3
la $t8, ay
sw $t9, 0($t8)
la $t9, ay
lw $t8, 0($t9)
add $t8, $t8, $t1
la $t9, ay
sw $t8, 0($t9)
la $t9, ay
lw $t8, 0($t9)
la $s0, w
sw $t4, 0($s0)
move $t4, $t8
la $t6, ax
sw $t4, 0($t6)
la $t4, ax
lw $t6, 0($t4)
add $t6, $t6, $t0
la $t4, ax
sw $t6, 0($t4)
la $t4, ax
lw $t6, 0($t4)
la $s0, x
sw $t0, 0($s0)
move $t0, $t6
la $t5, aw
sw $t0, 0($t5)
la $t0, w
lw $t5, 0($t0)
la $s0, y
sw $t1, 0($s0)
la $t2, aw
lw $t1, 0($t2)
add $t1, $t1, $t5
la $t2, aw
sw $t1, 0($t2)
la $t1, aw
lw $t2, 0($t1)
la $s0, z
sw $t3, 0($s0)
move $t3, $t2
la $t7, av
sw $t3, 0($t7)
la $t7, v
lw $t3, 0($t7)
la $s0, ay
sw $t8, 0($s0)
la $t9, av
lw $t8, 0($t9)
add $t8, $t8, $t3
la $t9, av
sw $t8, 0($t9)
la $t9, av
lw $t8, 0($t9)
la $s0, ax
sw $t6, 0($s0)
move $t6, $t8
la $t4, au
sw $t6, 0($t4)
la $t4, u
lw $t6, 0($t4)
la $s0, w
sw $t5, 0($s0)
la $t0, au
lw $t5, 0($t0)
add $t5, $t5, $t6
la $t0, au
sw $t5, 0($t0)
la $t0, au
lw $t5, 0($t0)
la $s0, aw
sw $t2, 0($s0)
move $t2, $t5
la $t1, at
sw $t2, 0($t1)
la $t1, t
lw $t2, 0($t1)
la $s0, v
sw $t3, 0($s0)
la $t7, at
lw $t3, 0($t7)
add $t3, $t3, $t2
la $t7, at
sw $t3, 0($t7)
la $t7, at
lw $t3, 0($t7)
la $s0, av
sw $t8, 0($s0)
move $t8, $t3
la $t9, as
sw $t8, 0($t9)
la $t9, s
lw $t8, 0($t9)
la $s0, u
sw $t6, 0($s0)
la $t4, as
lw $t6, 0($t4)
add $t6, $t6, $t8
la $t4, as
sw $t6, 0($t4)
la $t4, as
lw $t6, 0($t4)
la $s0, au
sw $t5, 0($s0)
move $t5, $t6
la $t0, ar
sw $t5, 0($t0)
la $t0, r
lw $t5, 0($t0)
la $s0, t
sw $t2, 0($s0)
la $t1, ar
lw $t2, 0($t1)
add $t2, $t2, $t5
la $t1, ar
sw $t2, 0($t1)
la $t1, ar
lw $t2, 0($t1)
la $s0, at
sw $t3, 0($s0)
move $t3, $t2
la $t7, aq
sw $t3, 0($t7)
la $t7, q
lw $t3, 0($t7)
la $s0, s
sw $t8, 0($s0)
la $t9, aq
lw $t8, 0($t9)
add $t8, $t8, $t3
la $t9, aq
sw $t8, 0($t9)
la $t9, aq
lw $t8, 0($t9)
la $s0, as
sw $t6, 0($s0)
move $t6, $t8
la $t4, ap
sw $t6, 0($t4)
la $t4, p
lw $t6, 0($t4)
la $s0, r
sw $t5, 0($s0)
la $t0, ap
lw $t5, 0($t0)
add $t5, $t5, $t6
la $t0, ap
sw $t5, 0($t0)
la $t0, ap
lw $t5, 0($t0)
la $s0, ar
sw $t2, 0($s0)
move $t2, $t5
la $t1, ao
sw $t2, 0($t1)
la $t1, o
lw $t2, 0($t1)
la $s0, q
sw $t3, 0($s0)
la $t7, ao
lw $t3, 0($t7)
add $t3, $t3, $t2
la $t7, ao
sw $t3, 0($t7)
la $t7, ao
lw $t3, 0($t7)
la $s0, aq
sw $t8, 0($s0)
move $t8, $t3
la $t9, an
sw $t8, 0($t9)
la $t9, n
lw $t8, 0($t9)
la $s0, p
sw $t6, 0($s0)
la $t4, an
lw $t6, 0($t4)
add $t6, $t6, $t8
la $t4, an
sw $t6, 0($t4)
la $t4, an
lw $t6, 0($t4)
la $s0, ap
sw $t5, 0($s0)
move $t5, $t6
la $t0, am
sw $t5, 0($t0)
la $t0, m
lw $t5, 0($t0)
la $s0, o
sw $t2, 0($s0)
la $t1, am
lw $t2, 0($t1)
add $t2, $t2, $t5
la $t1, am
sw $t2, 0($t1)
la $t1, am
lw $t2, 0($t1)
la $s0, ao
sw $t3, 0($s0)
move $t3, $t2
la $t7, al
sw $t3, 0($t7)
la $t7, l
lw $t3, 0($t7)
la $s0, n
sw $t8, 0($s0)
la $t9, al
lw $t8, 0($t9)
add $t8, $t8, $t3
la $t9, al
sw $t8, 0($t9)
la $t9, al
lw $t8, 0($t9)
la $s0, an
sw $t6, 0($s0)
move $t6, $t8
la $t4, ak
sw $t6, 0($t4)
la $t4, k
lw $t6, 0($t4)
la $s0, m
sw $t5, 0($s0)
la $t0, ak
lw $t5, 0($t0)
add $t5, $t5, $t6
la $t0, ak
sw $t5, 0($t0)
la $t0, ak
lw $t5, 0($t0)
la $s0, am
sw $t2, 0($s0)
move $t2, $t5
la $t1, aj
sw $t2, 0($t1)
la $t1, j
lw $t2, 0($t1)
la $s0, l
sw $t3, 0($s0)
la $t7, aj
lw $t3, 0($t7)
add $t3, $t3, $t2
la $t7, aj
sw $t3, 0($t7)
la $t7, aj
lw $t3, 0($t7)
la $s0, al
sw $t8, 0($s0)
move $t8, $t3
la $t9, ai
sw $t8, 0($t9)
la $t9, i
lw $t8, 0($t9)
la $s0, k
sw $t6, 0($s0)
la $t4, ai
lw $t6, 0($t4)
add $t6, $t6, $t8
la $t4, ai
sw $t6, 0($t4)
la $t4, ai
lw $t6, 0($t4)
la $s0, ak
sw $t5, 0($s0)
move $t5, $t6
la $t0, ah
sw $t5, 0($t0)
la $t0, h
lw $t5, 0($t0)
la $s0, j
sw $t2, 0($s0)
la $t1, ah
lw $t2, 0($t1)
add $t2, $t2, $t5
la $t1, ah
sw $t2, 0($t1)
la $t1, ah
lw $t2, 0($t1)
la $s0, aj
sw $t3, 0($s0)
move $t3, $t2
la $t7, ag
sw $t3, 0($t7)
la $t7, g
lw $t3, 0($t7)
la $s0, i
sw $t8, 0($s0)
la $t9, ag
lw $t8, 0($t9)
add $t8, $t8, $t3
la $t9, ag
sw $t8, 0($t9)
la $t9, ag
lw $t8, 0($t9)
la $s0, ai
sw $t6, 0($s0)
move $t6, $t8
la $t4, af
sw $t6, 0($t4)
la $t4, f
lw $t6, 0($t4)
la $s0, h
sw $t5, 0($s0)
la $t0, af
lw $t5, 0($t0)
add $t5, $t5, $t6
la $t0, af
sw $t5, 0($t0)
la $t0, af
lw $t5, 0($t0)
la $s0, ah
sw $t2, 0($s0)
move $t2, $t5
la $t1, ae
sw $t2, 0($t1)
la $t1, e
lw $t2, 0($t1)
la $s0, g
sw $t3, 0($s0)
la $t7, ae
lw $t3, 0($t7)
add $t3, $t3, $t2
la $t7, ae
sw $t3, 0($t7)
la $t7, ae
lw $t3, 0($t7)
la $s0, ag
sw $t8, 0($s0)
move $t8, $t3
la $t9, ad
sw $t8, 0($t9)
la $t9, d
lw $t8, 0($t9)
la $s0, f
sw $t6, 0($s0)
la $t4, ad
lw $t6, 0($t4)
add $t6, $t6, $t8
la $t4, ad
sw $t6, 0($t4)
la $t4, ad
lw $t6, 0($t4)
la $s0, af
sw $t5, 0($s0)
move $t5, $t6
la $t0, ac
sw $t5, 0($t0)
la $t0, c
lw $t5, 0($t0)
la $s0, e
sw $t2, 0($s0)
la $t1, ac
lw $t2, 0($t1)
add $t2, $t2, $t5
la $t1, ac
sw $t2, 0($t1)
la $t1, ac
lw $t2, 0($t1)
la $s0, ae
sw $t3, 0($s0)
move $t3, $t2
la $t7, ab
sw $t3, 0($t7)
la $t7, b
lw $t3, 0($t7)
la $s0, d
sw $t8, 0($s0)
la $t9, ab
lw $t8, 0($t9)
add $t8, $t8, $t3
la $t9, ab
sw $t8, 0($t9)
la $t9, ab
lw $t8, 0($t9)
la $s0, ad
sw $t6, 0($s0)
move $t6, $t8
la $t4, aa
sw $t6, 0($t4)
la $t4, a
lw $t6, 0($t4)
la $s0, c
sw $t5, 0($s0)
la $t0, aa
lw $t5, 0($t0)
add $t5, $t5, $t6
la $t0, aa
sw $t5, 0($t0)
la $t0, aa
lw $t5, 0($t0)
li $v0, 1
move $a0, $t5
syscall
