.data
r:	.word	0	# p in original
o:	.word	0	# m in original
c:	.word	0	# a in original
ag:	.word	0	# temp_u in original
as:	.word	0	# temp_i in original
p:	.word	0	# n in original
ax:	.word	0	# temp_d in original
ba:	.word	0	# temp_a in original
av:	.word	0	# temp_f in original
aa:	.word	0	# y in original
aw:	.word	0	# temp_e in original
i:	.word	0	# g in original
h:	.word	0	# f in original
ak:	.word	0	# temp_q in original
z:	.word	0	# x in original
ap:	.word	0	# temp_l in original
ai:	.word	0	# temp_s in original
y:	.word	0	# w in original
e:	.word	0	# c in original
k:	.word	0	# i in original
at:	.word	0	# temp_h in original
aq:	.word	0	# temp_k in original
ao:	.word	0	# temp_m in original
v:	.word	0	# t in original
q:	.word	0	# o in original
x:	.word	0	# v in original
d:	.word	0	# b in original
w:	.word	0	# u in original
n:	.word	0	# l in original
g:	.word	0	# e in original
af:	.word	0	# temp_v in original
ae:	.word	0	# temp_w in original
l:	.word	0	# j in original
ac:	.word	0	# temp_y in original
am:	.word	0	# temp_o in original
ab:	.word	0	# z in original
s:	.word	0	# q in original
al:	.word	0	# temp_p in original
t:	.word	0	# r in original
au:	.word	0	# temp_g in original
f:	.word	0	# d in original
ar:	.word	0	# temp_j in original
an:	.word	0	# temp_n in original
u:	.word	0	# s in original
j:	.word	0	# h in original
ah:	.word	0	# temp_t in original
m:	.word	0	# k in original
ay:	.word	0	# temp_c in original
az:	.word	0	# temp_b in original
aj:	.word	0	# temp_r in original
ad:	.word	0	# temp_x in original
.text
li $v0, 5
syscall
la $s3, c
lw $s1, 0($s3)
move $s1, $v0
li $v0, 5
syscall
la $t9, d
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s4, e
lw $t2, 0($s4)
move $t2, $v0
li $v0, 5
syscall
la $t4, f
lw $t8, 0($t4)
move $t8, $v0
li $v0, 5
syscall
la $s5, g
lw $s6, 0($s5)
move $s6, $v0
li $v0, 5
syscall
la $t7, h
lw $t1, 0($t7)
move $t1, $v0
li $v0, 5
syscall
la $t6, i
lw $s2, 0($t6)
move $s2, $v0
li $v0, 5
syscall
la $t5, j
lw $t3, 0($t5)
move $t3, $v0
li $v0, 5
syscall
la $s0, c
sw $s1, 0($s0)
la $s1, k
lw $s3, 0($s1)
move $s3, $v0
li $v0, 5
syscall
la $s0, d
sw $t0, 0($s0)
la $t0, l
lw $t9, 0($t0)
move $t9, $v0
li $v0, 5
syscall
la $s0, e
sw $t2, 0($s0)
la $t2, m
lw $s4, 0($t2)
move $s4, $v0
li $v0, 5
syscall
la $s0, f
sw $t8, 0($s0)
la $t8, n
lw $t4, 0($t8)
move $t4, $v0
li $v0, 5
syscall
la $s0, g
sw $s6, 0($s0)
la $s6, o
lw $s5, 0($s6)
move $s5, $v0
li $v0, 5
syscall
la $s0, h
sw $t1, 0($s0)
la $t1, p
lw $t7, 0($t1)
move $t7, $v0
li $v0, 5
syscall
la $s0, i
sw $s2, 0($s0)
la $s2, q
lw $t6, 0($s2)
move $t6, $v0
li $v0, 5
syscall
la $s0, j
sw $t3, 0($s0)
la $t3, r
lw $t5, 0($t3)
move $t5, $v0
li $v0, 5
syscall
la $s0, k
sw $s3, 0($s0)
la $s3, s
lw $s1, 0($s3)
move $s1, $v0
li $v0, 5
syscall
la $s0, l
sw $t9, 0($s0)
la $t9, t
lw $t0, 0($t9)
move $t0, $v0
li $v0, 5
syscall
la $s0, m
sw $s4, 0($s0)
la $s4, u
lw $t2, 0($s4)
move $t2, $v0
li $v0, 5
syscall
la $s0, n
sw $t4, 0($s0)
la $t4, v
lw $t8, 0($t4)
move $t8, $v0
li $v0, 5
syscall
la $s0, o
sw $s5, 0($s0)
la $s5, w
lw $s6, 0($s5)
move $s6, $v0
li $v0, 5
syscall
la $s0, p
sw $t7, 0($s0)
la $t7, x
lw $t1, 0($t7)
move $t1, $v0
li $v0, 5
syscall
la $s0, q
sw $t6, 0($s0)
la $t6, y
lw $s2, 0($t6)
move $s2, $v0
li $v0, 5
syscall
la $s0, r
sw $t5, 0($s0)
la $t5, z
lw $t3, 0($t5)
move $t3, $v0
li $v0, 5
syscall
la $s0, s
sw $s1, 0($s0)
la $s1, aa
lw $s3, 0($s1)
move $s3, $v0
li $v0, 5
syscall
la $s0, t
sw $t0, 0($s0)
la $t0, ab
lw $t9, 0($t0)
move $t9, $v0
move $s4, $t9
add $s4, $s4, $s3
la $s0, u
sw $t2, 0($s0)
move $t2, $s4
add $t2, $t2, $t3
move $t4, $t2
add $t4, $t4, $s2
la $s0, v
sw $t8, 0($s0)
move $t8, $t4
add $t8, $t8, $t1
move $s5, $t8
add $s5, $s5, $s6
la $s0, w
sw $s6, 0($s0)
move $s6, $s5
la $s0, x
sw $t1, 0($s0)
la $t7, v
lw $t1, 0($t7)
add $s6, $s6, $t1
move $t6, $s6
la $s0, y
sw $s2, 0($s0)
la $s2, u
lw $t5, 0($s2)
add $t6, $t6, $t5
la $s0, z
sw $t3, 0($s0)
move $t3, $t6
la $s0, aa
sw $s3, 0($s0)
la $s1, t
lw $s3, 0($s1)
add $t3, $t3, $s3
move $t0, $t3
la $s0, ab
sw $t9, 0($s0)
la $s0, ac
sw $s4, 0($s0)
la $t9, s
lw $s4, 0($t9)
add $t0, $t0, $s4
la $s0, ad
sw $t2, 0($s0)
move $t2, $t0
la $s0, ae
sw $t4, 0($s0)
la $s0, af
sw $t8, 0($s0)
la $t4, r
lw $t8, 0($t4)
add $t2, $t2, $t8
la $s0, ag
sw $s5, 0($s0)
move $s5, $t2
la $s0, ah
sw $s6, 0($s0)
la $s6, q
lw $t7, 0($s6)
add $s5, $s5, $t7
la $s0, v
sw $t1, 0($s0)
move $t1, $s5
la $s0, ai
sw $t6, 0($s0)
la $t6, p
lw $s2, 0($t6)
add $t1, $t1, $s2
la $s0, u
sw $t5, 0($s0)
move $t5, $t1
la $s0, aj
sw $t3, 0($s0)
la $t3, o
lw $s1, 0($t3)
add $t5, $t5, $s1
la $s0, t
sw $s3, 0($s0)
move $s3, $t5
la $s0, ak
sw $t0, 0($s0)
la $t0, n
lw $t9, 0($t0)
add $s3, $s3, $t9
la $s0, s
sw $s4, 0($s0)
move $s4, $s3
la $s0, al
sw $t2, 0($s0)
la $t2, m
lw $t4, 0($t2)
add $s4, $s4, $t4
la $s0, r
sw $t8, 0($s0)
move $t8, $s4
la $s0, am
sw $s5, 0($s0)
la $s5, l
lw $s6, 0($s5)
add $t8, $t8, $s6
la $s0, q
sw $t7, 0($s0)
move $t7, $t8
la $s0, an
sw $t1, 0($s0)
la $t1, k
lw $t6, 0($t1)
add $t7, $t7, $t6
la $s0, p
sw $s2, 0($s0)
move $s2, $t7
la $s0, ao
sw $t5, 0($s0)
la $t5, j
lw $t3, 0($t5)
add $s2, $s2, $t3
la $s0, o
sw $s1, 0($s0)
move $s1, $s2
la $s0, ap
sw $s3, 0($s0)
la $s3, i
lw $t0, 0($s3)
add $s1, $s1, $t0
la $s0, n
sw $t9, 0($s0)
move $t9, $s1
la $s0, aq
sw $s4, 0($s0)
la $s4, h
lw $t2, 0($s4)
add $t9, $t9, $t2
la $s0, m
sw $t4, 0($s0)
move $t4, $t9
la $s0, ar
sw $t8, 0($s0)
la $t8, g
lw $s5, 0($t8)
add $t4, $t4, $s5
la $s0, l
sw $s6, 0($s0)
move $s6, $t4
la $s0, as
sw $t7, 0($s0)
la $t7, f
lw $t1, 0($t7)
add $s6, $s6, $t1
la $s0, k
sw $t6, 0($s0)
move $t6, $s6
la $s0, at
sw $s2, 0($s0)
la $s2, e
lw $t5, 0($s2)
add $t6, $t6, $t5
la $s0, j
sw $t3, 0($s0)
move $t3, $t6
la $s0, au
sw $s1, 0($s0)
la $s1, d
lw $s3, 0($s1)
add $t3, $t3, $s3
la $s0, i
sw $t0, 0($s0)
move $t0, $t3
la $s0, av
sw $t9, 0($s0)
la $t9, c
lw $s4, 0($t9)
add $t0, $t0, $s4
li $v0, 1
move $a0, $t0
syscall
move $a0, $s4
syscall
move $a0, $s3
syscall
move $a0, $t5
syscall
move $a0, $t1
syscall
move $a0, $s5
syscall
move $a0, $t2
syscall
la $s0, h
sw $t2, 0($s0)
la $s0, aw
sw $t4, 0($s0)
la $t2, i
lw $t4, 0($t2)
move $a0, $t4
syscall
la $s0, g
sw $s5, 0($s0)
la $t8, j
lw $s5, 0($t8)
move $a0, $s5
syscall
la $s0, ax
sw $s6, 0($s0)
la $s6, k
lw $t7, 0($s6)
move $a0, $t7
syscall
la $s0, f
sw $t1, 0($s0)
la $s0, ay
sw $t6, 0($s0)
la $t1, l
lw $t6, 0($t1)
move $a0, $t6
syscall
la $s0, e
sw $t5, 0($s0)
la $s2, m
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, az
sw $t3, 0($s0)
la $t3, n
lw $s1, 0($t3)
move $a0, $s1
syscall
la $s0, d
sw $s3, 0($s0)
la $s0, ba
sw $t0, 0($s0)
la $s3, o
lw $t0, 0($s3)
move $a0, $t0
syscall
la $s0, c
sw $s4, 0($s0)
la $t9, p
lw $s4, 0($t9)
move $a0, $s4
syscall
la $s0, i
sw $t4, 0($s0)
la $t2, q
lw $t4, 0($t2)
move $a0, $t4
syscall
la $s0, j
sw $s5, 0($s0)
la $t8, r
lw $s5, 0($t8)
move $a0, $s5
syscall
la $s0, k
sw $t7, 0($s0)
la $s6, s
lw $t7, 0($s6)
move $a0, $t7
syscall
la $s0, l
sw $t6, 0($s0)
la $t1, t
lw $t6, 0($t1)
move $a0, $t6
syscall
la $s0, m
sw $t5, 0($s0)
la $s2, u
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, n
sw $s1, 0($s0)
la $t3, v
lw $s1, 0($t3)
move $a0, $s1
syscall
la $s0, o
sw $t0, 0($s0)
la $s3, w
lw $t0, 0($s3)
move $a0, $t0
syscall
la $s0, p
sw $s4, 0($s0)
la $t9, x
lw $s4, 0($t9)
move $a0, $s4
syscall
la $s0, q
sw $t4, 0($s0)
la $t2, y
lw $t4, 0($t2)
move $a0, $t4
syscall
la $s0, r
sw $s5, 0($s0)
la $t8, z
lw $s5, 0($t8)
move $a0, $s5
syscall
la $s0, s
sw $t7, 0($s0)
la $s6, aa
lw $t7, 0($s6)
move $a0, $t7
syscall
la $s0, t
sw $t6, 0($s0)
la $t1, ab
lw $t6, 0($t1)
move $a0, $t6
syscall
