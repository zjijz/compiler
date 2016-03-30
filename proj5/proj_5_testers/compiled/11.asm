.data
w:	.word	0	# w in original
t:	.word	0	# t in original
aj:	.word	0	# temp_p in original
d:	.word	0	# d in original
k:	.word	0	# k in original
e:	.word	0	# e in original
au:	.word	0	# temp_e in original
ae:	.word	0	# temp_u in original
ak:	.word	0	# temp_o in original
z:	.word	0	# z in original
ah:	.word	0	# temp_r in original
a:	.word	0	# a in original
x:	.word	0	# x in original
ac:	.word	0	# temp_w in original
p:	.word	0	# p in original
c:	.word	0	# c in original
ad:	.word	0	# temp_v in original
ai:	.word	0	# temp_q in original
al:	.word	0	# temp_n in original
as:	.word	0	# temp_g in original
aw:	.word	0	# temp_c in original
am:	.word	0	# temp_m in original
j:	.word	0	# j in original
o:	.word	0	# o in original
ar:	.word	0	# temp_h in original
m:	.word	0	# m in original
g:	.word	0	# g in original
h:	.word	0	# h in original
ax:	.word	0	# temp_b in original
ay:	.word	0	# temp_a in original
u:	.word	0	# u in original
b:	.word	0	# b in original
n:	.word	0	# n in original
ap:	.word	0	# temp_j in original
i:	.word	0	# i in original
y:	.word	0	# y in original
an:	.word	0	# temp_l in original
aq:	.word	0	# temp_i in original
af:	.word	0	# temp_t in original
av:	.word	0	# temp_d in original
v:	.word	0	# v in original
q:	.word	0	# q in original
ag:	.word	0	# temp_s in original
ao:	.word	0	# temp_k in original
at:	.word	0	# temp_f in original
l:	.word	0	# l in original
f:	.word	0	# f in original
r:	.word	0	# r in original
s:	.word	0	# s in original
ab:	.word	0	# temp_x in original
aa:	.word	0	# temp_y in original
.text
li $v0, 5
syscall
la $s2, a
lw $s5, 0($s2)
move $s5, $v0
li $v0, 5
syscall
la $s6, b
lw $t7, 0($s6)
move $t7, $v0
li $v0, 5
syscall
la $s1, c
lw $t4, 0($s1)
move $t4, $v0
li $v0, 5
syscall
la $t1, d
lw $s3, 0($t1)
move $s3, $v0
li $v0, 5
syscall
la $t0, e
lw $t2, 0($t0)
move $t2, $v0
li $v0, 5
syscall
la $t5, f
lw $t9, 0($t5)
move $t9, $v0
li $v0, 5
syscall
la $t8, g
lw $s4, 0($t8)
move $s4, $v0
li $v0, 5
syscall
la $t6, h
lw $t3, 0($t6)
move $t3, $v0
li $v0, 5
syscall
la $s0, a
sw $s5, 0($s0)
la $s5, i
lw $s2, 0($s5)
move $s2, $v0
li $v0, 5
syscall
la $s0, b
sw $t7, 0($s0)
la $t7, j
lw $s6, 0($t7)
move $s6, $v0
li $v0, 5
syscall
la $s0, c
sw $t4, 0($s0)
la $t4, k
lw $s1, 0($t4)
move $s1, $v0
li $v0, 5
syscall
la $s0, d
sw $s3, 0($s0)
la $s3, l
lw $t1, 0($s3)
move $t1, $v0
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
sw $t9, 0($s0)
la $t9, n
lw $t5, 0($t9)
move $t5, $v0
li $v0, 5
syscall
la $s0, g
sw $s4, 0($s0)
la $s4, o
lw $t8, 0($s4)
move $t8, $v0
li $v0, 5
syscall
la $s0, h
sw $t3, 0($s0)
la $t3, p
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $s0, i
sw $s2, 0($s0)
la $s2, q
lw $s5, 0($s2)
move $s5, $v0
li $v0, 5
syscall
la $s0, j
sw $s6, 0($s0)
la $s6, r
lw $t7, 0($s6)
move $t7, $v0
li $v0, 5
syscall
la $s0, k
sw $s1, 0($s0)
la $s1, s
lw $t4, 0($s1)
move $t4, $v0
li $v0, 5
syscall
la $s0, l
sw $t1, 0($s0)
la $t1, t
lw $s3, 0($t1)
move $s3, $v0
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
sw $t5, 0($s0)
la $t5, v
lw $t9, 0($t5)
move $t9, $v0
li $v0, 5
syscall
la $s0, o
sw $t8, 0($s0)
la $t8, w
lw $s4, 0($t8)
move $s4, $v0
li $v0, 5
syscall
la $s0, p
sw $t6, 0($s0)
la $t6, x
lw $t3, 0($t6)
move $t3, $v0
li $v0, 5
syscall
la $s0, q
sw $s5, 0($s0)
la $s5, y
lw $s2, 0($s5)
move $s2, $v0
li $v0, 5
syscall
la $s0, r
sw $t7, 0($s0)
la $t7, z
lw $s6, 0($t7)
move $s6, $v0
move $s1, $s6
add $s1, $s1, $s2
la $s0, s
sw $t4, 0($s0)
move $t4, $s1
add $t4, $t4, $t3
move $t1, $t4
add $t1, $t1, $s4
la $s0, t
sw $s3, 0($s0)
move $s3, $t1
add $s3, $s3, $t9
move $t0, $s3
add $t0, $t0, $t2
la $s0, u
sw $t2, 0($s0)
move $t2, $t0
la $s0, v
sw $t9, 0($s0)
la $t5, t
lw $t9, 0($t5)
add $t2, $t2, $t9
move $t8, $t2
la $s0, w
sw $s4, 0($s0)
la $s4, s
lw $t6, 0($s4)
add $t8, $t8, $t6
la $s0, x
sw $t3, 0($s0)
move $t3, $t8
la $s0, y
sw $s2, 0($s0)
la $s5, r
lw $s2, 0($s5)
add $t3, $t3, $s2
move $t7, $t3
la $s0, z
sw $s6, 0($s0)
la $s0, aa
sw $s1, 0($s0)
la $s6, q
lw $s1, 0($s6)
add $t7, $t7, $s1
la $s0, ab
sw $t4, 0($s0)
move $t4, $t7
la $s0, ac
sw $t1, 0($s0)
la $s0, ad
sw $s3, 0($s0)
la $t1, p
lw $s3, 0($t1)
add $t4, $t4, $s3
la $s0, ae
sw $t0, 0($s0)
move $t0, $t4
la $s0, af
sw $t2, 0($s0)
la $t2, o
lw $t5, 0($t2)
add $t0, $t0, $t5
la $s0, t
sw $t9, 0($s0)
move $t9, $t0
la $s0, ag
sw $t8, 0($s0)
la $t8, n
lw $s4, 0($t8)
add $t9, $t9, $s4
la $s0, s
sw $t6, 0($s0)
move $t6, $t9
la $s0, ah
sw $t3, 0($s0)
la $t3, m
lw $s5, 0($t3)
add $t6, $t6, $s5
la $s0, r
sw $s2, 0($s0)
move $s2, $t6
la $s0, ai
sw $t7, 0($s0)
la $t7, l
lw $s6, 0($t7)
add $s2, $s2, $s6
la $s0, q
sw $s1, 0($s0)
move $s1, $s2
la $s0, aj
sw $t4, 0($s0)
la $t4, k
lw $t1, 0($t4)
add $s1, $s1, $t1
la $s0, p
sw $s3, 0($s0)
move $s3, $s1
la $s0, ak
sw $t0, 0($s0)
la $t0, j
lw $t2, 0($t0)
add $s3, $s3, $t2
la $s0, o
sw $t5, 0($s0)
move $t5, $s3
la $s0, al
sw $t9, 0($s0)
la $t9, i
lw $t8, 0($t9)
add $t5, $t5, $t8
la $s0, n
sw $s4, 0($s0)
move $s4, $t5
la $s0, am
sw $t6, 0($s0)
la $t6, h
lw $t3, 0($t6)
add $s4, $s4, $t3
la $s0, m
sw $s5, 0($s0)
move $s5, $s4
la $s0, an
sw $s2, 0($s0)
la $s2, g
lw $t7, 0($s2)
add $s5, $s5, $t7
la $s0, l
sw $s6, 0($s0)
move $s6, $s5
la $s0, ao
sw $s1, 0($s0)
la $s1, f
lw $t4, 0($s1)
add $s6, $s6, $t4
la $s0, k
sw $t1, 0($s0)
move $t1, $s6
la $s0, ap
sw $s3, 0($s0)
la $s3, e
lw $t0, 0($s3)
add $t1, $t1, $t0
la $s0, j
sw $t2, 0($s0)
move $t2, $t1
la $s0, aq
sw $t5, 0($s0)
la $t5, d
lw $t9, 0($t5)
add $t2, $t2, $t9
la $s0, i
sw $t8, 0($s0)
move $t8, $t2
la $s0, ar
sw $s4, 0($s0)
la $s4, c
lw $t6, 0($s4)
add $t8, $t8, $t6
la $s0, h
sw $t3, 0($s0)
move $t3, $t8
la $s0, as
sw $s5, 0($s0)
la $s5, b
lw $s2, 0($s5)
add $t3, $t3, $s2
la $s0, g
sw $t7, 0($s0)
move $t7, $t3
la $s0, at
sw $s6, 0($s0)
la $s6, a
lw $s1, 0($s6)
add $t7, $t7, $s1
li $v0, 1
move $a0, $t7
syscall
move $a0, $s1
syscall
move $a0, $s2
syscall
move $a0, $t6
syscall
move $a0, $t9
syscall
move $a0, $t0
syscall
move $a0, $t4
syscall
la $s0, f
sw $t4, 0($s0)
la $s0, au
sw $t1, 0($s0)
la $t4, g
lw $t1, 0($t4)
move $a0, $t1
syscall
la $s0, e
sw $t0, 0($s0)
la $s3, h
lw $t0, 0($s3)
move $a0, $t0
syscall
la $s0, av
sw $t2, 0($s0)
la $t2, i
lw $t5, 0($t2)
move $a0, $t5
syscall
la $s0, d
sw $t9, 0($s0)
la $s0, aw
sw $t8, 0($s0)
la $t9, j
lw $t8, 0($t9)
move $a0, $t8
syscall
la $s0, c
sw $t6, 0($s0)
la $s4, k
lw $t6, 0($s4)
move $a0, $t6
syscall
la $s0, ax
sw $t3, 0($s0)
la $t3, l
lw $s5, 0($t3)
move $a0, $s5
syscall
la $s0, b
sw $s2, 0($s0)
la $s0, ay
sw $t7, 0($s0)
la $s2, m
lw $t7, 0($s2)
move $a0, $t7
syscall
la $s0, a
sw $s1, 0($s0)
la $s6, n
lw $s1, 0($s6)
move $a0, $s1
syscall
la $s0, g
sw $t1, 0($s0)
la $t4, o
lw $t1, 0($t4)
move $a0, $t1
syscall
la $s0, h
sw $t0, 0($s0)
la $s3, p
lw $t0, 0($s3)
move $a0, $t0
syscall
la $s0, i
sw $t5, 0($s0)
la $t2, q
lw $t5, 0($t2)
move $a0, $t5
syscall
la $s0, j
sw $t8, 0($s0)
la $t9, r
lw $t8, 0($t9)
move $a0, $t8
syscall
la $s0, k
sw $t6, 0($s0)
la $s4, s
lw $t6, 0($s4)
move $a0, $t6
syscall
la $s0, l
sw $s5, 0($s0)
la $t3, t
lw $s5, 0($t3)
move $a0, $s5
syscall
la $s0, m
sw $t7, 0($s0)
la $s2, u
lw $t7, 0($s2)
move $a0, $t7
syscall
la $s0, n
sw $s1, 0($s0)
la $s6, v
lw $s1, 0($s6)
move $a0, $s1
syscall
la $s0, o
sw $t1, 0($s0)
la $t4, w
lw $t1, 0($t4)
move $a0, $t1
syscall
la $s0, p
sw $t0, 0($s0)
la $s3, x
lw $t0, 0($s3)
move $a0, $t0
syscall
la $s0, q
sw $t5, 0($s0)
la $t2, y
lw $t5, 0($t2)
move $a0, $t5
syscall
la $s0, r
sw $t8, 0($s0)
la $t9, z
lw $t8, 0($t9)
move $a0, $t8
syscall
