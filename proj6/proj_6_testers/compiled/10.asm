.data
u:	.word	0	# s in original
l:	.word	0	# j in original
j:	.word	0	# h in original
q:	.word	0	# o in original
am:	.word	0	# temp_o in original
ao:	.word	0	# temp_m in original
e:	.word	0	# c in original
p:	.word	0	# n in original
y:	.word	0	# w in original
s:	.word	0	# q in original
aa:	.word	0	# y in original
m:	.word	0	# k in original
k:	.word	0	# i in original
ai:	.word	0	# temp_s in original
ah:	.word	0	# temp_t in original
n:	.word	0	# l in original
h:	.word	0	# f in original
f:	.word	0	# d in original
ag:	.word	0	# temp_u in original
ae:	.word	0	# temp_w in original
r:	.word	0	# p in original
v:	.word	0	# t in original
ar:	.word	0	# temp_j in original
ab:	.word	0	# z in original
w:	.word	0	# u in original
t:	.word	0	# r in original
d:	.word	0	# b in original
ap:	.word	0	# temp_l in original
al:	.word	0	# temp_p in original
ad:	.word	0	# temp_x in original
g:	.word	0	# e in original
i:	.word	0	# g in original
at:	.word	0	# temp_h in original
av:	.word	0	# temp_f in original
au:	.word	0	# temp_g in original
an:	.word	0	# temp_n in original
ac:	.word	0	# temp_y in original
x:	.word	0	# v in original
aj:	.word	0	# temp_r in original
c:	.word	0	# a in original
aq:	.word	0	# temp_k in original
as:	.word	0	# temp_i in original
z:	.word	0	# x in original
o:	.word	0	# m in original
ak:	.word	0	# temp_q in original
af:	.word	0	# temp_v in original
.text
la $s0, c
sw $t7, 0($s0)
la $s0, d
sw $s5, 0($s0)
la $s0, e
sw $s4, 0($s0)
la $s0, f
sw $s1, 0($s0)
la $s0, g
sw $s6, 0($s0)
la $s0, h
sw $t8, 0($s0)
la $s0, i
sw $t5, 0($s0)
la $s0, j
sw $t9, 0($s0)
la $s0, k
sw $t7, 0($s0)
la $s0, l
sw $s5, 0($s0)
la $s0, m
sw $s4, 0($s0)
la $s0, n
sw $s1, 0($s0)
la $s0, o
sw $s6, 0($s0)
la $s0, p
sw $t8, 0($s0)
la $s0, q
sw $t5, 0($s0)
la $s0, r
sw $t9, 0($s0)
la $s0, s
sw $t7, 0($s0)
la $s0, t
sw $s5, 0($s0)
li $v0, 5
syscall
la $s0, u
sw $s4, 0($s0)
la $s4, c
lw $t6, 0($s4)
move $t6, $v0
li $v0, 5
syscall
la $s0, v
sw $s1, 0($s0)
la $s1, d
lw $s2, 0($s1)
move $s2, $v0
li $v0, 5
syscall
la $s0, w
sw $s6, 0($s0)
la $s6, e
lw $t2, 0($s6)
move $t2, $v0
li $v0, 5
syscall
la $s0, x
sw $t8, 0($s0)
la $t8, f
lw $t3, 0($t8)
move $t3, $v0
li $v0, 5
syscall
la $s0, y
sw $t5, 0($s0)
la $t5, g
lw $t4, 0($t5)
move $t4, $v0
li $v0, 5
syscall
la $s0, z
sw $t9, 0($s0)
la $t9, h
lw $s3, 0($t9)
move $s3, $v0
li $v0, 5
syscall
la $s0, aa
sw $t7, 0($s0)
la $t7, i
lw $t0, 0($t7)
move $t0, $v0
li $v0, 5
syscall
la $s0, ab
sw $s5, 0($s0)
la $s5, j
lw $t1, 0($s5)
move $t1, $v0
li $v0, 5
syscall
la $s0, c
sw $t6, 0($s0)
la $t6, k
lw $s4, 0($t6)
move $s4, $v0
li $v0, 5
syscall
la $s0, d
sw $s2, 0($s0)
la $s2, l
lw $s1, 0($s2)
move $s1, $v0
li $v0, 5
syscall
la $s0, e
sw $t2, 0($s0)
la $t2, m
lw $s6, 0($t2)
move $s6, $v0
li $v0, 5
syscall
la $s0, f
sw $t3, 0($s0)
la $t3, n
lw $t8, 0($t3)
move $t8, $v0
li $v0, 5
syscall
la $s0, g
sw $t4, 0($s0)
la $t4, o
lw $t5, 0($t4)
move $t5, $v0
li $v0, 5
syscall
la $s0, h
sw $s3, 0($s0)
la $s3, p
lw $t9, 0($s3)
move $t9, $v0
li $v0, 5
syscall
la $s0, i
sw $t0, 0($s0)
la $t0, q
lw $t7, 0($t0)
move $t7, $v0
li $v0, 5
syscall
la $s0, j
sw $t1, 0($s0)
la $t1, r
lw $s5, 0($t1)
move $s5, $v0
li $v0, 5
syscall
la $s0, k
sw $s4, 0($s0)
la $s4, s
lw $t6, 0($s4)
move $t6, $v0
li $v0, 5
syscall
la $s0, l
sw $s1, 0($s0)
la $s1, t
lw $s2, 0($s1)
move $s2, $v0
li $v0, 5
syscall
la $s0, m
sw $s6, 0($s0)
la $s6, u
lw $t2, 0($s6)
move $t2, $v0
li $v0, 5
syscall
la $s0, n
sw $t8, 0($s0)
la $t8, v
lw $t3, 0($t8)
move $t3, $v0
li $v0, 5
syscall
la $s0, o
sw $t5, 0($s0)
la $t5, w
lw $t4, 0($t5)
move $t4, $v0
li $v0, 5
syscall
la $s0, p
sw $t9, 0($s0)
la $t9, x
lw $s3, 0($t9)
move $s3, $v0
li $v0, 5
syscall
la $s0, q
sw $t7, 0($s0)
la $t7, y
lw $t0, 0($t7)
move $t0, $v0
li $v0, 5
syscall
la $s0, r
sw $s5, 0($s0)
la $s5, z
lw $t1, 0($s5)
move $t1, $v0
li $v0, 5
syscall
la $s0, s
sw $t6, 0($s0)
la $t6, aa
lw $s4, 0($t6)
move $s4, $v0
li $v0, 5
syscall
la $s0, t
sw $s2, 0($s0)
la $s2, ab
lw $s1, 0($s2)
move $s1, $v0
move $s6, $s1
add $s6, $s6, $s4
la $s0, u
sw $t2, 0($s0)
move $t2, $s6
add $t2, $t2, $t1
move $t8, $t2
add $t8, $t8, $t0
la $s0, v
sw $t3, 0($s0)
move $t3, $t8
add $t3, $t3, $s3
move $t5, $t3
add $t5, $t5, $t4
la $s0, w
sw $t4, 0($s0)
move $t4, $t5
la $s0, x
sw $s3, 0($s0)
la $t9, v
lw $s3, 0($t9)
add $t4, $t4, $s3
move $t7, $t4
la $s0, y
sw $t0, 0($s0)
la $t0, u
lw $s5, 0($t0)
add $t7, $t7, $s5
la $s0, z
sw $t1, 0($s0)
move $t1, $t7
la $s0, aa
sw $s4, 0($s0)
la $t6, t
lw $s4, 0($t6)
add $t1, $t1, $s4
move $s2, $t1
la $s0, ab
sw $s1, 0($s0)
la $s0, ac
sw $s6, 0($s0)
la $s1, s
lw $s6, 0($s1)
add $s2, $s2, $s6
la $s0, ad
sw $t2, 0($s0)
move $t2, $s2
la $s0, ae
sw $t8, 0($s0)
la $s0, af
sw $t3, 0($s0)
la $t8, r
lw $t3, 0($t8)
add $t2, $t2, $t3
la $s0, ag
sw $t5, 0($s0)
move $t5, $t2
la $s0, ah
sw $t4, 0($s0)
la $t4, q
lw $t9, 0($t4)
add $t5, $t5, $t9
la $s0, v
sw $s3, 0($s0)
move $s3, $t5
la $s0, ai
sw $t7, 0($s0)
la $t7, p
lw $t0, 0($t7)
add $s3, $s3, $t0
la $s0, u
sw $s5, 0($s0)
move $s5, $s3
la $s0, aj
sw $t1, 0($s0)
la $t1, o
lw $t6, 0($t1)
add $s5, $s5, $t6
la $s0, t
sw $s4, 0($s0)
move $s4, $s5
la $s0, ak
sw $s2, 0($s0)
la $s2, n
lw $s1, 0($s2)
add $s4, $s4, $s1
la $s0, s
sw $s6, 0($s0)
move $s6, $s4
la $s0, al
sw $t2, 0($s0)
la $t2, m
lw $t8, 0($t2)
add $s6, $s6, $t8
la $s0, r
sw $t3, 0($s0)
move $t3, $s6
la $s0, am
sw $t5, 0($s0)
la $t5, l
lw $t4, 0($t5)
add $t3, $t3, $t4
la $s0, q
sw $t9, 0($s0)
move $t9, $t3
la $s0, an
sw $s3, 0($s0)
la $s3, k
lw $t7, 0($s3)
add $t9, $t9, $t7
la $s0, p
sw $t0, 0($s0)
move $t0, $t9
la $s0, ao
sw $s5, 0($s0)
la $s5, j
lw $t1, 0($s5)
add $t0, $t0, $t1
la $s0, o
sw $t6, 0($s0)
move $t6, $t0
la $s0, ap
sw $s4, 0($s0)
la $s4, i
lw $s2, 0($s4)
add $t6, $t6, $s2
la $s0, n
sw $s1, 0($s0)
move $s1, $t6
la $s0, aq
sw $s6, 0($s0)
la $s6, h
lw $t2, 0($s6)
add $s1, $s1, $t2
la $s0, m
sw $t8, 0($s0)
move $t8, $s1
la $s0, ar
sw $t3, 0($s0)
la $t3, g
lw $t5, 0($t3)
add $t8, $t8, $t5
la $s0, l
sw $t4, 0($s0)
move $t4, $t8
la $s0, as
sw $t9, 0($s0)
la $t9, f
lw $s3, 0($t9)
add $t4, $t4, $s3
la $s0, k
sw $t7, 0($s0)
move $t7, $t4
la $s0, at
sw $t0, 0($s0)
la $t0, e
lw $s5, 0($t0)
add $t7, $t7, $s5
la $s0, j
sw $t1, 0($s0)
move $t1, $t7
la $s0, au
sw $t6, 0($s0)
la $t6, d
lw $s4, 0($t6)
add $t1, $t1, $s4
la $s0, i
sw $s2, 0($s0)
move $s2, $t1
la $s0, av
sw $s1, 0($s0)
la $s1, c
lw $s6, 0($s1)
add $s2, $s2, $s6
li $v0, 1
move $a0, $s2
syscall
