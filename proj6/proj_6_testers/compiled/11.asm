.data
d:	.word	0	# b in original
ac:	.word	0	# temp_y in original
ar:	.word	0	# temp_j in original
an:	.word	0	# temp_n in original
ag:	.word	0	# temp_u in original
aw:	.word	0	# temp_e in original
w:	.word	0	# u in original
af:	.word	0	# temp_v in original
v:	.word	0	# t in original
ap:	.word	0	# temp_l in original
m:	.word	0	# k in original
am:	.word	0	# temp_o in original
ab:	.word	0	# z in original
e:	.word	0	# c in original
y:	.word	0	# w in original
z:	.word	0	# x in original
r:	.word	0	# p in original
al:	.word	0	# temp_p in original
p:	.word	0	# n in original
ad:	.word	0	# temp_x in original
ae:	.word	0	# temp_w in original
as:	.word	0	# temp_i in original
x:	.word	0	# v in original
aq:	.word	0	# temp_k in original
ai:	.word	0	# temp_s in original
l:	.word	0	# j in original
ax:	.word	0	# temp_d in original
c:	.word	0	# a in original
ao:	.word	0	# temp_m in original
ba:	.word	0	# temp_a in original
ay:	.word	0	# temp_c in original
q:	.word	0	# o in original
j:	.word	0	# h in original
f:	.word	0	# d in original
ah:	.word	0	# temp_t in original
n:	.word	0	# l in original
k:	.word	0	# i in original
o:	.word	0	# m in original
aj:	.word	0	# temp_r in original
u:	.word	0	# s in original
ak:	.word	0	# temp_q in original
g:	.word	0	# e in original
au:	.word	0	# temp_g in original
i:	.word	0	# g in original
aa:	.word	0	# y in original
at:	.word	0	# temp_h in original
az:	.word	0	# temp_b in original
h:	.word	0	# f in original
t:	.word	0	# r in original
s:	.word	0	# q in original
av:	.word	0	# temp_f in original
.text
li $v0, 5
syscall
la $t7, c
lw $s5, 0($t7)
move $s5, $v0
li $v0, 5
syscall
la $t4, d
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $s1, e
lw $s3, 0($s1)
move $s3, $v0
li $v0, 5
syscall
la $t2, f
lw $t5, 0($t2)
move $t5, $v0
li $v0, 5
syscall
la $s4, g
lw $t8, 0($s4)
move $t8, $v0
li $v0, 5
syscall
la $s6, h
lw $t6, 0($s6)
move $t6, $v0
li $v0, 5
syscall
la $t3, i
lw $s2, 0($t3)
move $s2, $v0
li $v0, 5
syscall
la $t9, j
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, c
sw $s5, 0($s0)
la $s5, k
lw $t7, 0($s5)
move $t7, $v0
li $v0, 5
syscall
la $s0, d
sw $t1, 0($s0)
la $t1, l
lw $t4, 0($t1)
move $t4, $v0
li $v0, 5
syscall
la $s0, e
sw $s3, 0($s0)
la $s3, m
lw $s1, 0($s3)
move $s1, $v0
li $v0, 5
syscall
la $s0, f
sw $t5, 0($s0)
la $t5, n
lw $t2, 0($t5)
move $t2, $v0
li $v0, 5
syscall
la $s0, g
sw $t8, 0($s0)
la $t8, o
lw $s4, 0($t8)
move $s4, $v0
li $v0, 5
syscall
la $s0, h
sw $t6, 0($s0)
la $t6, p
lw $s6, 0($t6)
move $s6, $v0
li $v0, 5
syscall
la $s0, i
sw $s2, 0($s0)
la $s2, q
lw $t3, 0($s2)
move $t3, $v0
li $v0, 5
syscall
la $s0, j
sw $t0, 0($s0)
la $t0, r
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $s0, k
sw $t7, 0($s0)
la $t7, s
lw $s5, 0($t7)
move $s5, $v0
li $v0, 5
syscall
la $s0, l
sw $t4, 0($s0)
la $t4, t
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $s0, m
sw $s1, 0($s0)
la $s1, u
lw $s3, 0($s1)
move $s3, $v0
li $v0, 5
syscall
la $s0, n
sw $t2, 0($s0)
la $t2, v
lw $t5, 0($t2)
move $t5, $v0
li $v0, 5
syscall
la $s0, o
sw $s4, 0($s0)
la $s4, w
lw $t8, 0($s4)
move $t8, $v0
li $v0, 5
syscall
la $s0, p
sw $s6, 0($s0)
la $s6, x
lw $t6, 0($s6)
move $t6, $v0
li $v0, 5
syscall
la $s0, q
sw $t3, 0($s0)
la $t3, y
lw $s2, 0($t3)
move $s2, $v0
li $v0, 5
syscall
la $s0, r
sw $t9, 0($s0)
la $t9, z
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, s
sw $s5, 0($s0)
la $s5, aa
lw $t7, 0($s5)
move $t7, $v0
li $v0, 5
syscall
la $s0, t
sw $t1, 0($s0)
la $t1, ab
lw $t4, 0($t1)
move $t4, $v0
move $s1, $t4
add $s1, $s1, $t7
la $s0, u
sw $s3, 0($s0)
move $s3, $s1
add $s3, $s3, $t0
move $t2, $s3
add $t2, $t2, $s2
la $s0, v
sw $t5, 0($s0)
move $t5, $t2
add $t5, $t5, $t6
move $s4, $t5
add $s4, $s4, $t8
la $s0, w
sw $t8, 0($s0)
move $t8, $s4
la $s0, x
sw $t6, 0($s0)
la $s6, v
lw $t6, 0($s6)
add $t8, $t8, $t6
move $t3, $t8
la $s0, y
sw $s2, 0($s0)
la $s2, u
lw $t9, 0($s2)
add $t3, $t3, $t9
la $s0, z
sw $t0, 0($s0)
move $t0, $t3
la $s0, aa
sw $t7, 0($s0)
la $s5, t
lw $t7, 0($s5)
add $t0, $t0, $t7
move $t1, $t0
la $s0, ab
sw $t4, 0($s0)
la $s0, ac
sw $s1, 0($s0)
la $t4, s
lw $s1, 0($t4)
add $t1, $t1, $s1
la $s0, ad
sw $s3, 0($s0)
move $s3, $t1
la $s0, ae
sw $t2, 0($s0)
la $s0, af
sw $t5, 0($s0)
la $t2, r
lw $t5, 0($t2)
add $s3, $s3, $t5
la $s0, ag
sw $s4, 0($s0)
move $s4, $s3
la $s0, ah
sw $t8, 0($s0)
la $t8, q
lw $s6, 0($t8)
add $s4, $s4, $s6
la $s0, v
sw $t6, 0($s0)
move $t6, $s4
la $s0, ai
sw $t3, 0($s0)
la $t3, p
lw $s2, 0($t3)
add $t6, $t6, $s2
la $s0, u
sw $t9, 0($s0)
move $t9, $t6
la $s0, aj
sw $t0, 0($s0)
la $t0, o
lw $s5, 0($t0)
add $t9, $t9, $s5
la $s0, t
sw $t7, 0($s0)
move $t7, $t9
la $s0, ak
sw $t1, 0($s0)
la $t1, n
lw $t4, 0($t1)
add $t7, $t7, $t4
la $s0, s
sw $s1, 0($s0)
move $s1, $t7
la $s0, al
sw $s3, 0($s0)
la $s3, m
lw $t2, 0($s3)
add $s1, $s1, $t2
la $s0, r
sw $t5, 0($s0)
move $t5, $s1
la $s0, am
sw $s4, 0($s0)
la $s4, l
lw $t8, 0($s4)
add $t5, $t5, $t8
la $s0, q
sw $s6, 0($s0)
move $s6, $t5
la $s0, an
sw $t6, 0($s0)
la $t6, k
lw $t3, 0($t6)
add $s6, $s6, $t3
la $s0, p
sw $s2, 0($s0)
move $s2, $s6
la $s0, ao
sw $t9, 0($s0)
la $t9, j
lw $t0, 0($t9)
add $s2, $s2, $t0
la $s0, o
sw $s5, 0($s0)
move $s5, $s2
la $s0, ap
sw $t7, 0($s0)
la $t7, i
lw $t1, 0($t7)
add $s5, $s5, $t1
la $s0, n
sw $t4, 0($s0)
move $t4, $s5
la $s0, aq
sw $s1, 0($s0)
la $s1, h
lw $s3, 0($s1)
add $t4, $t4, $s3
la $s0, m
sw $t2, 0($s0)
move $t2, $t4
la $s0, ar
sw $t5, 0($s0)
la $t5, g
lw $s4, 0($t5)
add $t2, $t2, $s4
la $s0, l
sw $t8, 0($s0)
move $t8, $t2
la $s0, as
sw $s6, 0($s0)
la $s6, f
lw $t6, 0($s6)
add $t8, $t8, $t6
la $s0, k
sw $t3, 0($s0)
move $t3, $t8
la $s0, at
sw $s2, 0($s0)
la $s2, e
lw $t9, 0($s2)
add $t3, $t3, $t9
la $s0, j
sw $t0, 0($s0)
move $t0, $t3
la $s0, au
sw $s5, 0($s0)
la $s5, d
lw $t7, 0($s5)
add $t0, $t0, $t7
la $s0, i
sw $t1, 0($s0)
move $t1, $t0
la $s0, av
sw $t4, 0($s0)
la $t4, c
lw $s1, 0($t4)
add $t1, $t1, $s1
li $v0, 1
move $a0, $t1
syscall
move $a0, $s1
syscall
move $a0, $t7
syscall
move $a0, $t9
syscall
move $a0, $t6
syscall
move $a0, $s4
syscall
move $a0, $s3
syscall
la $s0, h
sw $s3, 0($s0)
la $s0, aw
sw $t2, 0($s0)
la $s3, i
lw $t2, 0($s3)
move $a0, $t2
syscall
la $s0, g
sw $s4, 0($s0)
la $t5, j
lw $s4, 0($t5)
move $a0, $s4
syscall
la $s0, ax
sw $t8, 0($s0)
la $t8, k
lw $s6, 0($t8)
move $a0, $s6
syscall
la $s0, f
sw $t6, 0($s0)
la $s0, ay
sw $t3, 0($s0)
la $t6, l
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, e
sw $t9, 0($s0)
la $s2, m
lw $t9, 0($s2)
move $a0, $t9
syscall
la $s0, az
sw $t0, 0($s0)
la $t0, n
lw $s5, 0($t0)
move $a0, $s5
syscall
la $s0, d
sw $t7, 0($s0)
la $s0, ba
sw $t1, 0($s0)
la $t7, o
lw $t1, 0($t7)
move $a0, $t1
syscall
la $s0, c
sw $s1, 0($s0)
la $t4, p
lw $s1, 0($t4)
move $a0, $s1
syscall
la $s0, i
sw $t2, 0($s0)
la $s3, q
lw $t2, 0($s3)
move $a0, $t2
syscall
la $s0, j
sw $s4, 0($s0)
la $t5, r
lw $s4, 0($t5)
move $a0, $s4
syscall
la $s0, k
sw $s6, 0($s0)
la $t8, s
lw $s6, 0($t8)
move $a0, $s6
syscall
la $s0, l
sw $t3, 0($s0)
la $t6, t
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, m
sw $t9, 0($s0)
la $s2, u
lw $t9, 0($s2)
move $a0, $t9
syscall
la $s0, n
sw $s5, 0($s0)
la $t0, v
lw $s5, 0($t0)
move $a0, $s5
syscall
la $s0, o
sw $t1, 0($s0)
la $t7, w
lw $t1, 0($t7)
move $a0, $t1
syscall
la $s0, p
sw $s1, 0($s0)
la $t4, x
lw $s1, 0($t4)
move $a0, $s1
syscall
la $s0, q
sw $t2, 0($s0)
la $s3, y
lw $t2, 0($s3)
move $a0, $t2
syscall
la $s0, r
sw $s4, 0($s0)
la $t5, z
lw $s4, 0($t5)
move $a0, $s4
syscall
la $s0, s
sw $s6, 0($s0)
la $t8, aa
lw $s6, 0($t8)
move $a0, $s6
syscall
la $s0, t
sw $t3, 0($s0)
la $t6, ab
lw $t3, 0($t6)
move $a0, $t3
syscall
