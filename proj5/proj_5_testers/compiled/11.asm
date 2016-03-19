.data
g:	.word	0	# g in original
o:	.word	0	# o in original
ad:	.word	0	# temp_d in original
s:	.word	0	# s in original
z:	.word	0	# z in original
a:	.word	0	# a in original
au:	.word	0	# temp_u in original
an:	.word	0	# temp_n in original
i:	.word	0	# i in original
ag:	.word	0	# temp_g in original
l:	.word	0	# l in original
ax:	.word	0	# temp_x in original
at:	.word	0	# temp_t in original
ak:	.word	0	# temp_k in original
b:	.word	0	# b in original
y:	.word	0	# y in original
x:	.word	0	# x in original
w:	.word	0	# w in original
t:	.word	0	# t in original
am:	.word	0	# temp_m in original
v:	.word	0	# v in original
k:	.word	0	# k in original
n:	.word	0	# n in original
u:	.word	0	# u in original
d:	.word	0	# d in original
j:	.word	0	# j in original
ar:	.word	0	# temp_r in original
al:	.word	0	# temp_l in original
aa:	.word	0	# temp_a in original
ab:	.word	0	# temp_b in original
ai:	.word	0	# temp_i in original
af:	.word	0	# temp_f in original
av:	.word	0	# temp_v in original
ac:	.word	0	# temp_c in original
q:	.word	0	# q in original
r:	.word	0	# r in original
ay:	.word	0	# temp_y in original
e:	.word	0	# e in original
h:	.word	0	# h in original
as:	.word	0	# temp_s in original
p:	.word	0	# p in original
aj:	.word	0	# temp_j in original
ae:	.word	0	# temp_e in original
aw:	.word	0	# temp_w in original
c:	.word	0	# c in original
ah:	.word	0	# temp_h in original
f:	.word	0	# f in original
ao:	.word	0	# temp_o in original
ap:	.word	0	# temp_p in original
m:	.word	0	# m in original
aq:	.word	0	# temp_q in original
.text
li $v0, 5
syscall
la $t8, a
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $t6, b
lw $t0, 0($t6)
move $t0, $v0
li $v0, 5
syscall
la $t2, c
lw $t5, 0($t2)
move $t5, $v0
li $v0, 5
syscall
la $t4, d
lw $t7, 0($t4)
move $t7, $v0
li $v0, 5
syscall
la $t1, e
lw $t3, 0($t1)
move $t3, $v0
li $v0, 5
syscall
la $s0, a
sw $t9, 0($s0)
la $t9, f
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s0, b
sw $t0, 0($s0)
la $t0, g
lw $t6, 0($t0)
move $t6, $v0
li $v0, 5
syscall
la $s0, c
sw $t5, 0($s0)
la $t5, h
lw $t2, 0($t5)
move $t2, $v0
li $v0, 5
syscall
la $s0, d
sw $t7, 0($s0)
la $t7, i
lw $t4, 0($t7)
move $t4, $v0
li $v0, 5
syscall
la $s0, e
sw $t3, 0($s0)
la $t3, j
lw $t1, 0($t3)
move $t1, $v0
li $v0, 5
syscall
la $s0, f
sw $t8, 0($s0)
la $t8, k
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, g
sw $t6, 0($s0)
la $t6, l
lw $t0, 0($t6)
move $t0, $v0
li $v0, 5
syscall
la $s0, h
sw $t2, 0($s0)
la $t2, m
lw $t5, 0($t2)
move $t5, $v0
li $v0, 5
syscall
la $s0, i
sw $t4, 0($s0)
la $t4, n
lw $t7, 0($t4)
move $t7, $v0
li $v0, 5
syscall
la $s0, j
sw $t1, 0($s0)
la $t1, o
lw $t3, 0($t1)
move $t3, $v0
li $v0, 5
syscall
la $s0, k
sw $t9, 0($s0)
la $t9, p
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s0, l
sw $t0, 0($s0)
la $t0, q
lw $t6, 0($t0)
move $t6, $v0
li $v0, 5
syscall
la $s0, m
sw $t5, 0($s0)
la $t5, r
lw $t2, 0($t5)
move $t2, $v0
li $v0, 5
syscall
la $s0, n
sw $t7, 0($s0)
la $t7, s
lw $t4, 0($t7)
move $t4, $v0
li $v0, 5
syscall
la $s0, o
sw $t3, 0($s0)
la $t3, t
lw $t1, 0($t3)
move $t1, $v0
li $v0, 5
syscall
la $s0, p
sw $t8, 0($s0)
la $t8, u
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, q
sw $t6, 0($s0)
la $t6, v
lw $t0, 0($t6)
move $t0, $v0
li $v0, 5
syscall
la $s0, r
sw $t2, 0($s0)
la $t2, w
lw $t5, 0($t2)
move $t5, $v0
li $v0, 5
syscall
la $s0, s
sw $t4, 0($s0)
la $t4, x
lw $t7, 0($t4)
move $t7, $v0
li $v0, 5
syscall
la $s0, t
sw $t1, 0($s0)
la $t1, y
lw $t3, 0($t1)
move $t3, $v0
li $v0, 5
syscall
la $s0, u
sw $t9, 0($s0)
la $t9, z
lw $t8, 0($t9)
move $t8, $v0
la $s0, v
sw $t0, 0($s0)
move $t0, $t8
la $t6, ay
sw $t0, 0($t6)
la $t0, ay
lw $t6, 0($t0)
add $t6, $t6, $t3
la $t0, ay
sw $t6, 0($t0)
la $t0, ay
lw $t6, 0($t0)
la $s0, w
sw $t5, 0($s0)
move $t5, $t6
la $t2, ax
sw $t5, 0($t2)
la $t5, ax
lw $t2, 0($t5)
add $t2, $t2, $t7
la $t5, ax
sw $t2, 0($t5)
la $t5, ax
lw $t2, 0($t5)
la $s0, x
sw $t7, 0($s0)
move $t7, $t2
la $t4, aw
sw $t7, 0($t4)
la $t7, w
lw $t4, 0($t7)
la $s0, y
sw $t3, 0($s0)
la $t1, aw
lw $t3, 0($t1)
add $t3, $t3, $t4
la $t1, aw
sw $t3, 0($t1)
la $t3, aw
lw $t1, 0($t3)
la $s0, z
sw $t8, 0($s0)
move $t8, $t1
la $t9, av
sw $t8, 0($t9)
la $t9, v
lw $t8, 0($t9)
la $s0, ay
sw $t6, 0($s0)
la $t0, av
lw $t6, 0($t0)
add $t6, $t6, $t8
la $t0, av
sw $t6, 0($t0)
la $t0, av
lw $t6, 0($t0)
la $s0, ax
sw $t2, 0($s0)
move $t2, $t6
la $t5, au
sw $t2, 0($t5)
la $t5, u
lw $t2, 0($t5)
la $s0, w
sw $t4, 0($s0)
la $t7, au
lw $t4, 0($t7)
add $t4, $t4, $t2
la $t7, au
sw $t4, 0($t7)
la $t7, au
lw $t4, 0($t7)
la $s0, aw
sw $t1, 0($s0)
move $t1, $t4
la $t3, at
sw $t1, 0($t3)
la $t3, t
lw $t1, 0($t3)
la $s0, v
sw $t8, 0($s0)
la $t9, at
lw $t8, 0($t9)
add $t8, $t8, $t1
la $t9, at
sw $t8, 0($t9)
la $t9, at
lw $t8, 0($t9)
la $s0, av
sw $t6, 0($s0)
move $t6, $t8
la $t0, as
sw $t6, 0($t0)
la $t0, s
lw $t6, 0($t0)
la $s0, u
sw $t2, 0($s0)
la $t5, as
lw $t2, 0($t5)
add $t2, $t2, $t6
la $t5, as
sw $t2, 0($t5)
la $t5, as
lw $t2, 0($t5)
la $s0, au
sw $t4, 0($s0)
move $t4, $t2
la $t7, ar
sw $t4, 0($t7)
la $t7, r
lw $t4, 0($t7)
la $s0, t
sw $t1, 0($s0)
la $t3, ar
lw $t1, 0($t3)
add $t1, $t1, $t4
la $t3, ar
sw $t1, 0($t3)
la $t3, ar
lw $t1, 0($t3)
la $s0, at
sw $t8, 0($s0)
move $t8, $t1
la $t9, aq
sw $t8, 0($t9)
la $t9, q
lw $t8, 0($t9)
la $s0, s
sw $t6, 0($s0)
la $t0, aq
lw $t6, 0($t0)
add $t6, $t6, $t8
la $t0, aq
sw $t6, 0($t0)
la $t0, aq
lw $t6, 0($t0)
la $s0, as
sw $t2, 0($s0)
move $t2, $t6
la $t5, ap
sw $t2, 0($t5)
la $t5, p
lw $t2, 0($t5)
la $s0, r
sw $t4, 0($s0)
la $t7, ap
lw $t4, 0($t7)
add $t4, $t4, $t2
la $t7, ap
sw $t4, 0($t7)
la $t7, ap
lw $t4, 0($t7)
la $s0, ar
sw $t1, 0($s0)
move $t1, $t4
la $t3, ao
sw $t1, 0($t3)
la $t3, o
lw $t1, 0($t3)
la $s0, q
sw $t8, 0($s0)
la $t9, ao
lw $t8, 0($t9)
add $t8, $t8, $t1
la $t9, ao
sw $t8, 0($t9)
la $t9, ao
lw $t8, 0($t9)
la $s0, aq
sw $t6, 0($s0)
move $t6, $t8
la $t0, an
sw $t6, 0($t0)
la $t0, n
lw $t6, 0($t0)
la $s0, p
sw $t2, 0($s0)
la $t5, an
lw $t2, 0($t5)
add $t2, $t2, $t6
la $t5, an
sw $t2, 0($t5)
la $t5, an
lw $t2, 0($t5)
la $s0, ap
sw $t4, 0($s0)
move $t4, $t2
la $t7, am
sw $t4, 0($t7)
la $t7, m
lw $t4, 0($t7)
la $s0, o
sw $t1, 0($s0)
la $t3, am
lw $t1, 0($t3)
add $t1, $t1, $t4
la $t3, am
sw $t1, 0($t3)
la $t3, am
lw $t1, 0($t3)
la $s0, ao
sw $t8, 0($s0)
move $t8, $t1
la $t9, al
sw $t8, 0($t9)
la $t9, l
lw $t8, 0($t9)
la $s0, n
sw $t6, 0($s0)
la $t0, al
lw $t6, 0($t0)
add $t6, $t6, $t8
la $t0, al
sw $t6, 0($t0)
la $t0, al
lw $t6, 0($t0)
la $s0, an
sw $t2, 0($s0)
move $t2, $t6
la $t5, ak
sw $t2, 0($t5)
la $t5, k
lw $t2, 0($t5)
la $s0, m
sw $t4, 0($s0)
la $t7, ak
lw $t4, 0($t7)
add $t4, $t4, $t2
la $t7, ak
sw $t4, 0($t7)
la $t7, ak
lw $t4, 0($t7)
la $s0, am
sw $t1, 0($s0)
move $t1, $t4
la $t3, aj
sw $t1, 0($t3)
la $t3, j
lw $t1, 0($t3)
la $s0, l
sw $t8, 0($s0)
la $t9, aj
lw $t8, 0($t9)
add $t8, $t8, $t1
la $t9, aj
sw $t8, 0($t9)
la $t9, aj
lw $t8, 0($t9)
la $s0, al
sw $t6, 0($s0)
move $t6, $t8
la $t0, ai
sw $t6, 0($t0)
la $t0, i
lw $t6, 0($t0)
la $s0, k
sw $t2, 0($s0)
la $t5, ai
lw $t2, 0($t5)
add $t2, $t2, $t6
la $t5, ai
sw $t2, 0($t5)
la $t5, ai
lw $t2, 0($t5)
la $s0, ak
sw $t4, 0($s0)
move $t4, $t2
la $t7, ah
sw $t4, 0($t7)
la $t7, h
lw $t4, 0($t7)
la $s0, j
sw $t1, 0($s0)
la $t3, ah
lw $t1, 0($t3)
add $t1, $t1, $t4
la $t3, ah
sw $t1, 0($t3)
la $t3, ah
lw $t1, 0($t3)
la $s0, aj
sw $t8, 0($s0)
move $t8, $t1
la $t9, ag
sw $t8, 0($t9)
la $t9, g
lw $t8, 0($t9)
la $s0, i
sw $t6, 0($s0)
la $t0, ag
lw $t6, 0($t0)
add $t6, $t6, $t8
la $t0, ag
sw $t6, 0($t0)
la $t0, ag
lw $t6, 0($t0)
la $s0, ai
sw $t2, 0($s0)
move $t2, $t6
la $t5, af
sw $t2, 0($t5)
la $t5, f
lw $t2, 0($t5)
la $s0, h
sw $t4, 0($s0)
la $t7, af
lw $t4, 0($t7)
add $t4, $t4, $t2
la $t7, af
sw $t4, 0($t7)
la $t7, af
lw $t4, 0($t7)
la $s0, ah
sw $t1, 0($s0)
move $t1, $t4
la $t3, ae
sw $t1, 0($t3)
la $t3, e
lw $t1, 0($t3)
la $s0, g
sw $t8, 0($s0)
la $t9, ae
lw $t8, 0($t9)
add $t8, $t8, $t1
la $t9, ae
sw $t8, 0($t9)
la $t9, ae
lw $t8, 0($t9)
la $s0, ag
sw $t6, 0($s0)
move $t6, $t8
la $t0, ad
sw $t6, 0($t0)
la $t0, d
lw $t6, 0($t0)
la $s0, f
sw $t2, 0($s0)
la $t5, ad
lw $t2, 0($t5)
add $t2, $t2, $t6
la $t5, ad
sw $t2, 0($t5)
la $t5, ad
lw $t2, 0($t5)
la $s0, af
sw $t4, 0($s0)
move $t4, $t2
la $t7, ac
sw $t4, 0($t7)
la $t7, c
lw $t4, 0($t7)
la $s0, e
sw $t1, 0($s0)
la $t3, ac
lw $t1, 0($t3)
add $t1, $t1, $t4
la $t3, ac
sw $t1, 0($t3)
la $t3, ac
lw $t1, 0($t3)
la $s0, ae
sw $t8, 0($s0)
move $t8, $t1
la $t9, ab
sw $t8, 0($t9)
la $t9, b
lw $t8, 0($t9)
la $s0, d
sw $t6, 0($s0)
la $t0, ab
lw $t6, 0($t0)
add $t6, $t6, $t8
la $t0, ab
sw $t6, 0($t0)
la $t0, ab
lw $t6, 0($t0)
la $s0, ad
sw $t2, 0($s0)
move $t2, $t6
la $t5, aa
sw $t2, 0($t5)
la $t5, a
lw $t2, 0($t5)
la $s0, c
sw $t4, 0($s0)
la $t7, aa
lw $t4, 0($t7)
add $t4, $t4, $t2
la $t7, aa
sw $t4, 0($t7)
la $t7, aa
lw $t4, 0($t7)
li $v0, 1
move $a0, $t4
syscall
move $a0, $t2
syscall
move $a0, $t8
syscall
la $s0, ac
sw $t1, 0($s0)
la $t3, c
lw $t1, 0($t3)
move $a0, $t1
syscall
la $s0, b
sw $t8, 0($s0)
la $t9, d
lw $t8, 0($t9)
move $a0, $t8
syscall
la $s0, ab
sw $t6, 0($s0)
la $t0, e
lw $t6, 0($t0)
move $a0, $t6
syscall
la $s0, a
sw $t2, 0($s0)
la $t5, f
lw $t2, 0($t5)
move $a0, $t2
syscall
la $s0, aa
sw $t4, 0($s0)
la $t7, g
lw $t4, 0($t7)
move $a0, $t4
syscall
la $s0, c
sw $t1, 0($s0)
la $t3, h
lw $t1, 0($t3)
move $a0, $t1
syscall
la $s0, d
sw $t8, 0($s0)
la $t9, i
lw $t8, 0($t9)
move $a0, $t8
syscall
la $s0, e
sw $t6, 0($s0)
la $t0, j
lw $t6, 0($t0)
move $a0, $t6
syscall
la $s0, f
sw $t2, 0($s0)
la $t5, k
lw $t2, 0($t5)
move $a0, $t2
syscall
la $s0, g
sw $t4, 0($s0)
la $t7, l
lw $t4, 0($t7)
move $a0, $t4
syscall
la $s0, h
sw $t1, 0($s0)
la $t3, m
lw $t1, 0($t3)
move $a0, $t1
syscall
la $s0, i
sw $t8, 0($s0)
la $t9, n
lw $t8, 0($t9)
move $a0, $t8
syscall
la $s0, j
sw $t6, 0($s0)
la $t0, o
lw $t6, 0($t0)
move $a0, $t6
syscall
la $s0, k
sw $t2, 0($s0)
la $t5, p
lw $t2, 0($t5)
move $a0, $t2
syscall
la $s0, l
sw $t4, 0($s0)
la $t7, q
lw $t4, 0($t7)
move $a0, $t4
syscall
la $s0, m
sw $t1, 0($s0)
la $t3, r
lw $t1, 0($t3)
move $a0, $t1
syscall
la $s0, n
sw $t8, 0($s0)
la $t9, s
lw $t8, 0($t9)
move $a0, $t8
syscall
la $s0, o
sw $t6, 0($s0)
la $t0, t
lw $t6, 0($t0)
move $a0, $t6
syscall
la $s0, p
sw $t2, 0($s0)
la $t5, u
lw $t2, 0($t5)
move $a0, $t2
syscall
la $s0, q
sw $t4, 0($s0)
la $t7, v
lw $t4, 0($t7)
move $a0, $t4
syscall
la $s0, r
sw $t1, 0($s0)
la $t3, w
lw $t1, 0($t3)
move $a0, $t1
syscall
la $s0, s
sw $t8, 0($s0)
la $t9, x
lw $t8, 0($t9)
move $a0, $t8
syscall
la $s0, t
sw $t6, 0($s0)
la $t0, y
lw $t6, 0($t0)
move $a0, $t6
syscall
la $s0, u
sw $t2, 0($s0)
la $t5, z
lw $t2, 0($t5)
move $a0, $t2
syscall
