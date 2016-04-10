.data
aq:	.word	0	# temp_k in original
ap:	.word	0	# temp_l in original
aj:	.word	0	# temp_r in original
ae:	.word	0	# temp_w in original
az:	.word	0	# temp_b in original
ac:	.word	0	# temp_y in original
n:	.word	0	# l in original
ar:	.word	0	# temp_j in original
af:	.word	0	# temp_v in original
ai:	.word	0	# temp_s in original
ag:	.word	0	# temp_u in original
ak:	.word	0	# temp_q in original
j:	.word	0	# h in original
t:	.word	0	# r in original
as:	.word	0	# temp_i in original
k:	.word	0	# i in original
f:	.word	0	# d in original
d:	.word	0	# b in original
ab:	.word	0	# z in original
r:	.word	0	# p in original
ad:	.word	0	# temp_x in original
at:	.word	0	# temp_h in original
c:	.word	0	# a in original
ay:	.word	0	# temp_c in original
au:	.word	0	# temp_g in original
ah:	.word	0	# temp_t in original
an:	.word	0	# temp_n in original
ax:	.word	0	# temp_d in original
al:	.word	0	# temp_p in original
g:	.word	0	# e in original
ba:	.word	0	# temp_a in original
h:	.word	0	# f in original
ao:	.word	0	# temp_m in original
e:	.word	0	# c in original
aw:	.word	0	# temp_e in original
x:	.word	0	# v in original
q:	.word	0	# o in original
l:	.word	0	# j in original
i:	.word	0	# g in original
aa:	.word	0	# y in original
y:	.word	0	# w in original
v:	.word	0	# t in original
u:	.word	0	# s in original
w:	.word	0	# u in original
am:	.word	0	# temp_o in original
s:	.word	0	# q in original
m:	.word	0	# k in original
o:	.word	0	# m in original
z:	.word	0	# x in original
p:	.word	0	# n in original
av:	.word	0	# temp_f in original
.text
li $v0, 5
syscall
la $t4, c
lw $s1, 0($t4)
move $s1, $v0
li $v0, 5
syscall
la $t6, d
lw $t9, 0($t6)
move $t9, $v0
li $v0, 5
syscall
la $t3, e
lw $t2, 0($t3)
move $t2, $v0
li $v0, 5
syscall
la $t0, f
lw $t7, 0($t0)
move $t7, $v0
li $v0, 5
syscall
la $s4, g
lw $t5, 0($s4)
move $t5, $v0
li $v0, 5
syscall
la $s3, h
lw $s2, 0($s3)
move $s2, $v0
li $v0, 5
syscall
la $s6, i
lw $s5, 0($s6)
move $s5, $v0
li $v0, 5
syscall
la $t8, j
lw $t1, 0($t8)
move $t1, $v0
li $v0, 5
syscall
la $s0, c
sw $s1, 0($s0)
la $s1, k
lw $t4, 0($s1)
move $t4, $v0
li $v0, 5
syscall
la $s0, d
sw $t9, 0($s0)
la $t9, l
lw $t6, 0($t9)
move $t6, $v0
li $v0, 5
syscall
la $s0, e
sw $t2, 0($s0)
la $t2, m
lw $t3, 0($t2)
move $t3, $v0
li $v0, 5
syscall
la $s0, f
sw $t7, 0($s0)
la $t7, n
lw $t0, 0($t7)
move $t0, $v0
li $v0, 5
syscall
la $s0, g
sw $t5, 0($s0)
la $t5, o
lw $s4, 0($t5)
move $s4, $v0
li $v0, 5
syscall
la $s0, h
sw $s2, 0($s0)
la $s2, p
lw $s3, 0($s2)
move $s3, $v0
li $v0, 5
syscall
la $s0, i
sw $s5, 0($s0)
la $s5, q
lw $s6, 0($s5)
move $s6, $v0
li $v0, 5
syscall
la $s0, j
sw $t1, 0($s0)
la $t1, r
lw $t8, 0($t1)
move $t8, $v0
li $v0, 5
syscall
la $s0, k
sw $t4, 0($s0)
la $t4, s
lw $s1, 0($t4)
move $s1, $v0
li $v0, 5
syscall
la $s0, l
sw $t6, 0($s0)
la $t6, t
lw $t9, 0($t6)
move $t9, $v0
li $v0, 5
syscall
la $s0, m
sw $t3, 0($s0)
la $t3, u
lw $t2, 0($t3)
move $t2, $v0
li $v0, 5
syscall
la $s0, n
sw $t0, 0($s0)
la $t0, v
lw $t7, 0($t0)
move $t7, $v0
li $v0, 5
syscall
la $s0, o
sw $s4, 0($s0)
la $s4, w
lw $t5, 0($s4)
move $t5, $v0
li $v0, 5
syscall
la $s0, p
sw $s3, 0($s0)
la $s3, x
lw $s2, 0($s3)
move $s2, $v0
li $v0, 5
syscall
la $s0, q
sw $s6, 0($s0)
la $s6, y
lw $s5, 0($s6)
move $s5, $v0
li $v0, 5
syscall
la $s0, r
sw $t8, 0($s0)
la $t8, z
lw $t1, 0($t8)
move $t1, $v0
li $v0, 5
syscall
la $s0, s
sw $s1, 0($s0)
la $s1, aa
lw $t4, 0($s1)
move $t4, $v0
li $v0, 5
syscall
la $s0, t
sw $t9, 0($s0)
la $t9, ab
lw $t6, 0($t9)
move $t6, $v0
move $t3, $t6
add $t3, $t3, $t4
la $s0, u
sw $t2, 0($s0)
move $t2, $t3
add $t2, $t2, $t1
move $t0, $t2
add $t0, $t0, $s5
la $s0, v
sw $t7, 0($s0)
move $t7, $t0
add $t7, $t7, $s2
move $s4, $t7
add $s4, $s4, $t5
la $s0, w
sw $t5, 0($s0)
move $t5, $s4
la $s0, x
sw $s2, 0($s0)
la $s3, v
lw $s2, 0($s3)
add $t5, $t5, $s2
move $s6, $t5
la $s0, y
sw $s5, 0($s0)
la $s5, u
lw $t8, 0($s5)
add $s6, $s6, $t8
la $s0, z
sw $t1, 0($s0)
move $t1, $s6
la $s0, aa
sw $t4, 0($s0)
la $s1, t
lw $t4, 0($s1)
add $t1, $t1, $t4
move $t9, $t1
la $s0, ab
sw $t6, 0($s0)
la $s0, ac
sw $t3, 0($s0)
la $t6, s
lw $t3, 0($t6)
add $t9, $t9, $t3
la $s0, ad
sw $t2, 0($s0)
move $t2, $t9
la $s0, ae
sw $t0, 0($s0)
la $s0, af
sw $t7, 0($s0)
la $t0, r
lw $t7, 0($t0)
add $t2, $t2, $t7
la $s0, ag
sw $s4, 0($s0)
move $s4, $t2
la $s0, ah
sw $t5, 0($s0)
la $t5, q
lw $s3, 0($t5)
add $s4, $s4, $s3
la $s0, v
sw $s2, 0($s0)
move $s2, $s4
la $s0, ai
sw $s6, 0($s0)
la $s6, p
lw $s5, 0($s6)
add $s2, $s2, $s5
la $s0, u
sw $t8, 0($s0)
move $t8, $s2
la $s0, aj
sw $t1, 0($s0)
la $t1, o
lw $s1, 0($t1)
add $t8, $t8, $s1
la $s0, t
sw $t4, 0($s0)
move $t4, $t8
la $s0, ak
sw $t9, 0($s0)
la $t9, n
lw $t6, 0($t9)
add $t4, $t4, $t6
la $s0, s
sw $t3, 0($s0)
move $t3, $t4
la $s0, al
sw $t2, 0($s0)
la $t2, m
lw $t0, 0($t2)
add $t3, $t3, $t0
la $s0, r
sw $t7, 0($s0)
move $t7, $t3
la $s0, am
sw $s4, 0($s0)
la $s4, l
lw $t5, 0($s4)
add $t7, $t7, $t5
la $s0, q
sw $s3, 0($s0)
move $s3, $t7
la $s0, an
sw $s2, 0($s0)
la $s2, k
lw $s6, 0($s2)
add $s3, $s3, $s6
la $s0, p
sw $s5, 0($s0)
move $s5, $s3
la $s0, ao
sw $t8, 0($s0)
la $t8, j
lw $t1, 0($t8)
add $s5, $s5, $t1
la $s0, o
sw $s1, 0($s0)
move $s1, $s5
la $s0, ap
sw $t4, 0($s0)
la $t4, i
lw $t9, 0($t4)
add $s1, $s1, $t9
la $s0, n
sw $t6, 0($s0)
move $t6, $s1
la $s0, aq
sw $t3, 0($s0)
la $t3, h
lw $t2, 0($t3)
add $t6, $t6, $t2
la $s0, m
sw $t0, 0($s0)
move $t0, $t6
la $s0, ar
sw $t7, 0($s0)
la $t7, g
lw $s4, 0($t7)
add $t0, $t0, $s4
la $s0, l
sw $t5, 0($s0)
move $t5, $t0
la $s0, as
sw $s3, 0($s0)
la $s3, f
lw $s2, 0($s3)
add $t5, $t5, $s2
la $s0, k
sw $s6, 0($s0)
move $s6, $t5
la $s0, at
sw $s5, 0($s0)
la $s5, e
lw $t8, 0($s5)
add $s6, $s6, $t8
la $s0, j
sw $t1, 0($s0)
move $t1, $s6
la $s0, au
sw $s1, 0($s0)
la $s1, d
lw $t4, 0($s1)
add $t1, $t1, $t4
la $s0, i
sw $t9, 0($s0)
move $t9, $t1
la $s0, av
sw $t6, 0($s0)
la $t6, c
lw $t3, 0($t6)
add $t9, $t9, $t3
li $v0, 1
move $a0, $t9
syscall
move $a0, $t3
syscall
move $a0, $t4
syscall
move $a0, $t8
syscall
move $a0, $s2
syscall
move $a0, $s4
syscall
move $a0, $t2
syscall
la $s0, h
sw $t2, 0($s0)
la $s0, aw
sw $t0, 0($s0)
la $t2, i
lw $t0, 0($t2)
move $a0, $t0
syscall
la $s0, g
sw $s4, 0($s0)
la $t7, j
lw $s4, 0($t7)
move $a0, $s4
syscall
la $s0, ax
sw $t5, 0($s0)
la $t5, k
lw $s3, 0($t5)
move $a0, $s3
syscall
la $s0, f
sw $s2, 0($s0)
la $s0, ay
sw $s6, 0($s0)
la $s2, l
lw $s6, 0($s2)
move $a0, $s6
syscall
la $s0, e
sw $t8, 0($s0)
la $s5, m
lw $t8, 0($s5)
move $a0, $t8
syscall
la $s0, az
sw $t1, 0($s0)
la $t1, n
lw $s1, 0($t1)
move $a0, $s1
syscall
la $s0, d
sw $t4, 0($s0)
la $s0, ba
sw $t9, 0($s0)
la $t4, o
lw $t9, 0($t4)
move $a0, $t9
syscall
la $s0, c
sw $t3, 0($s0)
la $t6, p
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, i
sw $t0, 0($s0)
la $t2, q
lw $t0, 0($t2)
move $a0, $t0
syscall
la $s0, j
sw $s4, 0($s0)
la $t7, r
lw $s4, 0($t7)
move $a0, $s4
syscall
la $s0, k
sw $s3, 0($s0)
la $t5, s
lw $s3, 0($t5)
move $a0, $s3
syscall
la $s0, l
sw $s6, 0($s0)
la $s2, t
lw $s6, 0($s2)
move $a0, $s6
syscall
la $s0, m
sw $t8, 0($s0)
la $s5, u
lw $t8, 0($s5)
move $a0, $t8
syscall
la $s0, n
sw $s1, 0($s0)
la $t1, v
lw $s1, 0($t1)
move $a0, $s1
syscall
la $s0, o
sw $t9, 0($s0)
la $t4, w
lw $t9, 0($t4)
move $a0, $t9
syscall
la $s0, p
sw $t3, 0($s0)
la $t6, x
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, q
sw $t0, 0($s0)
la $t2, y
lw $t0, 0($t2)
move $a0, $t0
syscall
la $s0, r
sw $s4, 0($s0)
la $t7, z
lw $s4, 0($t7)
move $a0, $s4
syscall
la $s0, s
sw $s3, 0($s0)
la $t5, aa
lw $s3, 0($t5)
move $a0, $s3
syscall
la $s0, t
sw $s6, 0($s0)
la $s2, ab
lw $s6, 0($s2)
move $a0, $s6
syscall
