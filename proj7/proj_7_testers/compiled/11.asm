.data
ab:	.word	0	# z in original
i:	.word	0	# g in original
au:	.word	0	# temp_g in original
q:	.word	0	# o in original
ao:	.word	0	# temp_m in original
o:	.word	0	# m in original
ai:	.word	0	# temp_s in original
aa:	.word	0	# y in original
af:	.word	0	# temp_v in original
j:	.word	0	# h in original
e:	.word	0	# c in original
ay:	.word	0	# temp_c in original
h:	.word	0	# f in original
g:	.word	0	# e in original
ar:	.word	0	# temp_j in original
aq:	.word	0	# temp_k in original
t:	.word	0	# r in original
ae:	.word	0	# temp_w in original
f:	.word	0	# d in original
x:	.word	0	# v in original
aj:	.word	0	# temp_r in original
ax:	.word	0	# temp_d in original
n:	.word	0	# l in original
d:	.word	0	# b in original
am:	.word	0	# temp_o in original
y:	.word	0	# w in original
aw:	.word	0	# temp_e in original
l:	.word	0	# j in original
u:	.word	0	# s in original
ad:	.word	0	# temp_x in original
w:	.word	0	# u in original
av:	.word	0	# temp_f in original
k:	.word	0	# i in original
c:	.word	0	# a in original
z:	.word	0	# x in original
az:	.word	0	# temp_b in original
r:	.word	0	# p in original
ac:	.word	0	# temp_y in original
ap:	.word	0	# temp_l in original
p:	.word	0	# n in original
ak:	.word	0	# temp_q in original
at:	.word	0	# temp_h in original
as:	.word	0	# temp_i in original
ba:	.word	0	# temp_a in original
ag:	.word	0	# temp_u in original
an:	.word	0	# temp_n in original
m:	.word	0	# k in original
ah:	.word	0	# temp_t in original
s:	.word	0	# q in original
v:	.word	0	# t in original
al:	.word	0	# temp_p in original
.text
li $v0, 5
syscall
la $t0, c
lw $s1, 0($t0)
move $s1, $v0
li $v0, 5
syscall
la $t6, d
lw $s4, 0($t6)
move $s4, $v0
li $v0, 5
syscall
la $t1, e
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $t7, f
lw $t9, 0($t7)
move $t9, $v0
li $v0, 5
syscall
la $s3, g
lw $t8, 0($s3)
move $t8, $v0
li $v0, 5
syscall
la $s2, h
lw $t3, 0($s2)
move $t3, $v0
li $v0, 5
syscall
la $t5, i
lw $s6, 0($t5)
move $s6, $v0
li $v0, 5
syscall
la $t4, j
lw $s5, 0($t4)
move $s5, $v0
li $v0, 5
syscall
la $s0, c
sw $s1, 0($s0)
la $s1, k
lw $t0, 0($s1)
move $t0, $v0
li $v0, 5
syscall
la $s0, d
sw $s4, 0($s0)
la $s4, l
lw $t6, 0($s4)
move $t6, $v0
li $v0, 5
syscall
la $s0, e
sw $t2, 0($s0)
la $t2, m
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $s0, f
sw $t9, 0($s0)
la $t9, n
lw $t7, 0($t9)
move $t7, $v0
li $v0, 5
syscall
la $s0, g
sw $t8, 0($s0)
la $t8, o
lw $s3, 0($t8)
move $s3, $v0
li $v0, 5
syscall
la $s0, h
sw $t3, 0($s0)
la $t3, p
lw $s2, 0($t3)
move $s2, $v0
li $v0, 5
syscall
la $s0, i
sw $s6, 0($s0)
la $s6, q
lw $t5, 0($s6)
move $t5, $v0
li $v0, 5
syscall
la $s0, j
sw $s5, 0($s0)
la $s5, r
lw $t4, 0($s5)
move $t4, $v0
li $v0, 5
syscall
la $s0, k
sw $t0, 0($s0)
la $t0, s
lw $s1, 0($t0)
move $s1, $v0
li $v0, 5
syscall
la $s0, l
sw $t6, 0($s0)
la $t6, t
lw $s4, 0($t6)
move $s4, $v0
li $v0, 5
syscall
la $s0, m
sw $t1, 0($s0)
la $t1, u
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $s0, n
sw $t7, 0($s0)
la $t7, v
lw $t9, 0($t7)
move $t9, $v0
li $v0, 5
syscall
la $s0, o
sw $s3, 0($s0)
la $s3, w
lw $t8, 0($s3)
move $t8, $v0
li $v0, 5
syscall
la $s0, p
sw $s2, 0($s0)
la $s2, x
lw $t3, 0($s2)
move $t3, $v0
li $v0, 5
syscall
la $s0, q
sw $t5, 0($s0)
la $t5, y
lw $s6, 0($t5)
move $s6, $v0
li $v0, 5
syscall
la $s0, r
sw $t4, 0($s0)
la $t4, z
lw $s5, 0($t4)
move $s5, $v0
li $v0, 5
syscall
la $s0, s
sw $s1, 0($s0)
la $s1, aa
lw $t0, 0($s1)
move $t0, $v0
li $v0, 5
syscall
la $s0, t
sw $s4, 0($s0)
la $s4, ab
lw $t6, 0($s4)
move $t6, $v0
move $t1, $t6
add $t1, $t1, $t0
la $s0, u
sw $t2, 0($s0)
move $t2, $t1
add $t2, $t2, $s5
move $t7, $t2
add $t7, $t7, $s6
la $s0, v
sw $t9, 0($s0)
move $t9, $t7
add $t9, $t9, $t3
move $s3, $t9
add $s3, $s3, $t8
la $s0, w
sw $t8, 0($s0)
move $t8, $s3
la $s0, x
sw $t3, 0($s0)
la $s2, v
lw $t3, 0($s2)
add $t8, $t8, $t3
move $t5, $t8
la $s0, y
sw $s6, 0($s0)
la $s6, u
lw $t4, 0($s6)
add $t5, $t5, $t4
la $s0, z
sw $s5, 0($s0)
move $s5, $t5
la $s0, aa
sw $t0, 0($s0)
la $s1, t
lw $t0, 0($s1)
add $s5, $s5, $t0
move $s4, $s5
la $s0, ab
sw $t6, 0($s0)
la $s0, ac
sw $t1, 0($s0)
la $t6, s
lw $t1, 0($t6)
add $s4, $s4, $t1
la $s0, ad
sw $t2, 0($s0)
move $t2, $s4
la $s0, ae
sw $t7, 0($s0)
la $s0, af
sw $t9, 0($s0)
la $t7, r
lw $t9, 0($t7)
add $t2, $t2, $t9
la $s0, ag
sw $s3, 0($s0)
move $s3, $t2
la $s0, ah
sw $t8, 0($s0)
la $t8, q
lw $s2, 0($t8)
add $s3, $s3, $s2
la $s0, v
sw $t3, 0($s0)
move $t3, $s3
la $s0, ai
sw $t5, 0($s0)
la $t5, p
lw $s6, 0($t5)
add $t3, $t3, $s6
la $s0, u
sw $t4, 0($s0)
move $t4, $t3
la $s0, aj
sw $s5, 0($s0)
la $s5, o
lw $s1, 0($s5)
add $t4, $t4, $s1
la $s0, t
sw $t0, 0($s0)
move $t0, $t4
la $s0, ak
sw $s4, 0($s0)
la $s4, n
lw $t6, 0($s4)
add $t0, $t0, $t6
la $s0, s
sw $t1, 0($s0)
move $t1, $t0
la $s0, al
sw $t2, 0($s0)
la $t2, m
lw $t7, 0($t2)
add $t1, $t1, $t7
la $s0, r
sw $t9, 0($s0)
move $t9, $t1
la $s0, am
sw $s3, 0($s0)
la $s3, l
lw $t8, 0($s3)
add $t9, $t9, $t8
la $s0, q
sw $s2, 0($s0)
move $s2, $t9
la $s0, an
sw $t3, 0($s0)
la $t3, k
lw $t5, 0($t3)
add $s2, $s2, $t5
la $s0, p
sw $s6, 0($s0)
move $s6, $s2
la $s0, ao
sw $t4, 0($s0)
la $t4, j
lw $s5, 0($t4)
add $s6, $s6, $s5
la $s0, o
sw $s1, 0($s0)
move $s1, $s6
la $s0, ap
sw $t0, 0($s0)
la $t0, i
lw $s4, 0($t0)
add $s1, $s1, $s4
la $s0, n
sw $t6, 0($s0)
move $t6, $s1
la $s0, aq
sw $t1, 0($s0)
la $t1, h
lw $t2, 0($t1)
add $t6, $t6, $t2
la $s0, m
sw $t7, 0($s0)
move $t7, $t6
la $s0, ar
sw $t9, 0($s0)
la $t9, g
lw $s3, 0($t9)
add $t7, $t7, $s3
la $s0, l
sw $t8, 0($s0)
move $t8, $t7
la $s0, as
sw $s2, 0($s0)
la $s2, f
lw $t3, 0($s2)
add $t8, $t8, $t3
la $s0, k
sw $t5, 0($s0)
move $t5, $t8
la $s0, at
sw $s6, 0($s0)
la $s6, e
lw $t4, 0($s6)
add $t5, $t5, $t4
la $s0, j
sw $s5, 0($s0)
move $s5, $t5
la $s0, au
sw $s1, 0($s0)
la $s1, d
lw $t0, 0($s1)
add $s5, $s5, $t0
la $s0, i
sw $s4, 0($s0)
move $s4, $s5
la $s0, av
sw $t6, 0($s0)
la $t6, c
lw $t1, 0($t6)
add $s4, $s4, $t1
li $v0, 1
move $a0, $s4
syscall
move $a0, $t1
syscall
move $a0, $t0
syscall
move $a0, $t4
syscall
move $a0, $t3
syscall
move $a0, $s3
syscall
move $a0, $t2
syscall
la $s0, h
sw $t2, 0($s0)
la $s0, aw
sw $t7, 0($s0)
la $t2, i
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, g
sw $s3, 0($s0)
la $t9, j
lw $s3, 0($t9)
move $a0, $s3
syscall
la $s0, ax
sw $t8, 0($s0)
la $t8, k
lw $s2, 0($t8)
move $a0, $s2
syscall
la $s0, f
sw $t3, 0($s0)
la $s0, ay
sw $t5, 0($s0)
la $t3, l
lw $t5, 0($t3)
move $a0, $t5
syscall
la $s0, e
sw $t4, 0($s0)
la $s6, m
lw $t4, 0($s6)
move $a0, $t4
syscall
la $s0, az
sw $s5, 0($s0)
la $s5, n
lw $s1, 0($s5)
move $a0, $s1
syscall
la $s0, d
sw $t0, 0($s0)
la $s0, ba
sw $s4, 0($s0)
la $t0, o
lw $s4, 0($t0)
move $a0, $s4
syscall
la $s0, c
sw $t1, 0($s0)
la $t6, p
lw $t1, 0($t6)
move $a0, $t1
syscall
la $s0, i
sw $t7, 0($s0)
la $t2, q
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, j
sw $s3, 0($s0)
la $t9, r
lw $s3, 0($t9)
move $a0, $s3
syscall
la $s0, k
sw $s2, 0($s0)
la $t8, s
lw $s2, 0($t8)
move $a0, $s2
syscall
la $s0, l
sw $t5, 0($s0)
la $t3, t
lw $t5, 0($t3)
move $a0, $t5
syscall
la $s0, m
sw $t4, 0($s0)
la $s6, u
lw $t4, 0($s6)
move $a0, $t4
syscall
la $s0, n
sw $s1, 0($s0)
la $s5, v
lw $s1, 0($s5)
move $a0, $s1
syscall
la $s0, o
sw $s4, 0($s0)
la $t0, w
lw $s4, 0($t0)
move $a0, $s4
syscall
la $s0, p
sw $t1, 0($s0)
la $t6, x
lw $t1, 0($t6)
move $a0, $t1
syscall
la $s0, q
sw $t7, 0($s0)
la $t2, y
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, r
sw $s3, 0($s0)
la $t9, z
lw $s3, 0($t9)
move $a0, $s3
syscall
la $s0, s
sw $s2, 0($s0)
la $t8, aa
lw $s2, 0($t8)
move $a0, $s2
syscall
la $s0, t
sw $t5, 0($s0)
la $t3, ab
lw $t5, 0($t3)
move $a0, $t5
syscall
