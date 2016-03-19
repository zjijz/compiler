.data
e:	.word	0	# e in original
q:	.word	0	# q in original
an:	.word	0	# temp_n in original
j:	.word	0	# j in original
ab:	.word	0	# temp_b in original
ap:	.word	0	# temp_p in original
m:	.word	0	# m in original
aa:	.word	0	# temp_a in original
c:	.word	0	# c in original
ac:	.word	0	# temp_c in original
as:	.word	0	# temp_s in original
h:	.word	0	# h in original
x:	.word	0	# x in original
aw:	.word	0	# temp_w in original
ag:	.word	0	# temp_g in original
au:	.word	0	# temp_u in original
ao:	.word	0	# temp_o in original
av:	.word	0	# temp_v in original
n:	.word	0	# n in original
af:	.word	0	# temp_f in original
s:	.word	0	# s in original
at:	.word	0	# temp_t in original
u:	.word	0	# u in original
b:	.word	0	# b in original
r:	.word	0	# r in original
ax:	.word	0	# temp_x in original
ar:	.word	0	# temp_r in original
am:	.word	0	# temp_m in original
z:	.word	0	# z in original
ak:	.word	0	# temp_k in original
ay:	.word	0	# temp_y in original
p:	.word	0	# p in original
ad:	.word	0	# temp_d in original
k:	.word	0	# k in original
g:	.word	0	# g in original
i:	.word	0	# i in original
a:	.word	0	# a in original
y:	.word	0	# y in original
f:	.word	0	# f in original
al:	.word	0	# temp_l in original
o:	.word	0	# o in original
t:	.word	0	# t in original
d:	.word	0	# d in original
aq:	.word	0	# temp_q in original
ai:	.word	0	# temp_i in original
ah:	.word	0	# temp_h in original
l:	.word	0	# l in original
v:	.word	0	# v in original
aj:	.word	0	# temp_j in original
w:	.word	0	# w in original
ae:	.word	0	# temp_e in original
.text
li $v0, 5
syscall
la $t3, a
lw $t4, 0($t3)
move $t4, $v0
li $v0, 5
syscall
la $t0, b
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $t6, c
lw $t1, 0($t6)
move $t1, $v0
li $v0, 5
syscall
la $t2, d
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $t8, e
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $s0, a
sw $t4, 0($s0)
la $t4, f
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $s0, b
sw $t9, 0($s0)
la $t9, g
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, c
sw $t1, 0($s0)
la $t1, h
lw $t6, 0($t1)
move $t6, $v0
li $v0, 5
syscall
la $s0, d
sw $t7, 0($s0)
la $t7, i
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $s0, e
sw $t5, 0($s0)
la $t5, j
lw $t8, 0($t5)
move $t8, $v0
li $v0, 5
syscall
la $s0, f
sw $t3, 0($s0)
la $t3, k
lw $t4, 0($t3)
move $t4, $v0
li $v0, 5
syscall
la $s0, g
sw $t0, 0($s0)
la $t0, l
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $s0, h
sw $t6, 0($s0)
la $t6, m
lw $t1, 0($t6)
move $t1, $v0
li $v0, 5
syscall
la $s0, i
sw $t2, 0($s0)
la $t2, n
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s0, j
sw $t8, 0($s0)
la $t8, o
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $s0, k
sw $t4, 0($s0)
la $t4, p
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $s0, l
sw $t9, 0($s0)
la $t9, q
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, m
sw $t1, 0($s0)
la $t1, r
lw $t6, 0($t1)
move $t6, $v0
li $v0, 5
syscall
la $s0, n
sw $t7, 0($s0)
la $t7, s
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $s0, o
sw $t5, 0($s0)
la $t5, t
lw $t8, 0($t5)
move $t8, $v0
li $v0, 5
syscall
la $s0, p
sw $t3, 0($s0)
la $t3, u
lw $t4, 0($t3)
move $t4, $v0
li $v0, 5
syscall
la $s0, q
sw $t0, 0($s0)
la $t0, v
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $s0, r
sw $t6, 0($s0)
la $t6, w
lw $t1, 0($t6)
move $t1, $v0
li $v0, 5
syscall
la $s0, s
sw $t2, 0($s0)
la $t2, x
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s0, t
sw $t8, 0($s0)
la $t8, y
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $s0, u
sw $t4, 0($s0)
la $t4, z
lw $t3, 0($t4)
move $t3, $v0
la $s0, v
sw $t9, 0($s0)
move $t9, $t3
la $t0, ay
sw $t9, 0($t0)
la $t9, ay
lw $t0, 0($t9)
add $t0, $t0, $t5
la $t9, ay
sw $t0, 0($t9)
la $t9, ay
lw $t0, 0($t9)
la $s0, w
sw $t1, 0($s0)
move $t1, $t0
la $t6, ax
sw $t1, 0($t6)
la $t1, ax
lw $t6, 0($t1)
add $t6, $t6, $t7
la $t1, ax
sw $t6, 0($t1)
la $t1, ax
lw $t6, 0($t1)
la $s0, x
sw $t7, 0($s0)
move $t7, $t6
la $t2, aw
sw $t7, 0($t2)
la $t7, w
lw $t2, 0($t7)
la $s0, y
sw $t5, 0($s0)
la $t8, aw
lw $t5, 0($t8)
add $t5, $t5, $t2
la $t8, aw
sw $t5, 0($t8)
la $t5, aw
lw $t8, 0($t5)
la $s0, z
sw $t3, 0($s0)
move $t3, $t8
la $t4, av
sw $t3, 0($t4)
la $t4, v
lw $t3, 0($t4)
la $s0, ay
sw $t0, 0($s0)
la $t9, av
lw $t0, 0($t9)
add $t0, $t0, $t3
la $t9, av
sw $t0, 0($t9)
la $t9, av
lw $t0, 0($t9)
la $s0, ax
sw $t6, 0($s0)
move $t6, $t0
la $t1, au
sw $t6, 0($t1)
la $t1, u
lw $t6, 0($t1)
la $s0, w
sw $t2, 0($s0)
la $t7, au
lw $t2, 0($t7)
add $t2, $t2, $t6
la $t7, au
sw $t2, 0($t7)
la $t7, au
lw $t2, 0($t7)
la $s0, aw
sw $t8, 0($s0)
move $t8, $t2
la $t5, at
sw $t8, 0($t5)
la $t5, t
lw $t8, 0($t5)
la $s0, v
sw $t3, 0($s0)
la $t4, at
lw $t3, 0($t4)
add $t3, $t3, $t8
la $t4, at
sw $t3, 0($t4)
la $t4, at
lw $t3, 0($t4)
la $s0, av
sw $t0, 0($s0)
move $t0, $t3
la $t9, as
sw $t0, 0($t9)
la $t9, s
lw $t0, 0($t9)
la $s0, u
sw $t6, 0($s0)
la $t1, as
lw $t6, 0($t1)
add $t6, $t6, $t0
la $t1, as
sw $t6, 0($t1)
la $t1, as
lw $t6, 0($t1)
la $s0, au
sw $t2, 0($s0)
move $t2, $t6
la $t7, ar
sw $t2, 0($t7)
la $t7, r
lw $t2, 0($t7)
la $s0, t
sw $t8, 0($s0)
la $t5, ar
lw $t8, 0($t5)
add $t8, $t8, $t2
la $t5, ar
sw $t8, 0($t5)
la $t5, ar
lw $t8, 0($t5)
la $s0, at
sw $t3, 0($s0)
move $t3, $t8
la $t4, aq
sw $t3, 0($t4)
la $t4, q
lw $t3, 0($t4)
la $s0, s
sw $t0, 0($s0)
la $t9, aq
lw $t0, 0($t9)
add $t0, $t0, $t3
la $t9, aq
sw $t0, 0($t9)
la $t9, aq
lw $t0, 0($t9)
la $s0, as
sw $t6, 0($s0)
move $t6, $t0
la $t1, ap
sw $t6, 0($t1)
la $t1, p
lw $t6, 0($t1)
la $s0, r
sw $t2, 0($s0)
la $t7, ap
lw $t2, 0($t7)
add $t2, $t2, $t6
la $t7, ap
sw $t2, 0($t7)
la $t7, ap
lw $t2, 0($t7)
la $s0, ar
sw $t8, 0($s0)
move $t8, $t2
la $t5, ao
sw $t8, 0($t5)
la $t5, o
lw $t8, 0($t5)
la $s0, q
sw $t3, 0($s0)
la $t4, ao
lw $t3, 0($t4)
add $t3, $t3, $t8
la $t4, ao
sw $t3, 0($t4)
la $t4, ao
lw $t3, 0($t4)
la $s0, aq
sw $t0, 0($s0)
move $t0, $t3
la $t9, an
sw $t0, 0($t9)
la $t9, n
lw $t0, 0($t9)
la $s0, p
sw $t6, 0($s0)
la $t1, an
lw $t6, 0($t1)
add $t6, $t6, $t0
la $t1, an
sw $t6, 0($t1)
la $t1, an
lw $t6, 0($t1)
la $s0, ap
sw $t2, 0($s0)
move $t2, $t6
la $t7, am
sw $t2, 0($t7)
la $t7, m
lw $t2, 0($t7)
la $s0, o
sw $t8, 0($s0)
la $t5, am
lw $t8, 0($t5)
add $t8, $t8, $t2
la $t5, am
sw $t8, 0($t5)
la $t5, am
lw $t8, 0($t5)
la $s0, ao
sw $t3, 0($s0)
move $t3, $t8
la $t4, al
sw $t3, 0($t4)
la $t4, l
lw $t3, 0($t4)
la $s0, n
sw $t0, 0($s0)
la $t9, al
lw $t0, 0($t9)
add $t0, $t0, $t3
la $t9, al
sw $t0, 0($t9)
la $t9, al
lw $t0, 0($t9)
la $s0, an
sw $t6, 0($s0)
move $t6, $t0
la $t1, ak
sw $t6, 0($t1)
la $t1, k
lw $t6, 0($t1)
la $s0, m
sw $t2, 0($s0)
la $t7, ak
lw $t2, 0($t7)
add $t2, $t2, $t6
la $t7, ak
sw $t2, 0($t7)
la $t7, ak
lw $t2, 0($t7)
la $s0, am
sw $t8, 0($s0)
move $t8, $t2
la $t5, aj
sw $t8, 0($t5)
la $t5, j
lw $t8, 0($t5)
la $s0, l
sw $t3, 0($s0)
la $t4, aj
lw $t3, 0($t4)
add $t3, $t3, $t8
la $t4, aj
sw $t3, 0($t4)
la $t4, aj
lw $t3, 0($t4)
la $s0, al
sw $t0, 0($s0)
move $t0, $t3
la $t9, ai
sw $t0, 0($t9)
la $t9, i
lw $t0, 0($t9)
la $s0, k
sw $t6, 0($s0)
la $t1, ai
lw $t6, 0($t1)
add $t6, $t6, $t0
la $t1, ai
sw $t6, 0($t1)
la $t1, ai
lw $t6, 0($t1)
la $s0, ak
sw $t2, 0($s0)
move $t2, $t6
la $t7, ah
sw $t2, 0($t7)
la $t7, h
lw $t2, 0($t7)
la $s0, j
sw $t8, 0($s0)
la $t5, ah
lw $t8, 0($t5)
add $t8, $t8, $t2
la $t5, ah
sw $t8, 0($t5)
la $t5, ah
lw $t8, 0($t5)
la $s0, aj
sw $t3, 0($s0)
move $t3, $t8
la $t4, ag
sw $t3, 0($t4)
la $t4, g
lw $t3, 0($t4)
la $s0, i
sw $t0, 0($s0)
la $t9, ag
lw $t0, 0($t9)
add $t0, $t0, $t3
la $t9, ag
sw $t0, 0($t9)
la $t9, ag
lw $t0, 0($t9)
la $s0, ai
sw $t6, 0($s0)
move $t6, $t0
la $t1, af
sw $t6, 0($t1)
la $t1, f
lw $t6, 0($t1)
la $s0, h
sw $t2, 0($s0)
la $t7, af
lw $t2, 0($t7)
add $t2, $t2, $t6
la $t7, af
sw $t2, 0($t7)
la $t7, af
lw $t2, 0($t7)
la $s0, ah
sw $t8, 0($s0)
move $t8, $t2
la $t5, ae
sw $t8, 0($t5)
la $t5, e
lw $t8, 0($t5)
la $s0, g
sw $t3, 0($s0)
la $t4, ae
lw $t3, 0($t4)
add $t3, $t3, $t8
la $t4, ae
sw $t3, 0($t4)
la $t4, ae
lw $t3, 0($t4)
la $s0, ag
sw $t0, 0($s0)
move $t0, $t3
la $t9, ad
sw $t0, 0($t9)
la $t9, d
lw $t0, 0($t9)
la $s0, f
sw $t6, 0($s0)
la $t1, ad
lw $t6, 0($t1)
add $t6, $t6, $t0
la $t1, ad
sw $t6, 0($t1)
la $t1, ad
lw $t6, 0($t1)
la $s0, af
sw $t2, 0($s0)
move $t2, $t6
la $t7, ac
sw $t2, 0($t7)
la $t7, c
lw $t2, 0($t7)
la $s0, e
sw $t8, 0($s0)
la $t5, ac
lw $t8, 0($t5)
add $t8, $t8, $t2
la $t5, ac
sw $t8, 0($t5)
la $t5, ac
lw $t8, 0($t5)
la $s0, ae
sw $t3, 0($s0)
move $t3, $t8
la $t4, ab
sw $t3, 0($t4)
la $t4, b
lw $t3, 0($t4)
la $s0, d
sw $t0, 0($s0)
la $t9, ab
lw $t0, 0($t9)
add $t0, $t0, $t3
la $t9, ab
sw $t0, 0($t9)
la $t9, ab
lw $t0, 0($t9)
la $s0, ad
sw $t6, 0($s0)
move $t6, $t0
la $t1, aa
sw $t6, 0($t1)
la $t1, a
lw $t6, 0($t1)
la $s0, c
sw $t2, 0($s0)
la $t7, aa
lw $t2, 0($t7)
add $t2, $t2, $t6
la $t7, aa
sw $t2, 0($t7)
la $t7, aa
lw $t2, 0($t7)
li $v0, 1
move $a0, $t2
syscall
