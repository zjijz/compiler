.data
m:	.word	0	# k in original
l:	.word	0	# j in original
at:	.word	0	# temp_h in original
d:	.word	0	# b in original
w:	.word	0	# u in original
ao:	.word	0	# temp_m in original
al:	.word	0	# temp_p in original
e:	.word	0	# c in original
h:	.word	0	# f in original
z:	.word	0	# x in original
au:	.word	0	# temp_g in original
ai:	.word	0	# temp_s in original
az:	.word	0	# temp_b in original
i:	.word	0	# g in original
y:	.word	0	# w in original
r:	.word	0	# p in original
ak:	.word	0	# temp_q in original
aw:	.word	0	# temp_e in original
av:	.word	0	# temp_f in original
ab:	.word	0	# z in original
ap:	.word	0	# temp_l in original
am:	.word	0	# temp_o in original
s:	.word	0	# q in original
ae:	.word	0	# temp_w in original
aa:	.word	0	# y in original
aq:	.word	0	# temp_k in original
f:	.word	0	# d in original
v:	.word	0	# t in original
an:	.word	0	# temp_n in original
ad:	.word	0	# temp_x in original
ay:	.word	0	# temp_c in original
o:	.word	0	# m in original
n:	.word	0	# l in original
af:	.word	0	# temp_v in original
k:	.word	0	# i in original
ax:	.word	0	# temp_d in original
g:	.word	0	# e in original
ag:	.word	0	# temp_u in original
as:	.word	0	# temp_i in original
ac:	.word	0	# temp_y in original
t:	.word	0	# r in original
j:	.word	0	# h in original
u:	.word	0	# s in original
c:	.word	0	# a in original
p:	.word	0	# n in original
ar:	.word	0	# temp_j in original
ba:	.word	0	# temp_a in original
ah:	.word	0	# temp_t in original
x:	.word	0	# v in original
aj:	.word	0	# temp_r in original
q:	.word	0	# o in original
.text
li $v0, 5
syscall
la $t0, c
lw $s2, 0($t0)
move $s2, $v0
li $v0, 5
syscall
la $s1, d
lw $s6, 0($s1)
move $s6, $v0
li $v0, 5
syscall
la $t2, e
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $s5, f
lw $t8, 0($s5)
move $t8, $v0
li $v0, 5
syscall
la $t9, g
lw $t3, 0($t9)
move $t3, $v0
li $v0, 5
syscall
la $t7, h
lw $t5, 0($t7)
move $t5, $v0
li $v0, 5
syscall
la $t6, i
lw $s4, 0($t6)
move $s4, $v0
li $v0, 5
syscall
la $t4, j
lw $s3, 0($t4)
move $s3, $v0
li $v0, 5
syscall
la $s0, c
sw $s2, 0($s0)
la $s2, k
lw $t0, 0($s2)
move $t0, $v0
li $v0, 5
syscall
la $s0, d
sw $s6, 0($s0)
la $s6, l
lw $s1, 0($s6)
move $s1, $v0
li $v0, 5
syscall
la $s0, e
sw $t1, 0($s0)
la $t1, m
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $s0, f
sw $t8, 0($s0)
la $t8, n
lw $s5, 0($t8)
move $s5, $v0
li $v0, 5
syscall
la $s0, g
sw $t3, 0($s0)
la $t3, o
lw $t9, 0($t3)
move $t9, $v0
li $v0, 5
syscall
la $s0, h
sw $t5, 0($s0)
la $t5, p
lw $t7, 0($t5)
move $t7, $v0
li $v0, 5
syscall
la $s0, i
sw $s4, 0($s0)
la $s4, q
lw $t6, 0($s4)
move $t6, $v0
li $v0, 5
syscall
la $s0, j
sw $s3, 0($s0)
la $s3, r
lw $t4, 0($s3)
move $t4, $v0
li $v0, 5
syscall
la $s0, k
sw $t0, 0($s0)
la $t0, s
lw $s2, 0($t0)
move $s2, $v0
li $v0, 5
syscall
la $s0, l
sw $s1, 0($s0)
la $s1, t
lw $s6, 0($s1)
move $s6, $v0
li $v0, 5
syscall
la $s0, m
sw $t2, 0($s0)
la $t2, u
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $s0, n
sw $s5, 0($s0)
la $s5, v
lw $t8, 0($s5)
move $t8, $v0
li $v0, 5
syscall
la $s0, o
sw $t9, 0($s0)
la $t9, w
lw $t3, 0($t9)
move $t3, $v0
li $v0, 5
syscall
la $s0, p
sw $t7, 0($s0)
la $t7, x
lw $t5, 0($t7)
move $t5, $v0
li $v0, 5
syscall
la $s0, q
sw $t6, 0($s0)
la $t6, y
lw $s4, 0($t6)
move $s4, $v0
li $v0, 5
syscall
la $s0, r
sw $t4, 0($s0)
la $t4, z
lw $s3, 0($t4)
move $s3, $v0
li $v0, 5
syscall
la $s0, s
sw $s2, 0($s0)
la $s2, aa
lw $t0, 0($s2)
move $t0, $v0
li $v0, 5
syscall
la $s0, t
sw $s6, 0($s0)
la $s6, ab
lw $s1, 0($s6)
move $s1, $v0
move $t2, $s1
add $t2, $t2, $t0
la $s0, u
sw $t1, 0($s0)
move $t1, $t2
add $t1, $t1, $s3
move $s5, $t1
add $s5, $s5, $s4
la $s0, v
sw $t8, 0($s0)
move $t8, $s5
add $t8, $t8, $t5
move $t9, $t8
add $t9, $t9, $t3
la $s0, w
sw $t3, 0($s0)
move $t3, $t9
la $s0, x
sw $t5, 0($s0)
la $t7, v
lw $t5, 0($t7)
add $t3, $t3, $t5
move $t6, $t3
la $s0, y
sw $s4, 0($s0)
la $s4, u
lw $t4, 0($s4)
add $t6, $t6, $t4
la $s0, z
sw $s3, 0($s0)
move $s3, $t6
la $s0, aa
sw $t0, 0($s0)
la $s2, t
lw $t0, 0($s2)
add $s3, $s3, $t0
move $s6, $s3
la $s0, ab
sw $s1, 0($s0)
la $s0, ac
sw $t2, 0($s0)
la $s1, s
lw $t2, 0($s1)
add $s6, $s6, $t2
la $s0, ad
sw $t1, 0($s0)
move $t1, $s6
la $s0, ae
sw $s5, 0($s0)
la $s0, af
sw $t8, 0($s0)
la $s5, r
lw $t8, 0($s5)
add $t1, $t1, $t8
la $s0, ag
sw $t9, 0($s0)
move $t9, $t1
la $s0, ah
sw $t3, 0($s0)
la $t3, q
lw $t7, 0($t3)
add $t9, $t9, $t7
la $s0, v
sw $t5, 0($s0)
move $t5, $t9
la $s0, ai
sw $t6, 0($s0)
la $t6, p
lw $s4, 0($t6)
add $t5, $t5, $s4
la $s0, u
sw $t4, 0($s0)
move $t4, $t5
la $s0, aj
sw $s3, 0($s0)
la $s3, o
lw $s2, 0($s3)
add $t4, $t4, $s2
la $s0, t
sw $t0, 0($s0)
move $t0, $t4
la $s0, ak
sw $s6, 0($s0)
la $s6, n
lw $s1, 0($s6)
add $t0, $t0, $s1
la $s0, s
sw $t2, 0($s0)
move $t2, $t0
la $s0, al
sw $t1, 0($s0)
la $t1, m
lw $s5, 0($t1)
add $t2, $t2, $s5
la $s0, r
sw $t8, 0($s0)
move $t8, $t2
la $s0, am
sw $t9, 0($s0)
la $t9, l
lw $t3, 0($t9)
add $t8, $t8, $t3
la $s0, q
sw $t7, 0($s0)
move $t7, $t8
la $s0, an
sw $t5, 0($s0)
la $t5, k
lw $t6, 0($t5)
add $t7, $t7, $t6
la $s0, p
sw $s4, 0($s0)
move $s4, $t7
la $s0, ao
sw $t4, 0($s0)
la $t4, j
lw $s3, 0($t4)
add $s4, $s4, $s3
la $s0, o
sw $s2, 0($s0)
move $s2, $s4
la $s0, ap
sw $t0, 0($s0)
la $t0, i
lw $s6, 0($t0)
add $s2, $s2, $s6
la $s0, n
sw $s1, 0($s0)
move $s1, $s2
la $s0, aq
sw $t2, 0($s0)
la $t2, h
lw $t1, 0($t2)
add $s1, $s1, $t1
la $s0, m
sw $s5, 0($s0)
move $s5, $s1
la $s0, ar
sw $t8, 0($s0)
la $t8, g
lw $t9, 0($t8)
add $s5, $s5, $t9
la $s0, l
sw $t3, 0($s0)
move $t3, $s5
la $s0, as
sw $t7, 0($s0)
la $t7, f
lw $t5, 0($t7)
add $t3, $t3, $t5
la $s0, k
sw $t6, 0($s0)
move $t6, $t3
la $s0, at
sw $s4, 0($s0)
la $s4, e
lw $t4, 0($s4)
add $t6, $t6, $t4
la $s0, j
sw $s3, 0($s0)
move $s3, $t6
la $s0, au
sw $s2, 0($s0)
la $s2, d
lw $t0, 0($s2)
add $s3, $s3, $t0
la $s0, i
sw $s6, 0($s0)
move $s6, $s3
la $s0, av
sw $s1, 0($s0)
la $s1, c
lw $t2, 0($s1)
add $s6, $s6, $t2
li $v0, 1
move $a0, $s6
syscall
move $a0, $t2
syscall
move $a0, $t0
syscall
move $a0, $t4
syscall
move $a0, $t5
syscall
move $a0, $t9
syscall
move $a0, $t1
syscall
la $s0, h
sw $t1, 0($s0)
la $s0, aw
sw $s5, 0($s0)
la $t1, i
lw $s5, 0($t1)
move $a0, $s5
syscall
la $s0, g
sw $t9, 0($s0)
la $t8, j
lw $t9, 0($t8)
move $a0, $t9
syscall
la $s0, ax
sw $t3, 0($s0)
la $t3, k
lw $t7, 0($t3)
move $a0, $t7
syscall
la $s0, f
sw $t5, 0($s0)
la $s0, ay
sw $t6, 0($s0)
la $t5, l
lw $t6, 0($t5)
move $a0, $t6
syscall
la $s0, e
sw $t4, 0($s0)
la $s4, m
lw $t4, 0($s4)
move $a0, $t4
syscall
la $s0, az
sw $s3, 0($s0)
la $s3, n
lw $s2, 0($s3)
move $a0, $s2
syscall
la $s0, d
sw $t0, 0($s0)
la $s0, ba
sw $s6, 0($s0)
la $t0, o
lw $s6, 0($t0)
move $a0, $s6
syscall
la $s0, c
sw $t2, 0($s0)
la $s1, p
lw $t2, 0($s1)
move $a0, $t2
syscall
la $s0, i
sw $s5, 0($s0)
la $t1, q
lw $s5, 0($t1)
move $a0, $s5
syscall
la $s0, j
sw $t9, 0($s0)
la $t8, r
lw $t9, 0($t8)
move $a0, $t9
syscall
la $s0, k
sw $t7, 0($s0)
la $t3, s
lw $t7, 0($t3)
move $a0, $t7
syscall
la $s0, l
sw $t6, 0($s0)
la $t5, t
lw $t6, 0($t5)
move $a0, $t6
syscall
la $s0, m
sw $t4, 0($s0)
la $s4, u
lw $t4, 0($s4)
move $a0, $t4
syscall
la $s0, n
sw $s2, 0($s0)
la $s3, v
lw $s2, 0($s3)
move $a0, $s2
syscall
la $s0, o
sw $s6, 0($s0)
la $t0, w
lw $s6, 0($t0)
move $a0, $s6
syscall
la $s0, p
sw $t2, 0($s0)
la $s1, x
lw $t2, 0($s1)
move $a0, $t2
syscall
la $s0, q
sw $s5, 0($s0)
la $t1, y
lw $s5, 0($t1)
move $a0, $s5
syscall
la $s0, r
sw $t9, 0($s0)
la $t8, z
lw $t9, 0($t8)
move $a0, $t9
syscall
la $s0, s
sw $t7, 0($s0)
la $t3, aa
lw $t7, 0($t3)
move $a0, $t7
syscall
la $s0, t
sw $t6, 0($s0)
la $t5, ab
lw $t6, 0($t5)
move $a0, $t6
syscall
