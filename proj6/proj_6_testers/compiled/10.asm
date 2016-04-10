.data
r:	.word	0	# p in original
q:	.word	0	# o in original
p:	.word	0	# n in original
m:	.word	0	# k in original
t:	.word	0	# r in original
ak:	.word	0	# temp_q in original
l:	.word	0	# j in original
aa:	.word	0	# y in original
w:	.word	0	# u in original
o:	.word	0	# m in original
j:	.word	0	# h in original
e:	.word	0	# c in original
ac:	.word	0	# temp_y in original
au:	.word	0	# temp_g in original
af:	.word	0	# temp_v in original
ab:	.word	0	# z in original
z:	.word	0	# x in original
an:	.word	0	# temp_n in original
as:	.word	0	# temp_i in original
u:	.word	0	# s in original
aq:	.word	0	# temp_k in original
ai:	.word	0	# temp_s in original
ae:	.word	0	# temp_w in original
ag:	.word	0	# temp_u in original
s:	.word	0	# q in original
ao:	.word	0	# temp_m in original
c:	.word	0	# a in original
ar:	.word	0	# temp_j in original
k:	.word	0	# i in original
v:	.word	0	# t in original
ad:	.word	0	# temp_x in original
y:	.word	0	# w in original
g:	.word	0	# e in original
at:	.word	0	# temp_h in original
n:	.word	0	# l in original
f:	.word	0	# d in original
x:	.word	0	# v in original
av:	.word	0	# temp_f in original
al:	.word	0	# temp_p in original
d:	.word	0	# b in original
ah:	.word	0	# temp_t in original
aj:	.word	0	# temp_r in original
h:	.word	0	# f in original
am:	.word	0	# temp_o in original
ap:	.word	0	# temp_l in original
i:	.word	0	# g in original
.text
li $v0, 5
syscall
la $s5, c
lw $t0, 0($s5)
move $t0, $v0
li $v0, 5
syscall
la $t5, d
lw $s2, 0($t5)
move $s2, $v0
li $v0, 5
syscall
la $t3, e
lw $s4, 0($t3)
move $s4, $v0
li $v0, 5
syscall
la $s3, f
lw $t1, 0($s3)
move $t1, $v0
li $v0, 5
syscall
la $t9, g
lw $t6, 0($t9)
move $t6, $v0
li $v0, 5
syscall
la $s6, h
lw $t8, 0($s6)
move $t8, $v0
li $v0, 5
syscall
la $t7, i
lw $s1, 0($t7)
move $s1, $v0
li $v0, 5
syscall
la $t2, j
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s0, c
sw $t0, 0($s0)
la $t0, k
lw $s5, 0($t0)
move $s5, $v0
li $v0, 5
syscall
la $s0, d
sw $s2, 0($s0)
la $s2, l
lw $t5, 0($s2)
move $t5, $v0
li $v0, 5
syscall
la $s0, e
sw $s4, 0($s0)
la $s4, m
lw $t3, 0($s4)
move $t3, $v0
li $v0, 5
syscall
la $s0, f
sw $t1, 0($s0)
la $t1, n
lw $s3, 0($t1)
move $s3, $v0
li $v0, 5
syscall
la $s0, g
sw $t6, 0($s0)
la $t6, o
lw $t9, 0($t6)
move $t9, $v0
li $v0, 5
syscall
la $s0, h
sw $t8, 0($s0)
la $t8, p
lw $s6, 0($t8)
move $s6, $v0
li $v0, 5
syscall
la $s0, i
sw $s1, 0($s0)
la $s1, q
lw $t7, 0($s1)
move $t7, $v0
li $v0, 5
syscall
la $s0, j
sw $t4, 0($s0)
la $t4, r
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
la $s0, k
sw $s5, 0($s0)
la $s5, s
lw $t0, 0($s5)
move $t0, $v0
li $v0, 5
syscall
la $s0, l
sw $t5, 0($s0)
la $t5, t
lw $s2, 0($t5)
move $s2, $v0
li $v0, 5
syscall
la $s0, m
sw $t3, 0($s0)
la $t3, u
lw $s4, 0($t3)
move $s4, $v0
li $v0, 5
syscall
la $s0, n
sw $s3, 0($s0)
la $s3, v
lw $t1, 0($s3)
move $t1, $v0
li $v0, 5
syscall
la $s0, o
sw $t9, 0($s0)
la $t9, w
lw $t6, 0($t9)
move $t6, $v0
li $v0, 5
syscall
la $s0, p
sw $s6, 0($s0)
la $s6, x
lw $t8, 0($s6)
move $t8, $v0
li $v0, 5
syscall
la $s0, q
sw $t7, 0($s0)
la $t7, y
lw $s1, 0($t7)
move $s1, $v0
li $v0, 5
syscall
la $s0, r
sw $t2, 0($s0)
la $t2, z
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s0, s
sw $t0, 0($s0)
la $t0, aa
lw $s5, 0($t0)
move $s5, $v0
li $v0, 5
syscall
la $s0, t
sw $s2, 0($s0)
la $s2, ab
lw $t5, 0($s2)
move $t5, $v0
move $t3, $t5
add $t3, $t3, $s5
la $s0, u
sw $s4, 0($s0)
move $s4, $t3
add $s4, $s4, $t4
move $s3, $s4
add $s3, $s3, $s1
la $s0, v
sw $t1, 0($s0)
move $t1, $s3
add $t1, $t1, $t8
move $t9, $t1
add $t9, $t9, $t6
la $s0, w
sw $t6, 0($s0)
move $t6, $t9
la $s0, x
sw $t8, 0($s0)
la $s6, v
lw $t8, 0($s6)
add $t6, $t6, $t8
move $t7, $t6
la $s0, y
sw $s1, 0($s0)
la $s1, u
lw $t2, 0($s1)
add $t7, $t7, $t2
la $s0, z
sw $t4, 0($s0)
move $t4, $t7
la $s0, aa
sw $s5, 0($s0)
la $t0, t
lw $s5, 0($t0)
add $t4, $t4, $s5
move $s2, $t4
la $s0, ab
sw $t5, 0($s0)
la $s0, ac
sw $t3, 0($s0)
la $t5, s
lw $t3, 0($t5)
add $s2, $s2, $t3
la $s0, ad
sw $s4, 0($s0)
move $s4, $s2
la $s0, ae
sw $s3, 0($s0)
la $s0, af
sw $t1, 0($s0)
la $s3, r
lw $t1, 0($s3)
add $s4, $s4, $t1
la $s0, ag
sw $t9, 0($s0)
move $t9, $s4
la $s0, ah
sw $t6, 0($s0)
la $t6, q
lw $s6, 0($t6)
add $t9, $t9, $s6
la $s0, v
sw $t8, 0($s0)
move $t8, $t9
la $s0, ai
sw $t7, 0($s0)
la $t7, p
lw $s1, 0($t7)
add $t8, $t8, $s1
la $s0, u
sw $t2, 0($s0)
move $t2, $t8
la $s0, aj
sw $t4, 0($s0)
la $t4, o
lw $t0, 0($t4)
add $t2, $t2, $t0
la $s0, t
sw $s5, 0($s0)
move $s5, $t2
la $s0, ak
sw $s2, 0($s0)
la $s2, n
lw $t5, 0($s2)
add $s5, $s5, $t5
la $s0, s
sw $t3, 0($s0)
move $t3, $s5
la $s0, al
sw $s4, 0($s0)
la $s4, m
lw $s3, 0($s4)
add $t3, $t3, $s3
la $s0, r
sw $t1, 0($s0)
move $t1, $t3
la $s0, am
sw $t9, 0($s0)
la $t9, l
lw $t6, 0($t9)
add $t1, $t1, $t6
la $s0, q
sw $s6, 0($s0)
move $s6, $t1
la $s0, an
sw $t8, 0($s0)
la $t8, k
lw $t7, 0($t8)
add $s6, $s6, $t7
la $s0, p
sw $s1, 0($s0)
move $s1, $s6
la $s0, ao
sw $t2, 0($s0)
la $t2, j
lw $t4, 0($t2)
add $s1, $s1, $t4
la $s0, o
sw $t0, 0($s0)
move $t0, $s1
la $s0, ap
sw $s5, 0($s0)
la $s5, i
lw $s2, 0($s5)
add $t0, $t0, $s2
la $s0, n
sw $t5, 0($s0)
move $t5, $t0
la $s0, aq
sw $t3, 0($s0)
la $t3, h
lw $s4, 0($t3)
add $t5, $t5, $s4
la $s0, m
sw $s3, 0($s0)
move $s3, $t5
la $s0, ar
sw $t1, 0($s0)
la $t1, g
lw $t9, 0($t1)
add $s3, $s3, $t9
la $s0, l
sw $t6, 0($s0)
move $t6, $s3
la $s0, as
sw $s6, 0($s0)
la $s6, f
lw $t8, 0($s6)
add $t6, $t6, $t8
la $s0, k
sw $t7, 0($s0)
move $t7, $t6
la $s0, at
sw $s1, 0($s0)
la $s1, e
lw $t2, 0($s1)
add $t7, $t7, $t2
la $s0, j
sw $t4, 0($s0)
move $t4, $t7
la $s0, au
sw $t0, 0($s0)
la $t0, d
lw $s5, 0($t0)
add $t4, $t4, $s5
la $s0, i
sw $s2, 0($s0)
move $s2, $t4
la $s0, av
sw $t5, 0($s0)
la $t5, c
lw $t3, 0($t5)
add $s2, $s2, $t3
li $v0, 1
move $a0, $s2
syscall
