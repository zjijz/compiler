.data
m:	.word	0	# k in original
al:	.word	0	# temp_p in original
aa:	.word	0	# y in original
ap:	.word	0	# temp_l in original
s:	.word	0	# q in original
ar:	.word	0	# temp_j in original
i:	.word	0	# g in original
ah:	.word	0	# temp_t in original
u:	.word	0	# s in original
ai:	.word	0	# temp_s in original
at:	.word	0	# temp_h in original
f:	.word	0	# d in original
an:	.word	0	# temp_n in original
ac:	.word	0	# temp_y in original
q:	.word	0	# o in original
o:	.word	0	# m in original
g:	.word	0	# e in original
aq:	.word	0	# temp_k in original
e:	.word	0	# c in original
ad:	.word	0	# temp_x in original
as:	.word	0	# temp_i in original
ao:	.word	0	# temp_m in original
r:	.word	0	# p in original
av:	.word	0	# temp_f in original
ag:	.word	0	# temp_u in original
aj:	.word	0	# temp_r in original
x:	.word	0	# v in original
j:	.word	0	# h in original
au:	.word	0	# temp_g in original
ae:	.word	0	# temp_w in original
n:	.word	0	# l in original
y:	.word	0	# w in original
c:	.word	0	# a in original
d:	.word	0	# b in original
t:	.word	0	# r in original
ab:	.word	0	# z in original
z:	.word	0	# x in original
w:	.word	0	# u in original
p:	.word	0	# n in original
ak:	.word	0	# temp_q in original
k:	.word	0	# i in original
am:	.word	0	# temp_o in original
af:	.word	0	# temp_v in original
v:	.word	0	# t in original
l:	.word	0	# j in original
h:	.word	0	# f in original
.text
li $v0, 5
syscall
la $t6, c
lw $s5, 0($t6)
move $s5, $v0
li $v0, 5
syscall
la $t8, d
lw $s2, 0($t8)
move $s2, $v0
li $v0, 5
syscall
la $s3, e
lw $t0, 0($s3)
move $t0, $v0
li $v0, 5
syscall
la $s1, f
lw $s4, 0($s1)
move $s4, $v0
li $v0, 5
syscall
la $t5, g
lw $s6, 0($t5)
move $s6, $v0
li $v0, 5
syscall
la $t1, h
lw $t7, 0($t1)
move $t7, $v0
li $v0, 5
syscall
la $t2, i
lw $t9, 0($t2)
move $t9, $v0
li $v0, 5
syscall
la $t4, j
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $s0, c
sw $s5, 0($s0)
la $s5, k
lw $t6, 0($s5)
move $t6, $v0
li $v0, 5
syscall
la $s0, d
sw $s2, 0($s0)
la $s2, l
lw $t8, 0($s2)
move $t8, $v0
li $v0, 5
syscall
la $s0, e
sw $t0, 0($s0)
la $t0, m
lw $s3, 0($t0)
move $s3, $v0
li $v0, 5
syscall
la $s0, f
sw $s4, 0($s0)
la $s4, n
lw $s1, 0($s4)
move $s1, $v0
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
sw $t7, 0($s0)
la $t7, p
lw $t1, 0($t7)
move $t1, $v0
li $v0, 5
syscall
la $s0, i
sw $t9, 0($s0)
la $t9, q
lw $t2, 0($t9)
move $t2, $v0
li $v0, 5
syscall
la $s0, j
sw $t3, 0($s0)
la $t3, r
lw $t4, 0($t3)
move $t4, $v0
li $v0, 5
syscall
la $s0, k
sw $t6, 0($s0)
la $t6, s
lw $s5, 0($t6)
move $s5, $v0
li $v0, 5
syscall
la $s0, l
sw $t8, 0($s0)
la $t8, t
lw $s2, 0($t8)
move $s2, $v0
li $v0, 5
syscall
la $s0, m
sw $s3, 0($s0)
la $s3, u
lw $t0, 0($s3)
move $t0, $v0
li $v0, 5
syscall
la $s0, n
sw $s1, 0($s0)
la $s1, v
lw $s4, 0($s1)
move $s4, $v0
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
sw $t1, 0($s0)
la $t1, x
lw $t7, 0($t1)
move $t7, $v0
li $v0, 5
syscall
la $s0, q
sw $t2, 0($s0)
la $t2, y
lw $t9, 0($t2)
move $t9, $v0
li $v0, 5
syscall
la $s0, r
sw $t4, 0($s0)
la $t4, z
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $s0, s
sw $s5, 0($s0)
la $s5, aa
lw $t6, 0($s5)
move $t6, $v0
li $v0, 5
syscall
la $s0, t
sw $s2, 0($s0)
la $s2, ab
lw $t8, 0($s2)
move $t8, $v0
move $s3, $t8
add $s3, $s3, $t6
la $s0, u
sw $t0, 0($s0)
move $t0, $s3
add $t0, $t0, $t3
move $s1, $t0
add $s1, $s1, $t9
la $s0, v
sw $s4, 0($s0)
move $s4, $s1
add $s4, $s4, $t7
move $t5, $s4
add $t5, $t5, $s6
la $s0, w
sw $s6, 0($s0)
move $s6, $t5
la $s0, x
sw $t7, 0($s0)
la $t1, v
lw $t7, 0($t1)
add $s6, $s6, $t7
move $t2, $s6
la $s0, y
sw $t9, 0($s0)
la $t9, u
lw $t4, 0($t9)
add $t2, $t2, $t4
la $s0, z
sw $t3, 0($s0)
move $t3, $t2
la $s0, aa
sw $t6, 0($s0)
la $s5, t
lw $t6, 0($s5)
add $t3, $t3, $t6
move $s2, $t3
la $s0, ab
sw $t8, 0($s0)
la $s0, ac
sw $s3, 0($s0)
la $t8, s
lw $s3, 0($t8)
add $s2, $s2, $s3
la $s0, ad
sw $t0, 0($s0)
move $t0, $s2
la $s0, ae
sw $s1, 0($s0)
la $s0, af
sw $s4, 0($s0)
la $s1, r
lw $s4, 0($s1)
add $t0, $t0, $s4
la $s0, ag
sw $t5, 0($s0)
move $t5, $t0
la $s0, ah
sw $s6, 0($s0)
la $s6, q
lw $t1, 0($s6)
add $t5, $t5, $t1
la $s0, v
sw $t7, 0($s0)
move $t7, $t5
la $s0, ai
sw $t2, 0($s0)
la $t2, p
lw $t9, 0($t2)
add $t7, $t7, $t9
la $s0, u
sw $t4, 0($s0)
move $t4, $t7
la $s0, aj
sw $t3, 0($s0)
la $t3, o
lw $s5, 0($t3)
add $t4, $t4, $s5
la $s0, t
sw $t6, 0($s0)
move $t6, $t4
la $s0, ak
sw $s2, 0($s0)
la $s2, n
lw $t8, 0($s2)
add $t6, $t6, $t8
la $s0, s
sw $s3, 0($s0)
move $s3, $t6
la $s0, al
sw $t0, 0($s0)
la $t0, m
lw $s1, 0($t0)
add $s3, $s3, $s1
la $s0, r
sw $s4, 0($s0)
move $s4, $s3
la $s0, am
sw $t5, 0($s0)
la $t5, l
lw $s6, 0($t5)
add $s4, $s4, $s6
la $s0, q
sw $t1, 0($s0)
move $t1, $s4
la $s0, an
sw $t7, 0($s0)
la $t7, k
lw $t2, 0($t7)
add $t1, $t1, $t2
la $s0, p
sw $t9, 0($s0)
move $t9, $t1
la $s0, ao
sw $t4, 0($s0)
la $t4, j
lw $t3, 0($t4)
add $t9, $t9, $t3
la $s0, o
sw $s5, 0($s0)
move $s5, $t9
la $s0, ap
sw $t6, 0($s0)
la $t6, i
lw $s2, 0($t6)
add $s5, $s5, $s2
la $s0, n
sw $t8, 0($s0)
move $t8, $s5
la $s0, aq
sw $s3, 0($s0)
la $s3, h
lw $t0, 0($s3)
add $t8, $t8, $t0
la $s0, m
sw $s1, 0($s0)
move $s1, $t8
la $s0, ar
sw $s4, 0($s0)
la $s4, g
lw $t5, 0($s4)
add $s1, $s1, $t5
la $s0, l
sw $s6, 0($s0)
move $s6, $s1
la $s0, as
sw $t1, 0($s0)
la $t1, f
lw $t7, 0($t1)
add $s6, $s6, $t7
la $s0, k
sw $t2, 0($s0)
move $t2, $s6
la $s0, at
sw $t9, 0($s0)
la $t9, e
lw $t4, 0($t9)
add $t2, $t2, $t4
la $s0, j
sw $t3, 0($s0)
move $t3, $t2
la $s0, au
sw $s5, 0($s0)
la $s5, d
lw $t6, 0($s5)
add $t3, $t3, $t6
la $s0, i
sw $s2, 0($s0)
move $s2, $t3
la $s0, av
sw $t8, 0($s0)
la $t8, c
lw $s3, 0($t8)
add $s2, $s2, $s3
li $v0, 1
move $a0, $s2
syscall
