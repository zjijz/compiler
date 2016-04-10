.data
u:	.word	0	# s in original
ai:	.word	0	# temp_s in original
t:	.word	0	# r in original
v:	.word	0	# t in original
d:	.word	0	# b in original
ao:	.word	0	# temp_m in original
q:	.word	0	# o in original
aj:	.word	0	# temp_r in original
ab:	.word	0	# z in original
az:	.word	0	# temp_b in original
aw:	.word	0	# temp_e in original
g:	.word	0	# e in original
al:	.word	0	# temp_p in original
am:	.word	0	# temp_o in original
af:	.word	0	# temp_v in original
s:	.word	0	# q in original
ah:	.word	0	# temp_t in original
f:	.word	0	# d in original
r:	.word	0	# p in original
ad:	.word	0	# temp_x in original
au:	.word	0	# temp_g in original
av:	.word	0	# temp_f in original
e:	.word	0	# c in original
y:	.word	0	# w in original
i:	.word	0	# g in original
n:	.word	0	# l in original
w:	.word	0	# u in original
ay:	.word	0	# temp_c in original
c:	.word	0	# a in original
ba:	.word	0	# temp_a in original
aa:	.word	0	# y in original
m:	.word	0	# k in original
at:	.word	0	# temp_h in original
ac:	.word	0	# temp_y in original
ak:	.word	0	# temp_q in original
z:	.word	0	# x in original
ar:	.word	0	# temp_j in original
k:	.word	0	# i in original
p:	.word	0	# n in original
ae:	.word	0	# temp_w in original
x:	.word	0	# v in original
aq:	.word	0	# temp_k in original
h:	.word	0	# f in original
ap:	.word	0	# temp_l in original
l:	.word	0	# j in original
ag:	.word	0	# temp_u in original
j:	.word	0	# h in original
ax:	.word	0	# temp_d in original
o:	.word	0	# m in original
as:	.word	0	# temp_i in original
an:	.word	0	# temp_n in original
.text
li $v0, 5
syscall
la $t4, c
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
la $t8, d
lw $s6, 0($t8)
move $s6, $v0
li $v0, 5
syscall
la $t5, e
lw $t1, 0($t5)
move $t1, $v0
li $v0, 5
syscall
la $s2, f
lw $t3, 0($s2)
move $t3, $v0
li $v0, 5
syscall
la $s3, g
lw $s4, 0($s3)
move $s4, $v0
li $v0, 5
syscall
la $s5, h
lw $t0, 0($s5)
move $t0, $v0
li $v0, 5
syscall
la $t6, i
lw $s1, 0($t6)
move $s1, $v0
li $v0, 5
syscall
la $t9, j
lw $t7, 0($t9)
move $t7, $v0
li $v0, 5
syscall
la $s0, c
sw $t2, 0($s0)
la $t2, k
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s0, d
sw $s6, 0($s0)
la $s6, l
lw $t8, 0($s6)
move $t8, $v0
li $v0, 5
syscall
la $s0, e
sw $t1, 0($s0)
la $t1, m
lw $t5, 0($t1)
move $t5, $v0
li $v0, 5
syscall
la $s0, f
sw $t3, 0($s0)
la $t3, n
lw $s2, 0($t3)
move $s2, $v0
li $v0, 5
syscall
la $s0, g
sw $s4, 0($s0)
la $s4, o
lw $s3, 0($s4)
move $s3, $v0
li $v0, 5
syscall
la $s0, h
sw $t0, 0($s0)
la $t0, p
lw $s5, 0($t0)
move $s5, $v0
li $v0, 5
syscall
la $s0, i
sw $s1, 0($s0)
la $s1, q
lw $t6, 0($s1)
move $t6, $v0
li $v0, 5
syscall
la $s0, j
sw $t7, 0($s0)
la $t7, r
lw $t9, 0($t7)
move $t9, $v0
li $v0, 5
syscall
la $s0, k
sw $t4, 0($s0)
la $t4, s
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
la $s0, l
sw $t8, 0($s0)
la $t8, t
lw $s6, 0($t8)
move $s6, $v0
li $v0, 5
syscall
la $s0, m
sw $t5, 0($s0)
la $t5, u
lw $t1, 0($t5)
move $t1, $v0
li $v0, 5
syscall
la $s0, n
sw $s2, 0($s0)
la $s2, v
lw $t3, 0($s2)
move $t3, $v0
li $v0, 5
syscall
la $s0, o
sw $s3, 0($s0)
la $s3, w
lw $s4, 0($s3)
move $s4, $v0
li $v0, 5
syscall
la $s0, p
sw $s5, 0($s0)
la $s5, x
lw $t0, 0($s5)
move $t0, $v0
li $v0, 5
syscall
la $s0, q
sw $t6, 0($s0)
la $t6, y
lw $s1, 0($t6)
move $s1, $v0
li $v0, 5
syscall
la $s0, r
sw $t9, 0($s0)
la $t9, z
lw $t7, 0($t9)
move $t7, $v0
li $v0, 5
syscall
la $s0, s
sw $t2, 0($s0)
la $t2, aa
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s0, t
sw $s6, 0($s0)
la $s6, ab
lw $t8, 0($s6)
move $t8, $v0
move $t5, $t8
add $t5, $t5, $t4
la $s0, u
sw $t1, 0($s0)
move $t1, $t5
add $t1, $t1, $t7
move $s2, $t1
add $s2, $s2, $s1
la $s0, v
sw $t3, 0($s0)
move $t3, $s2
add $t3, $t3, $t0
move $s3, $t3
add $s3, $s3, $s4
la $s0, w
sw $s4, 0($s0)
move $s4, $s3
la $s0, x
sw $t0, 0($s0)
la $s5, v
lw $t0, 0($s5)
add $s4, $s4, $t0
move $t6, $s4
la $s0, y
sw $s1, 0($s0)
la $s1, u
lw $t9, 0($s1)
add $t6, $t6, $t9
la $s0, z
sw $t7, 0($s0)
move $t7, $t6
la $s0, aa
sw $t4, 0($s0)
la $t2, t
lw $t4, 0($t2)
add $t7, $t7, $t4
move $s6, $t7
la $s0, ab
sw $t8, 0($s0)
la $s0, ac
sw $t5, 0($s0)
la $t8, s
lw $t5, 0($t8)
add $s6, $s6, $t5
la $s0, ad
sw $t1, 0($s0)
move $t1, $s6
la $s0, ae
sw $s2, 0($s0)
la $s0, af
sw $t3, 0($s0)
la $s2, r
lw $t3, 0($s2)
add $t1, $t1, $t3
la $s0, ag
sw $s3, 0($s0)
move $s3, $t1
la $s0, ah
sw $s4, 0($s0)
la $s4, q
lw $s5, 0($s4)
add $s3, $s3, $s5
la $s0, v
sw $t0, 0($s0)
move $t0, $s3
la $s0, ai
sw $t6, 0($s0)
la $t6, p
lw $s1, 0($t6)
add $t0, $t0, $s1
la $s0, u
sw $t9, 0($s0)
move $t9, $t0
la $s0, aj
sw $t7, 0($s0)
la $t7, o
lw $t2, 0($t7)
add $t9, $t9, $t2
la $s0, t
sw $t4, 0($s0)
move $t4, $t9
la $s0, ak
sw $s6, 0($s0)
la $s6, n
lw $t8, 0($s6)
add $t4, $t4, $t8
la $s0, s
sw $t5, 0($s0)
move $t5, $t4
la $s0, al
sw $t1, 0($s0)
la $t1, m
lw $s2, 0($t1)
add $t5, $t5, $s2
la $s0, r
sw $t3, 0($s0)
move $t3, $t5
la $s0, am
sw $s3, 0($s0)
la $s3, l
lw $s4, 0($s3)
add $t3, $t3, $s4
la $s0, q
sw $s5, 0($s0)
move $s5, $t3
la $s0, an
sw $t0, 0($s0)
la $t0, k
lw $t6, 0($t0)
add $s5, $s5, $t6
la $s0, p
sw $s1, 0($s0)
move $s1, $s5
la $s0, ao
sw $t9, 0($s0)
la $t9, j
lw $t7, 0($t9)
add $s1, $s1, $t7
la $s0, o
sw $t2, 0($s0)
move $t2, $s1
la $s0, ap
sw $t4, 0($s0)
la $t4, i
lw $s6, 0($t4)
add $t2, $t2, $s6
la $s0, n
sw $t8, 0($s0)
move $t8, $t2
la $s0, aq
sw $t5, 0($s0)
la $t5, h
lw $t1, 0($t5)
add $t8, $t8, $t1
la $s0, m
sw $s2, 0($s0)
move $s2, $t8
la $s0, ar
sw $t3, 0($s0)
la $t3, g
lw $s3, 0($t3)
add $s2, $s2, $s3
la $s0, l
sw $s4, 0($s0)
move $s4, $s2
la $s0, as
sw $s5, 0($s0)
la $s5, f
lw $t0, 0($s5)
add $s4, $s4, $t0
la $s0, k
sw $t6, 0($s0)
move $t6, $s4
la $s0, at
sw $s1, 0($s0)
la $s1, e
lw $t9, 0($s1)
add $t6, $t6, $t9
la $s0, j
sw $t7, 0($s0)
move $t7, $t6
la $s0, au
sw $t2, 0($s0)
la $t2, d
lw $t4, 0($t2)
add $t7, $t7, $t4
la $s0, i
sw $s6, 0($s0)
move $s6, $t7
la $s0, av
sw $t8, 0($s0)
la $t8, c
lw $t5, 0($t8)
add $s6, $s6, $t5
li $v0, 1
move $a0, $s6
syscall
move $a0, $t5
syscall
move $a0, $t4
syscall
move $a0, $t9
syscall
move $a0, $t0
syscall
move $a0, $s3
syscall
move $a0, $t1
syscall
la $s0, h
sw $t1, 0($s0)
la $s0, aw
sw $s2, 0($s0)
la $t1, i
lw $s2, 0($t1)
move $a0, $s2
syscall
la $s0, g
sw $s3, 0($s0)
la $t3, j
lw $s3, 0($t3)
move $a0, $s3
syscall
la $s0, ax
sw $s4, 0($s0)
la $s4, k
lw $s5, 0($s4)
move $a0, $s5
syscall
la $s0, f
sw $t0, 0($s0)
la $s0, ay
sw $t6, 0($s0)
la $t0, l
lw $t6, 0($t0)
move $a0, $t6
syscall
la $s0, e
sw $t9, 0($s0)
la $s1, m
lw $t9, 0($s1)
move $a0, $t9
syscall
la $s0, az
sw $t7, 0($s0)
la $t7, n
lw $t2, 0($t7)
move $a0, $t2
syscall
la $s0, d
sw $t4, 0($s0)
la $s0, ba
sw $s6, 0($s0)
la $t4, o
lw $s6, 0($t4)
move $a0, $s6
syscall
la $s0, c
sw $t5, 0($s0)
la $t8, p
lw $t5, 0($t8)
move $a0, $t5
syscall
la $s0, i
sw $s2, 0($s0)
la $t1, q
lw $s2, 0($t1)
move $a0, $s2
syscall
la $s0, j
sw $s3, 0($s0)
la $t3, r
lw $s3, 0($t3)
move $a0, $s3
syscall
la $s0, k
sw $s5, 0($s0)
la $s4, s
lw $s5, 0($s4)
move $a0, $s5
syscall
la $s0, l
sw $t6, 0($s0)
la $t0, t
lw $t6, 0($t0)
move $a0, $t6
syscall
la $s0, m
sw $t9, 0($s0)
la $s1, u
lw $t9, 0($s1)
move $a0, $t9
syscall
la $s0, n
sw $t2, 0($s0)
la $t7, v
lw $t2, 0($t7)
move $a0, $t2
syscall
la $s0, o
sw $s6, 0($s0)
la $t4, w
lw $s6, 0($t4)
move $a0, $s6
syscall
la $s0, p
sw $t5, 0($s0)
la $t8, x
lw $t5, 0($t8)
move $a0, $t5
syscall
la $s0, q
sw $s2, 0($s0)
la $t1, y
lw $s2, 0($t1)
move $a0, $s2
syscall
la $s0, r
sw $s3, 0($s0)
la $t3, z
lw $s3, 0($t3)
move $a0, $s3
syscall
la $s0, s
sw $s5, 0($s0)
la $s4, aa
lw $s5, 0($s4)
move $a0, $s5
syscall
la $s0, t
sw $t6, 0($s0)
la $t0, ab
lw $t6, 0($t0)
move $a0, $t6
syscall
