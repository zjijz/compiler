.data
p:	.word	0	# p in original
u:	.word	0	# u in original
f:	.word	0	# f in original
e:	.word	0	# e in original
t:	.word	0	# t in original
r:	.word	0	# r in original
n:	.word	0	# n in original
ai:	.word	0	# temp_q in original
ax:	.word	0	# temp_b in original
aq:	.word	0	# temp_i in original
i:	.word	0	# i in original
ag:	.word	0	# temp_s in original
ab:	.word	0	# temp_x in original
al:	.word	0	# temp_n in original
ae:	.word	0	# temp_u in original
ar:	.word	0	# temp_h in original
l:	.word	0	# l in original
aa:	.word	0	# temp_y in original
g:	.word	0	# g in original
au:	.word	0	# temp_e in original
b:	.word	0	# b in original
k:	.word	0	# k in original
aw:	.word	0	# temp_c in original
ac:	.word	0	# temp_w in original
am:	.word	0	# temp_m in original
ak:	.word	0	# temp_o in original
af:	.word	0	# temp_t in original
d:	.word	0	# d in original
ap:	.word	0	# temp_j in original
as:	.word	0	# temp_g in original
z:	.word	0	# z in original
c:	.word	0	# c in original
ad:	.word	0	# temp_v in original
q:	.word	0	# q in original
x:	.word	0	# x in original
ay:	.word	0	# temp_a in original
av:	.word	0	# temp_d in original
at:	.word	0	# temp_f in original
j:	.word	0	# j in original
w:	.word	0	# w in original
an:	.word	0	# temp_l in original
ah:	.word	0	# temp_r in original
v:	.word	0	# v in original
a:	.word	0	# a in original
y:	.word	0	# y in original
o:	.word	0	# o in original
s:	.word	0	# s in original
m:	.word	0	# m in original
ao:	.word	0	# temp_k in original
h:	.word	0	# h in original
aj:	.word	0	# temp_p in original
.text
li $v0, 5
syscall
la $t6, a
lw $s6, 0($t6)
move $s6, $v0
li $v0, 5
syscall
la $t2, b
lw $t0, 0($t2)
move $t0, $v0
li $v0, 5
syscall
la $t8, c
lw $s5, 0($t8)
move $s5, $v0
li $v0, 5
syscall
la $s1, d
lw $t9, 0($s1)
move $t9, $v0
li $v0, 5
syscall
la $s2, e
lw $t3, 0($s2)
move $t3, $v0
li $v0, 5
syscall
la $s4, f
lw $t5, 0($s4)
move $t5, $v0
li $v0, 5
syscall
la $t7, g
lw $s3, 0($t7)
move $s3, $v0
li $v0, 5
syscall
la $t1, h
lw $t4, 0($t1)
move $t4, $v0
li $v0, 5
syscall
la $s0, a
sw $s6, 0($s0)
la $s6, i
lw $t6, 0($s6)
move $t6, $v0
li $v0, 5
syscall
la $s0, b
sw $t0, 0($s0)
la $t0, j
lw $t2, 0($t0)
move $t2, $v0
li $v0, 5
syscall
la $s0, c
sw $s5, 0($s0)
la $s5, k
lw $t8, 0($s5)
move $t8, $v0
li $v0, 5
syscall
la $s0, d
sw $t9, 0($s0)
la $t9, l
lw $s1, 0($t9)
move $s1, $v0
li $v0, 5
syscall
la $s0, e
sw $t3, 0($s0)
la $t3, m
lw $s2, 0($t3)
move $s2, $v0
li $v0, 5
syscall
la $s0, f
sw $t5, 0($s0)
la $t5, n
lw $s4, 0($t5)
move $s4, $v0
li $v0, 5
syscall
la $s0, g
sw $s3, 0($s0)
la $s3, o
lw $t7, 0($s3)
move $t7, $v0
li $v0, 5
syscall
la $s0, h
sw $t4, 0($s0)
la $t4, p
lw $t1, 0($t4)
move $t1, $v0
li $v0, 5
syscall
la $s0, i
sw $t6, 0($s0)
la $t6, q
lw $s6, 0($t6)
move $s6, $v0
li $v0, 5
syscall
la $s0, j
sw $t2, 0($s0)
la $t2, r
lw $t0, 0($t2)
move $t0, $v0
li $v0, 5
syscall
la $s0, k
sw $t8, 0($s0)
la $t8, s
lw $s5, 0($t8)
move $s5, $v0
li $v0, 5
syscall
la $s0, l
sw $s1, 0($s0)
la $s1, t
lw $t9, 0($s1)
move $t9, $v0
li $v0, 5
syscall
la $s0, m
sw $s2, 0($s0)
la $s2, u
lw $t3, 0($s2)
move $t3, $v0
li $v0, 5
syscall
la $s0, n
sw $s4, 0($s0)
la $s4, v
lw $t5, 0($s4)
move $t5, $v0
li $v0, 5
syscall
la $s0, o
sw $t7, 0($s0)
la $t7, w
lw $s3, 0($t7)
move $s3, $v0
li $v0, 5
syscall
la $s0, p
sw $t1, 0($s0)
la $t1, x
lw $t4, 0($t1)
move $t4, $v0
li $v0, 5
syscall
la $s0, q
sw $s6, 0($s0)
la $s6, y
lw $t6, 0($s6)
move $t6, $v0
li $v0, 5
syscall
la $s0, r
sw $t0, 0($s0)
la $t0, z
lw $t2, 0($t0)
move $t2, $v0
move $t8, $t2
add $t8, $t8, $t6
la $s0, s
sw $s5, 0($s0)
move $s5, $t8
add $s5, $s5, $t4
move $s1, $s5
add $s1, $s1, $s3
la $s0, t
sw $t9, 0($s0)
move $t9, $s1
add $t9, $t9, $t5
move $s2, $t9
add $s2, $s2, $t3
la $s0, u
sw $t3, 0($s0)
move $t3, $s2
la $s0, v
sw $t5, 0($s0)
la $s4, t
lw $t5, 0($s4)
add $t3, $t3, $t5
move $t7, $t3
la $s0, w
sw $s3, 0($s0)
la $s3, s
lw $t1, 0($s3)
add $t7, $t7, $t1
la $s0, x
sw $t4, 0($s0)
move $t4, $t7
la $s0, y
sw $t6, 0($s0)
la $s6, r
lw $t6, 0($s6)
add $t4, $t4, $t6
move $t0, $t4
la $s0, z
sw $t2, 0($s0)
la $s0, aa
sw $t8, 0($s0)
la $t2, q
lw $t8, 0($t2)
add $t0, $t0, $t8
la $s0, ab
sw $s5, 0($s0)
move $s5, $t0
la $s0, ac
sw $s1, 0($s0)
la $s0, ad
sw $t9, 0($s0)
la $s1, p
lw $t9, 0($s1)
add $s5, $s5, $t9
la $s0, ae
sw $s2, 0($s0)
move $s2, $s5
la $s0, af
sw $t3, 0($s0)
la $t3, o
lw $s4, 0($t3)
add $s2, $s2, $s4
la $s0, t
sw $t5, 0($s0)
move $t5, $s2
la $s0, ag
sw $t7, 0($s0)
la $t7, n
lw $s3, 0($t7)
add $t5, $t5, $s3
la $s0, s
sw $t1, 0($s0)
move $t1, $t5
la $s0, ah
sw $t4, 0($s0)
la $t4, m
lw $s6, 0($t4)
add $t1, $t1, $s6
la $s0, r
sw $t6, 0($s0)
move $t6, $t1
la $s0, ai
sw $t0, 0($s0)
la $t0, l
lw $t2, 0($t0)
add $t6, $t6, $t2
la $s0, q
sw $t8, 0($s0)
move $t8, $t6
la $s0, aj
sw $s5, 0($s0)
la $s5, k
lw $s1, 0($s5)
add $t8, $t8, $s1
la $s0, p
sw $t9, 0($s0)
move $t9, $t8
la $s0, ak
sw $s2, 0($s0)
la $s2, j
lw $t3, 0($s2)
add $t9, $t9, $t3
la $s0, o
sw $s4, 0($s0)
move $s4, $t9
la $s0, al
sw $t5, 0($s0)
la $t5, i
lw $t7, 0($t5)
add $s4, $s4, $t7
la $s0, n
sw $s3, 0($s0)
move $s3, $s4
la $s0, am
sw $t1, 0($s0)
la $t1, h
lw $t4, 0($t1)
add $s3, $s3, $t4
la $s0, m
sw $s6, 0($s0)
move $s6, $s3
la $s0, an
sw $t6, 0($s0)
la $t6, g
lw $t0, 0($t6)
add $s6, $s6, $t0
la $s0, l
sw $t2, 0($s0)
move $t2, $s6
la $s0, ao
sw $t8, 0($s0)
la $t8, f
lw $s5, 0($t8)
add $t2, $t2, $s5
la $s0, k
sw $s1, 0($s0)
move $s1, $t2
la $s0, ap
sw $t9, 0($s0)
la $t9, e
lw $s2, 0($t9)
add $s1, $s1, $s2
la $s0, j
sw $t3, 0($s0)
move $t3, $s1
la $s0, aq
sw $s4, 0($s0)
la $s4, d
lw $t5, 0($s4)
add $t3, $t3, $t5
la $s0, i
sw $t7, 0($s0)
move $t7, $t3
la $s0, ar
sw $s3, 0($s0)
la $s3, c
lw $t1, 0($s3)
add $t7, $t7, $t1
la $s0, h
sw $t4, 0($s0)
move $t4, $t7
la $s0, as
sw $s6, 0($s0)
la $s6, b
lw $t6, 0($s6)
add $t4, $t4, $t6
la $s0, g
sw $t0, 0($s0)
move $t0, $t4
la $s0, at
sw $t2, 0($s0)
la $t2, a
lw $t8, 0($t2)
add $t0, $t0, $t8
li $v0, 1
move $a0, $t0
syscall
move $a0, $t8
syscall
move $a0, $t6
syscall
move $a0, $t1
syscall
move $a0, $t5
syscall
move $a0, $s2
syscall
move $a0, $s5
syscall
la $s0, f
sw $s5, 0($s0)
la $s0, au
sw $s1, 0($s0)
la $s5, g
lw $s1, 0($s5)
move $a0, $s1
syscall
la $s0, e
sw $s2, 0($s0)
la $t9, h
lw $s2, 0($t9)
move $a0, $s2
syscall
la $s0, av
sw $t3, 0($s0)
la $t3, i
lw $s4, 0($t3)
move $a0, $s4
syscall
la $s0, d
sw $t5, 0($s0)
la $s0, aw
sw $t7, 0($s0)
la $t5, j
lw $t7, 0($t5)
move $a0, $t7
syscall
la $s0, c
sw $t1, 0($s0)
la $s3, k
lw $t1, 0($s3)
move $a0, $t1
syscall
la $s0, ax
sw $t4, 0($s0)
la $t4, l
lw $s6, 0($t4)
move $a0, $s6
syscall
la $s0, b
sw $t6, 0($s0)
la $s0, ay
sw $t0, 0($s0)
la $t6, m
lw $t0, 0($t6)
move $a0, $t0
syscall
la $s0, a
sw $t8, 0($s0)
la $t2, n
lw $t8, 0($t2)
move $a0, $t8
syscall
la $s0, g
sw $s1, 0($s0)
la $s5, o
lw $s1, 0($s5)
move $a0, $s1
syscall
la $s0, h
sw $s2, 0($s0)
la $t9, p
lw $s2, 0($t9)
move $a0, $s2
syscall
la $s0, i
sw $s4, 0($s0)
la $t3, q
lw $s4, 0($t3)
move $a0, $s4
syscall
la $s0, j
sw $t7, 0($s0)
la $t5, r
lw $t7, 0($t5)
move $a0, $t7
syscall
la $s0, k
sw $t1, 0($s0)
la $s3, s
lw $t1, 0($s3)
move $a0, $t1
syscall
la $s0, l
sw $s6, 0($s0)
la $t4, t
lw $s6, 0($t4)
move $a0, $s6
syscall
la $s0, m
sw $t0, 0($s0)
la $t6, u
lw $t0, 0($t6)
move $a0, $t0
syscall
la $s0, n
sw $t8, 0($s0)
la $t2, v
lw $t8, 0($t2)
move $a0, $t8
syscall
la $s0, o
sw $s1, 0($s0)
la $s5, w
lw $s1, 0($s5)
move $a0, $s1
syscall
la $s0, p
sw $s2, 0($s0)
la $t9, x
lw $s2, 0($t9)
move $a0, $s2
syscall
la $s0, q
sw $s4, 0($s0)
la $t3, y
lw $s4, 0($t3)
move $a0, $s4
syscall
la $s0, r
sw $t7, 0($s0)
la $t5, z
lw $t7, 0($t5)
move $a0, $t7
syscall
