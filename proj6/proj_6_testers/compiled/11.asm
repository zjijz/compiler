.data
h:	.word	0	# f in original
u:	.word	0	# s in original
aj:	.word	0	# temp_r in original
w:	.word	0	# u in original
m:	.word	0	# k in original
at:	.word	0	# temp_h in original
p:	.word	0	# n in original
ai:	.word	0	# temp_s in original
an:	.word	0	# temp_n in original
v:	.word	0	# t in original
ac:	.word	0	# temp_y in original
ae:	.word	0	# temp_w in original
t:	.word	0	# r in original
y:	.word	0	# w in original
d:	.word	0	# b in original
ar:	.word	0	# temp_j in original
av:	.word	0	# temp_f in original
ab:	.word	0	# z in original
ao:	.word	0	# temp_m in original
ag:	.word	0	# temp_u in original
af:	.word	0	# temp_v in original
aq:	.word	0	# temp_k in original
g:	.word	0	# e in original
x:	.word	0	# v in original
z:	.word	0	# x in original
o:	.word	0	# m in original
q:	.word	0	# o in original
n:	.word	0	# l in original
r:	.word	0	# p in original
f:	.word	0	# d in original
l:	.word	0	# j in original
ad:	.word	0	# temp_x in original
j:	.word	0	# h in original
au:	.word	0	# temp_g in original
ay:	.word	0	# temp_c in original
aa:	.word	0	# y in original
ak:	.word	0	# temp_q in original
al:	.word	0	# temp_p in original
am:	.word	0	# temp_o in original
k:	.word	0	# i in original
i:	.word	0	# g in original
s:	.word	0	# q in original
ap:	.word	0	# temp_l in original
c:	.word	0	# a in original
ba:	.word	0	# temp_a in original
as:	.word	0	# temp_i in original
aw:	.word	0	# temp_e in original
ax:	.word	0	# temp_d in original
ah:	.word	0	# temp_t in original
az:	.word	0	# temp_b in original
e:	.word	0	# c in original
.text
la $s0, c
sw $s3, 0($s0)
la $s0, d
sw $t3, 0($s0)
la $s0, e
sw $s2, 0($s0)
la $s0, f
sw $t2, 0($s0)
la $s0, g
sw $s1, 0($s0)
la $s0, h
sw $s4, 0($s0)
la $s0, i
sw $t7, 0($s0)
la $s0, j
sw $t8, 0($s0)
la $s0, k
sw $s3, 0($s0)
la $s0, l
sw $t3, 0($s0)
la $s0, m
sw $s2, 0($s0)
la $s0, n
sw $t2, 0($s0)
la $s0, o
sw $s1, 0($s0)
la $s0, p
sw $s4, 0($s0)
la $s0, q
sw $t7, 0($s0)
la $s0, r
sw $t8, 0($s0)
la $s0, s
sw $s3, 0($s0)
la $s0, t
sw $t3, 0($s0)
li $v0, 5
syscall
la $s0, u
sw $s2, 0($s0)
la $s2, c
lw $t5, 0($s2)
move $t5, $v0
li $v0, 5
syscall
la $s0, v
sw $t2, 0($s0)
la $t2, d
lw $t6, 0($t2)
move $t6, $v0
li $v0, 5
syscall
la $s0, w
sw $s1, 0($s0)
la $s1, e
lw $s5, 0($s1)
move $s5, $v0
li $v0, 5
syscall
la $s0, x
sw $s4, 0($s0)
la $s4, f
lw $t1, 0($s4)
move $t1, $v0
li $v0, 5
syscall
la $s0, y
sw $t7, 0($s0)
la $t7, g
lw $t4, 0($t7)
move $t4, $v0
li $v0, 5
syscall
la $s0, z
sw $t8, 0($s0)
la $t8, h
lw $t0, 0($t8)
move $t0, $v0
li $v0, 5
syscall
la $s0, aa
sw $s3, 0($s0)
la $s3, i
lw $s6, 0($s3)
move $s6, $v0
li $v0, 5
syscall
la $s0, ab
sw $t3, 0($s0)
la $t3, j
lw $t9, 0($t3)
move $t9, $v0
li $v0, 5
syscall
la $s0, c
sw $t5, 0($s0)
la $t5, k
lw $s2, 0($t5)
move $s2, $v0
li $v0, 5
syscall
la $s0, d
sw $t6, 0($s0)
la $t6, l
lw $t2, 0($t6)
move $t2, $v0
li $v0, 5
syscall
la $s0, e
sw $s5, 0($s0)
la $s5, m
lw $s1, 0($s5)
move $s1, $v0
li $v0, 5
syscall
la $s0, f
sw $t1, 0($s0)
la $t1, n
lw $s4, 0($t1)
move $s4, $v0
li $v0, 5
syscall
la $s0, g
sw $t4, 0($s0)
la $t4, o
lw $t7, 0($t4)
move $t7, $v0
li $v0, 5
syscall
la $s0, h
sw $t0, 0($s0)
la $t0, p
lw $t8, 0($t0)
move $t8, $v0
li $v0, 5
syscall
la $s0, i
sw $s6, 0($s0)
la $s6, q
lw $s3, 0($s6)
move $s3, $v0
li $v0, 5
syscall
la $s0, j
sw $t9, 0($s0)
la $t9, r
lw $t3, 0($t9)
move $t3, $v0
li $v0, 5
syscall
la $s0, k
sw $s2, 0($s0)
la $s2, s
lw $t5, 0($s2)
move $t5, $v0
li $v0, 5
syscall
la $s0, l
sw $t2, 0($s0)
la $t2, t
lw $t6, 0($t2)
move $t6, $v0
li $v0, 5
syscall
la $s0, m
sw $s1, 0($s0)
la $s1, u
lw $s5, 0($s1)
move $s5, $v0
li $v0, 5
syscall
la $s0, n
sw $s4, 0($s0)
la $s4, v
lw $t1, 0($s4)
move $t1, $v0
li $v0, 5
syscall
la $s0, o
sw $t7, 0($s0)
la $t7, w
lw $t4, 0($t7)
move $t4, $v0
li $v0, 5
syscall
la $s0, p
sw $t8, 0($s0)
la $t8, x
lw $t0, 0($t8)
move $t0, $v0
li $v0, 5
syscall
la $s0, q
sw $s3, 0($s0)
la $s3, y
lw $s6, 0($s3)
move $s6, $v0
li $v0, 5
syscall
la $s0, r
sw $t3, 0($s0)
la $t3, z
lw $t9, 0($t3)
move $t9, $v0
li $v0, 5
syscall
la $s0, s
sw $t5, 0($s0)
la $t5, aa
lw $s2, 0($t5)
move $s2, $v0
li $v0, 5
syscall
la $s0, t
sw $t6, 0($s0)
la $t6, ab
lw $t2, 0($t6)
move $t2, $v0
move $s1, $t2
add $s1, $s1, $s2
la $s0, u
sw $s5, 0($s0)
move $s5, $s1
add $s5, $s5, $t9
move $s4, $s5
add $s4, $s4, $s6
la $s0, v
sw $t1, 0($s0)
move $t1, $s4
add $t1, $t1, $t0
move $t7, $t1
add $t7, $t7, $t4
la $s0, w
sw $t4, 0($s0)
move $t4, $t7
la $s0, x
sw $t0, 0($s0)
la $t8, v
lw $t0, 0($t8)
add $t4, $t4, $t0
move $s3, $t4
la $s0, y
sw $s6, 0($s0)
la $s6, u
lw $t3, 0($s6)
add $s3, $s3, $t3
la $s0, z
sw $t9, 0($s0)
move $t9, $s3
la $s0, aa
sw $s2, 0($s0)
la $t5, t
lw $s2, 0($t5)
add $t9, $t9, $s2
move $t6, $t9
la $s0, ab
sw $t2, 0($s0)
la $s0, ac
sw $s1, 0($s0)
la $t2, s
lw $s1, 0($t2)
add $t6, $t6, $s1
la $s0, ad
sw $s5, 0($s0)
move $s5, $t6
la $s0, ae
sw $s4, 0($s0)
la $s0, af
sw $t1, 0($s0)
la $s4, r
lw $t1, 0($s4)
add $s5, $s5, $t1
la $s0, ag
sw $t7, 0($s0)
move $t7, $s5
la $s0, ah
sw $t4, 0($s0)
la $t4, q
lw $t8, 0($t4)
add $t7, $t7, $t8
la $s0, v
sw $t0, 0($s0)
move $t0, $t7
la $s0, ai
sw $s3, 0($s0)
la $s3, p
lw $s6, 0($s3)
add $t0, $t0, $s6
la $s0, u
sw $t3, 0($s0)
move $t3, $t0
la $s0, aj
sw $t9, 0($s0)
la $t9, o
lw $t5, 0($t9)
add $t3, $t3, $t5
la $s0, t
sw $s2, 0($s0)
move $s2, $t3
la $s0, ak
sw $t6, 0($s0)
la $t6, n
lw $t2, 0($t6)
add $s2, $s2, $t2
la $s0, s
sw $s1, 0($s0)
move $s1, $s2
la $s0, al
sw $s5, 0($s0)
la $s5, m
lw $s4, 0($s5)
add $s1, $s1, $s4
la $s0, r
sw $t1, 0($s0)
move $t1, $s1
la $s0, am
sw $t7, 0($s0)
la $t7, l
lw $t4, 0($t7)
add $t1, $t1, $t4
la $s0, q
sw $t8, 0($s0)
move $t8, $t1
la $s0, an
sw $t0, 0($s0)
la $t0, k
lw $s3, 0($t0)
add $t8, $t8, $s3
la $s0, p
sw $s6, 0($s0)
move $s6, $t8
la $s0, ao
sw $t3, 0($s0)
la $t3, j
lw $t9, 0($t3)
add $s6, $s6, $t9
la $s0, o
sw $t5, 0($s0)
move $t5, $s6
la $s0, ap
sw $s2, 0($s0)
la $s2, i
lw $t6, 0($s2)
add $t5, $t5, $t6
la $s0, n
sw $t2, 0($s0)
move $t2, $t5
la $s0, aq
sw $s1, 0($s0)
la $s1, h
lw $s5, 0($s1)
add $t2, $t2, $s5
la $s0, m
sw $s4, 0($s0)
move $s4, $t2
la $s0, ar
sw $t1, 0($s0)
la $t1, g
lw $t7, 0($t1)
add $s4, $s4, $t7
la $s0, l
sw $t4, 0($s0)
move $t4, $s4
la $s0, as
sw $t8, 0($s0)
la $t8, f
lw $t0, 0($t8)
add $t4, $t4, $t0
la $s0, k
sw $s3, 0($s0)
move $s3, $t4
la $s0, at
sw $s6, 0($s0)
la $s6, e
lw $t3, 0($s6)
add $s3, $s3, $t3
la $s0, j
sw $t9, 0($s0)
move $t9, $s3
la $s0, au
sw $t5, 0($s0)
la $t5, d
lw $s2, 0($t5)
add $t9, $t9, $s2
la $s0, i
sw $t6, 0($s0)
move $t6, $t9
la $s0, av
sw $t2, 0($s0)
la $t2, c
lw $s1, 0($t2)
add $t6, $t6, $s1
li $v0, 1
move $a0, $t6
syscall
move $a0, $s1
syscall
move $a0, $s2
syscall
move $a0, $t3
syscall
move $a0, $t0
syscall
move $a0, $t7
syscall
move $a0, $s5
syscall
la $s0, h
sw $s5, 0($s0)
la $s0, aw
sw $s4, 0($s0)
la $s5, i
lw $s4, 0($s5)
move $a0, $s4
syscall
la $s0, g
sw $t7, 0($s0)
la $t1, j
lw $t7, 0($t1)
move $a0, $t7
syscall
la $s0, ax
sw $t4, 0($s0)
la $t4, k
lw $t8, 0($t4)
move $a0, $t8
syscall
la $s0, f
sw $t0, 0($s0)
la $s0, ay
sw $s3, 0($s0)
la $t0, l
lw $s3, 0($t0)
move $a0, $s3
syscall
la $s0, e
sw $t3, 0($s0)
la $s6, m
lw $t3, 0($s6)
move $a0, $t3
syscall
la $s0, az
sw $t9, 0($s0)
la $t9, n
lw $t5, 0($t9)
move $a0, $t5
syscall
la $s0, d
sw $s2, 0($s0)
la $s0, ba
sw $t6, 0($s0)
la $s2, o
lw $t6, 0($s2)
move $a0, $t6
syscall
la $s0, c
sw $s1, 0($s0)
la $t2, p
lw $s1, 0($t2)
move $a0, $s1
syscall
la $s0, i
sw $s4, 0($s0)
la $s5, q
lw $s4, 0($s5)
move $a0, $s4
syscall
la $s0, j
sw $t7, 0($s0)
la $t1, r
lw $t7, 0($t1)
move $a0, $t7
syscall
la $s0, k
sw $t8, 0($s0)
la $t4, s
lw $t8, 0($t4)
move $a0, $t8
syscall
la $s0, l
sw $s3, 0($s0)
la $t0, t
lw $s3, 0($t0)
move $a0, $s3
syscall
la $s0, m
sw $t3, 0($s0)
la $s6, u
lw $t3, 0($s6)
move $a0, $t3
syscall
la $s0, n
sw $t5, 0($s0)
la $t9, v
lw $t5, 0($t9)
move $a0, $t5
syscall
la $s0, o
sw $t6, 0($s0)
la $s2, w
lw $t6, 0($s2)
move $a0, $t6
syscall
la $s0, p
sw $s1, 0($s0)
la $t2, x
lw $s1, 0($t2)
move $a0, $s1
syscall
la $s0, q
sw $s4, 0($s0)
la $s5, y
lw $s4, 0($s5)
move $a0, $s4
syscall
la $s0, r
sw $t7, 0($s0)
la $t1, z
lw $t7, 0($t1)
move $a0, $t7
syscall
la $s0, s
sw $t8, 0($s0)
la $t4, aa
lw $t8, 0($t4)
move $a0, $t8
syscall
la $s0, t
sw $s3, 0($s0)
la $t0, ab
lw $s3, 0($t0)
move $a0, $s3
syscall
