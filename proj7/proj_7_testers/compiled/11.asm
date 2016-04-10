.data
w:	.word	0	# u in original
e:	.word	0	# c in original
g:	.word	0	# e in original
ag:	.word	0	# temp_u in original
i:	.word	0	# g in original
j:	.word	0	# h in original
t:	.word	0	# r in original
l:	.word	0	# j in original
c:	.word	0	# a in original
aw:	.word	0	# temp_e in original
az:	.word	0	# temp_b in original
z:	.word	0	# x in original
ay:	.word	0	# temp_c in original
av:	.word	0	# temp_f in original
ae:	.word	0	# temp_w in original
am:	.word	0	# temp_o in original
ak:	.word	0	# temp_q in original
n:	.word	0	# l in original
aa:	.word	0	# y in original
an:	.word	0	# temp_n in original
r:	.word	0	# p in original
aj:	.word	0	# temp_r in original
f:	.word	0	# d in original
m:	.word	0	# k in original
h:	.word	0	# f in original
y:	.word	0	# w in original
o:	.word	0	# m in original
as:	.word	0	# temp_i in original
ab:	.word	0	# z in original
ac:	.word	0	# temp_y in original
au:	.word	0	# temp_g in original
d:	.word	0	# b in original
ax:	.word	0	# temp_d in original
u:	.word	0	# s in original
ao:	.word	0	# temp_m in original
ai:	.word	0	# temp_s in original
ba:	.word	0	# temp_a in original
v:	.word	0	# t in original
ap:	.word	0	# temp_l in original
ar:	.word	0	# temp_j in original
ad:	.word	0	# temp_x in original
af:	.word	0	# temp_v in original
s:	.word	0	# q in original
ah:	.word	0	# temp_t in original
k:	.word	0	# i in original
q:	.word	0	# o in original
aq:	.word	0	# temp_k in original
at:	.word	0	# temp_h in original
p:	.word	0	# n in original
al:	.word	0	# temp_p in original
x:	.word	0	# v in original
.text
li $v0, 5
syscall
la $t9, c
lw $s6, 0($t9)
move $s6, $v0
li $v0, 5
syscall
la $t7, d
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $s1, e
lw $t8, 0($s1)
move $t8, $v0
li $v0, 5
syscall
la $t0, f
lw $s2, 0($t0)
move $s2, $v0
li $v0, 5
syscall
la $t1, g
lw $t5, 0($t1)
move $t5, $v0
li $v0, 5
syscall
la $t4, h
lw $s5, 0($t4)
move $s5, $v0
li $v0, 5
syscall
la $s4, i
lw $s3, 0($s4)
move $s3, $v0
li $v0, 5
syscall
la $t3, j
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $s0, c
sw $s6, 0($s0)
la $s6, k
lw $t9, 0($s6)
move $t9, $v0
li $v0, 5
syscall
la $s0, d
sw $t2, 0($s0)
la $t2, l
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s0, e
sw $t8, 0($s0)
la $t8, m
lw $s1, 0($t8)
move $s1, $v0
li $v0, 5
syscall
la $s0, f
sw $s2, 0($s0)
la $s2, n
lw $t0, 0($s2)
move $t0, $v0
li $v0, 5
syscall
la $s0, g
sw $t5, 0($s0)
la $t5, o
lw $t1, 0($t5)
move $t1, $v0
li $v0, 5
syscall
la $s0, h
sw $s5, 0($s0)
la $s5, p
lw $t4, 0($s5)
move $t4, $v0
li $v0, 5
syscall
la $s0, i
sw $s3, 0($s0)
la $s3, q
lw $s4, 0($s3)
move $s4, $v0
li $v0, 5
syscall
la $s0, j
sw $t6, 0($s0)
la $t6, r
lw $t3, 0($t6)
move $t3, $v0
li $v0, 5
syscall
la $s0, k
sw $t9, 0($s0)
la $t9, s
lw $s6, 0($t9)
move $s6, $v0
li $v0, 5
syscall
la $s0, l
sw $t7, 0($s0)
la $t7, t
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $s0, m
sw $s1, 0($s0)
la $s1, u
lw $t8, 0($s1)
move $t8, $v0
li $v0, 5
syscall
la $s0, n
sw $t0, 0($s0)
la $t0, v
lw $s2, 0($t0)
move $s2, $v0
li $v0, 5
syscall
la $s0, o
sw $t1, 0($s0)
la $t1, w
lw $t5, 0($t1)
move $t5, $v0
li $v0, 5
syscall
la $s0, p
sw $t4, 0($s0)
la $t4, x
lw $s5, 0($t4)
move $s5, $v0
li $v0, 5
syscall
la $s0, q
sw $s4, 0($s0)
la $s4, y
lw $s3, 0($s4)
move $s3, $v0
li $v0, 5
syscall
la $s0, r
sw $t3, 0($s0)
la $t3, z
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $s0, s
sw $s6, 0($s0)
la $s6, aa
lw $t9, 0($s6)
move $t9, $v0
li $v0, 5
syscall
la $s0, t
sw $t2, 0($s0)
la $t2, ab
lw $t7, 0($t2)
move $t7, $v0
move $s1, $t7
add $s1, $s1, $t9
la $s0, u
sw $t8, 0($s0)
move $t8, $s1
add $t8, $t8, $t6
move $t0, $t8
add $t0, $t0, $s3
la $s0, v
sw $s2, 0($s0)
move $s2, $t0
add $s2, $s2, $s5
move $t1, $s2
add $t1, $t1, $t5
la $s0, w
sw $t5, 0($s0)
move $t5, $t1
la $s0, x
sw $s5, 0($s0)
la $t4, v
lw $s5, 0($t4)
add $t5, $t5, $s5
move $s4, $t5
la $s0, y
sw $s3, 0($s0)
la $s3, u
lw $t3, 0($s3)
add $s4, $s4, $t3
la $s0, z
sw $t6, 0($s0)
move $t6, $s4
la $s0, aa
sw $t9, 0($s0)
la $s6, t
lw $t9, 0($s6)
add $t6, $t6, $t9
move $t2, $t6
la $s0, ab
sw $t7, 0($s0)
la $s0, ac
sw $s1, 0($s0)
la $t7, s
lw $s1, 0($t7)
add $t2, $t2, $s1
la $s0, ad
sw $t8, 0($s0)
move $t8, $t2
la $s0, ae
sw $t0, 0($s0)
la $s0, af
sw $s2, 0($s0)
la $t0, r
lw $s2, 0($t0)
add $t8, $t8, $s2
la $s0, ag
sw $t1, 0($s0)
move $t1, $t8
la $s0, ah
sw $t5, 0($s0)
la $t5, q
lw $t4, 0($t5)
add $t1, $t1, $t4
la $s0, v
sw $s5, 0($s0)
move $s5, $t1
la $s0, ai
sw $s4, 0($s0)
la $s4, p
lw $s3, 0($s4)
add $s5, $s5, $s3
la $s0, u
sw $t3, 0($s0)
move $t3, $s5
la $s0, aj
sw $t6, 0($s0)
la $t6, o
lw $s6, 0($t6)
add $t3, $t3, $s6
la $s0, t
sw $t9, 0($s0)
move $t9, $t3
la $s0, ak
sw $t2, 0($s0)
la $t2, n
lw $t7, 0($t2)
add $t9, $t9, $t7
la $s0, s
sw $s1, 0($s0)
move $s1, $t9
la $s0, al
sw $t8, 0($s0)
la $t8, m
lw $t0, 0($t8)
add $s1, $s1, $t0
la $s0, r
sw $s2, 0($s0)
move $s2, $s1
la $s0, am
sw $t1, 0($s0)
la $t1, l
lw $t5, 0($t1)
add $s2, $s2, $t5
la $s0, q
sw $t4, 0($s0)
move $t4, $s2
la $s0, an
sw $s5, 0($s0)
la $s5, k
lw $s4, 0($s5)
add $t4, $t4, $s4
la $s0, p
sw $s3, 0($s0)
move $s3, $t4
la $s0, ao
sw $t3, 0($s0)
la $t3, j
lw $t6, 0($t3)
add $s3, $s3, $t6
la $s0, o
sw $s6, 0($s0)
move $s6, $s3
la $s0, ap
sw $t9, 0($s0)
la $t9, i
lw $t2, 0($t9)
add $s6, $s6, $t2
la $s0, n
sw $t7, 0($s0)
move $t7, $s6
la $s0, aq
sw $s1, 0($s0)
la $s1, h
lw $t8, 0($s1)
add $t7, $t7, $t8
la $s0, m
sw $t0, 0($s0)
move $t0, $t7
la $s0, ar
sw $s2, 0($s0)
la $s2, g
lw $t1, 0($s2)
add $t0, $t0, $t1
la $s0, l
sw $t5, 0($s0)
move $t5, $t0
la $s0, as
sw $t4, 0($s0)
la $t4, f
lw $s5, 0($t4)
add $t5, $t5, $s5
la $s0, k
sw $s4, 0($s0)
move $s4, $t5
la $s0, at
sw $s3, 0($s0)
la $s3, e
lw $t3, 0($s3)
add $s4, $s4, $t3
la $s0, j
sw $t6, 0($s0)
move $t6, $s4
la $s0, au
sw $s6, 0($s0)
la $s6, d
lw $t9, 0($s6)
add $t6, $t6, $t9
la $s0, i
sw $t2, 0($s0)
move $t2, $t6
la $s0, av
sw $t7, 0($s0)
la $t7, c
lw $s1, 0($t7)
add $t2, $t2, $s1
li $v0, 1
move $a0, $t2
syscall
move $a0, $s1
syscall
move $a0, $t9
syscall
move $a0, $t3
syscall
move $a0, $s5
syscall
move $a0, $t1
syscall
move $a0, $t8
syscall
la $s0, h
sw $t8, 0($s0)
la $s0, aw
sw $t0, 0($s0)
la $t8, i
lw $t0, 0($t8)
move $a0, $t0
syscall
la $s0, g
sw $t1, 0($s0)
la $s2, j
lw $t1, 0($s2)
move $a0, $t1
syscall
la $s0, ax
sw $t5, 0($s0)
la $t5, k
lw $t4, 0($t5)
move $a0, $t4
syscall
la $s0, f
sw $s5, 0($s0)
la $s0, ay
sw $s4, 0($s0)
la $s5, l
lw $s4, 0($s5)
move $a0, $s4
syscall
la $s0, e
sw $t3, 0($s0)
la $s3, m
lw $t3, 0($s3)
move $a0, $t3
syscall
la $s0, az
sw $t6, 0($s0)
la $t6, n
lw $s6, 0($t6)
move $a0, $s6
syscall
la $s0, d
sw $t9, 0($s0)
la $s0, ba
sw $t2, 0($s0)
la $t9, o
lw $t2, 0($t9)
move $a0, $t2
syscall
la $s0, c
sw $s1, 0($s0)
la $t7, p
lw $s1, 0($t7)
move $a0, $s1
syscall
la $s0, i
sw $t0, 0($s0)
la $t8, q
lw $t0, 0($t8)
move $a0, $t0
syscall
la $s0, j
sw $t1, 0($s0)
la $s2, r
lw $t1, 0($s2)
move $a0, $t1
syscall
la $s0, k
sw $t4, 0($s0)
la $t5, s
lw $t4, 0($t5)
move $a0, $t4
syscall
la $s0, l
sw $s4, 0($s0)
la $s5, t
lw $s4, 0($s5)
move $a0, $s4
syscall
la $s0, m
sw $t3, 0($s0)
la $s3, u
lw $t3, 0($s3)
move $a0, $t3
syscall
la $s0, n
sw $s6, 0($s0)
la $t6, v
lw $s6, 0($t6)
move $a0, $s6
syscall
la $s0, o
sw $t2, 0($s0)
la $t9, w
lw $t2, 0($t9)
move $a0, $t2
syscall
la $s0, p
sw $s1, 0($s0)
la $t7, x
lw $s1, 0($t7)
move $a0, $s1
syscall
la $s0, q
sw $t0, 0($s0)
la $t8, y
lw $t0, 0($t8)
move $a0, $t0
syscall
la $s0, r
sw $t1, 0($s0)
la $s2, z
lw $t1, 0($s2)
move $a0, $t1
syscall
la $s0, s
sw $t4, 0($s0)
la $t5, aa
lw $t4, 0($t5)
move $a0, $t4
syscall
la $s0, t
sw $s4, 0($s0)
la $s5, ab
lw $s4, 0($s5)
move $a0, $s4
syscall
