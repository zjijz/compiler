.data
q:	.word	0	# o in original
o:	.word	0	# m in original
am:	.word	0	# temp_o in original
m:	.word	0	# k in original
i:	.word	0	# g in original
x:	.word	0	# v in original
f:	.word	0	# d in original
aj:	.word	0	# temp_r in original
w:	.word	0	# u in original
ap:	.word	0	# temp_l in original
ax:	.word	0	# temp_d in original
ab:	.word	0	# z in original
aq:	.word	0	# temp_k in original
ac:	.word	0	# temp_y in original
ay:	.word	0	# temp_c in original
av:	.word	0	# temp_f in original
d:	.word	0	# b in original
u:	.word	0	# s in original
t:	.word	0	# r in original
ae:	.word	0	# temp_w in original
j:	.word	0	# h in original
aa:	.word	0	# y in original
h:	.word	0	# f in original
k:	.word	0	# i in original
ai:	.word	0	# temp_s in original
ak:	.word	0	# temp_q in original
z:	.word	0	# x in original
aw:	.word	0	# temp_e in original
al:	.word	0	# temp_p in original
ad:	.word	0	# temp_x in original
af:	.word	0	# temp_v in original
l:	.word	0	# j in original
y:	.word	0	# w in original
ao:	.word	0	# temp_m in original
s:	.word	0	# q in original
an:	.word	0	# temp_n in original
g:	.word	0	# e in original
ar:	.word	0	# temp_j in original
v:	.word	0	# t in original
au:	.word	0	# temp_g in original
c:	.word	0	# a in original
p:	.word	0	# n in original
as:	.word	0	# temp_i in original
ag:	.word	0	# temp_u in original
n:	.word	0	# l in original
r:	.word	0	# p in original
ah:	.word	0	# temp_t in original
az:	.word	0	# temp_b in original
ba:	.word	0	# temp_a in original
e:	.word	0	# c in original
at:	.word	0	# temp_h in original
.text
li $v0, 5
syscall
la $t4, c
lw $t6, 0($t4)
move $t6, $v0
li $v0, 5
syscall
la $t9, d
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $t0, e
lw $t2, 0($t0)
move $t2, $v0
li $v0, 5
syscall
la $s4, f
lw $s2, 0($s4)
move $s2, $v0
li $v0, 5
syscall
la $t5, g
lw $s6, 0($t5)
move $s6, $v0
li $v0, 5
syscall
la $s3, h
lw $s1, 0($s3)
move $s1, $v0
li $v0, 5
syscall
la $t3, i
lw $t1, 0($t3)
move $t1, $v0
li $v0, 5
syscall
la $t7, j
lw $s5, 0($t7)
move $s5, $v0
li $v0, 5
syscall
la $s0, c
sw $t6, 0($s0)
la $t6, k
lw $t4, 0($t6)
move $t4, $v0
li $v0, 5
syscall
la $s0, d
sw $t8, 0($s0)
la $t8, l
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, e
sw $t2, 0($s0)
la $t2, m
lw $t0, 0($t2)
move $t0, $v0
li $v0, 5
syscall
la $s0, f
sw $s2, 0($s0)
la $s2, n
lw $s4, 0($s2)
move $s4, $v0
li $v0, 5
syscall
la $s0, g
sw $s6, 0($s0)
la $s6, o
lw $t5, 0($s6)
move $t5, $v0
li $v0, 5
syscall
la $s0, h
sw $s1, 0($s0)
la $s1, p
lw $s3, 0($s1)
move $s3, $v0
li $v0, 5
syscall
la $s0, i
sw $t1, 0($s0)
la $t1, q
lw $t3, 0($t1)
move $t3, $v0
li $v0, 5
syscall
la $s0, j
sw $s5, 0($s0)
la $s5, r
lw $t7, 0($s5)
move $t7, $v0
li $v0, 5
syscall
la $s0, k
sw $t4, 0($s0)
la $t4, s
lw $t6, 0($t4)
move $t6, $v0
li $v0, 5
syscall
la $s0, l
sw $t9, 0($s0)
la $t9, t
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s0, m
sw $t0, 0($s0)
la $t0, u
lw $t2, 0($t0)
move $t2, $v0
li $v0, 5
syscall
la $s0, n
sw $s4, 0($s0)
la $s4, v
lw $s2, 0($s4)
move $s2, $v0
li $v0, 5
syscall
la $s0, o
sw $t5, 0($s0)
la $t5, w
lw $s6, 0($t5)
move $s6, $v0
li $v0, 5
syscall
la $s0, p
sw $s3, 0($s0)
la $s3, x
lw $s1, 0($s3)
move $s1, $v0
li $v0, 5
syscall
la $s0, q
sw $t3, 0($s0)
la $t3, y
lw $t1, 0($t3)
move $t1, $v0
li $v0, 5
syscall
la $s0, r
sw $t7, 0($s0)
la $t7, z
lw $s5, 0($t7)
move $s5, $v0
li $v0, 5
syscall
la $s0, s
sw $t6, 0($s0)
la $t6, aa
lw $t4, 0($t6)
move $t4, $v0
li $v0, 5
syscall
la $s0, t
sw $t8, 0($s0)
la $t8, ab
lw $t9, 0($t8)
move $t9, $v0
move $t0, $t9
add $t0, $t0, $t4
la $s0, u
sw $t2, 0($s0)
move $t2, $t0
add $t2, $t2, $s5
move $s4, $t2
add $s4, $s4, $t1
la $s0, v
sw $s2, 0($s0)
move $s2, $s4
add $s2, $s2, $s1
move $t5, $s2
add $t5, $t5, $s6
la $s0, w
sw $s6, 0($s0)
move $s6, $t5
la $s0, x
sw $s1, 0($s0)
la $s3, v
lw $s1, 0($s3)
add $s6, $s6, $s1
move $t3, $s6
la $s0, y
sw $t1, 0($s0)
la $t1, u
lw $t7, 0($t1)
add $t3, $t3, $t7
la $s0, z
sw $s5, 0($s0)
move $s5, $t3
la $s0, aa
sw $t4, 0($s0)
la $t6, t
lw $t4, 0($t6)
add $s5, $s5, $t4
move $t8, $s5
la $s0, ab
sw $t9, 0($s0)
la $s0, ac
sw $t0, 0($s0)
la $t9, s
lw $t0, 0($t9)
add $t8, $t8, $t0
la $s0, ad
sw $t2, 0($s0)
move $t2, $t8
la $s0, ae
sw $s4, 0($s0)
la $s0, af
sw $s2, 0($s0)
la $s4, r
lw $s2, 0($s4)
add $t2, $t2, $s2
la $s0, ag
sw $t5, 0($s0)
move $t5, $t2
la $s0, ah
sw $s6, 0($s0)
la $s6, q
lw $s3, 0($s6)
add $t5, $t5, $s3
la $s0, v
sw $s1, 0($s0)
move $s1, $t5
la $s0, ai
sw $t3, 0($s0)
la $t3, p
lw $t1, 0($t3)
add $s1, $s1, $t1
la $s0, u
sw $t7, 0($s0)
move $t7, $s1
la $s0, aj
sw $s5, 0($s0)
la $s5, o
lw $t6, 0($s5)
add $t7, $t7, $t6
la $s0, t
sw $t4, 0($s0)
move $t4, $t7
la $s0, ak
sw $t8, 0($s0)
la $t8, n
lw $t9, 0($t8)
add $t4, $t4, $t9
la $s0, s
sw $t0, 0($s0)
move $t0, $t4
la $s0, al
sw $t2, 0($s0)
la $t2, m
lw $s4, 0($t2)
add $t0, $t0, $s4
la $s0, r
sw $s2, 0($s0)
move $s2, $t0
la $s0, am
sw $t5, 0($s0)
la $t5, l
lw $s6, 0($t5)
add $s2, $s2, $s6
la $s0, q
sw $s3, 0($s0)
move $s3, $s2
la $s0, an
sw $s1, 0($s0)
la $s1, k
lw $t3, 0($s1)
add $s3, $s3, $t3
la $s0, p
sw $t1, 0($s0)
move $t1, $s3
la $s0, ao
sw $t7, 0($s0)
la $t7, j
lw $s5, 0($t7)
add $t1, $t1, $s5
la $s0, o
sw $t6, 0($s0)
move $t6, $t1
la $s0, ap
sw $t4, 0($s0)
la $t4, i
lw $t8, 0($t4)
add $t6, $t6, $t8
la $s0, n
sw $t9, 0($s0)
move $t9, $t6
la $s0, aq
sw $t0, 0($s0)
la $t0, h
lw $t2, 0($t0)
add $t9, $t9, $t2
la $s0, m
sw $s4, 0($s0)
move $s4, $t9
la $s0, ar
sw $s2, 0($s0)
la $s2, g
lw $t5, 0($s2)
add $s4, $s4, $t5
la $s0, l
sw $s6, 0($s0)
move $s6, $s4
la $s0, as
sw $s3, 0($s0)
la $s3, f
lw $s1, 0($s3)
add $s6, $s6, $s1
la $s0, k
sw $t3, 0($s0)
move $t3, $s6
la $s0, at
sw $t1, 0($s0)
la $t1, e
lw $t7, 0($t1)
add $t3, $t3, $t7
la $s0, j
sw $s5, 0($s0)
move $s5, $t3
la $s0, au
sw $t6, 0($s0)
la $t6, d
lw $t4, 0($t6)
add $s5, $s5, $t4
la $s0, i
sw $t8, 0($s0)
move $t8, $s5
la $s0, av
sw $t9, 0($s0)
la $t9, c
lw $t0, 0($t9)
add $t8, $t8, $t0
li $v0, 1
move $a0, $t8
syscall
move $a0, $t0
syscall
move $a0, $t4
syscall
move $a0, $t7
syscall
move $a0, $s1
syscall
move $a0, $t5
syscall
move $a0, $t2
syscall
la $s0, h
sw $t2, 0($s0)
la $s0, aw
sw $s4, 0($s0)
la $t2, i
lw $s4, 0($t2)
move $a0, $s4
syscall
la $s0, g
sw $t5, 0($s0)
la $s2, j
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, ax
sw $s6, 0($s0)
la $s6, k
lw $s3, 0($s6)
move $a0, $s3
syscall
la $s0, f
sw $s1, 0($s0)
la $s0, ay
sw $t3, 0($s0)
la $s1, l
lw $t3, 0($s1)
move $a0, $t3
syscall
la $s0, e
sw $t7, 0($s0)
la $t1, m
lw $t7, 0($t1)
move $a0, $t7
syscall
la $s0, az
sw $s5, 0($s0)
la $s5, n
lw $t6, 0($s5)
move $a0, $t6
syscall
la $s0, d
sw $t4, 0($s0)
la $s0, ba
sw $t8, 0($s0)
la $t4, o
lw $t8, 0($t4)
move $a0, $t8
syscall
la $s0, c
sw $t0, 0($s0)
la $t9, p
lw $t0, 0($t9)
move $a0, $t0
syscall
la $s0, i
sw $s4, 0($s0)
la $t2, q
lw $s4, 0($t2)
move $a0, $s4
syscall
la $s0, j
sw $t5, 0($s0)
la $s2, r
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, k
sw $s3, 0($s0)
la $s6, s
lw $s3, 0($s6)
move $a0, $s3
syscall
la $s0, l
sw $t3, 0($s0)
la $s1, t
lw $t3, 0($s1)
move $a0, $t3
syscall
la $s0, m
sw $t7, 0($s0)
la $t1, u
lw $t7, 0($t1)
move $a0, $t7
syscall
la $s0, n
sw $t6, 0($s0)
la $s5, v
lw $t6, 0($s5)
move $a0, $t6
syscall
la $s0, o
sw $t8, 0($s0)
la $t4, w
lw $t8, 0($t4)
move $a0, $t8
syscall
la $s0, p
sw $t0, 0($s0)
la $t9, x
lw $t0, 0($t9)
move $a0, $t0
syscall
la $s0, q
sw $s4, 0($s0)
la $t2, y
lw $s4, 0($t2)
move $a0, $s4
syscall
la $s0, r
sw $t5, 0($s0)
la $s2, z
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, s
sw $s3, 0($s0)
la $s6, aa
lw $s3, 0($s6)
move $a0, $s3
syscall
la $s0, t
sw $t3, 0($s0)
la $s1, ab
lw $t3, 0($s1)
move $a0, $t3
syscall
