.data
al:	.word	0	# temp_p in original
m:	.word	0	# k in original
z:	.word	0	# x in original
f:	.word	0	# d in original
am:	.word	0	# temp_o in original
ai:	.word	0	# temp_s in original
y:	.word	0	# w in original
h:	.word	0	# f in original
au:	.word	0	# temp_g in original
n:	.word	0	# l in original
l:	.word	0	# j in original
e:	.word	0	# c in original
aq:	.word	0	# temp_k in original
ao:	.word	0	# temp_m in original
av:	.word	0	# temp_f in original
as:	.word	0	# temp_i in original
g:	.word	0	# e in original
ac:	.word	0	# temp_y in original
x:	.word	0	# v in original
r:	.word	0	# p in original
o:	.word	0	# m in original
ak:	.word	0	# temp_q in original
ab:	.word	0	# z in original
u:	.word	0	# s in original
ag:	.word	0	# temp_u in original
c:	.word	0	# a in original
aj:	.word	0	# temp_r in original
ae:	.word	0	# temp_w in original
ah:	.word	0	# temp_t in original
s:	.word	0	# q in original
t:	.word	0	# r in original
aa:	.word	0	# y in original
at:	.word	0	# temp_h in original
af:	.word	0	# temp_v in original
k:	.word	0	# i in original
q:	.word	0	# o in original
i:	.word	0	# g in original
w:	.word	0	# u in original
v:	.word	0	# t in original
an:	.word	0	# temp_n in original
j:	.word	0	# h in original
ad:	.word	0	# temp_x in original
d:	.word	0	# b in original
ar:	.word	0	# temp_j in original
p:	.word	0	# n in original
ap:	.word	0	# temp_l in original
.text
li $v0, 5
syscall
la $t3, c
lw $t9, 0($t3)
move $t9, $v0
li $v0, 5
syscall
la $s5, d
lw $t8, 0($s5)
move $t8, $v0
li $v0, 5
syscall
la $s1, e
lw $t1, 0($s1)
move $t1, $v0
li $v0, 5
syscall
la $t7, f
lw $t4, 0($t7)
move $t4, $v0
li $v0, 5
syscall
la $t0, g
lw $s6, 0($t0)
move $s6, $v0
li $v0, 5
syscall
la $t2, h
lw $t6, 0($t2)
move $t6, $v0
li $v0, 5
syscall
la $t5, i
lw $s4, 0($t5)
move $s4, $v0
li $v0, 5
syscall
la $s3, j
lw $s2, 0($s3)
move $s2, $v0
li $v0, 5
syscall
la $s0, c
sw $t9, 0($s0)
la $t9, k
lw $t3, 0($t9)
move $t3, $v0
li $v0, 5
syscall
la $s0, d
sw $t8, 0($s0)
la $t8, l
lw $s5, 0($t8)
move $s5, $v0
li $v0, 5
syscall
la $s0, e
sw $t1, 0($s0)
la $t1, m
lw $s1, 0($t1)
move $s1, $v0
li $v0, 5
syscall
la $s0, f
sw $t4, 0($s0)
la $t4, n
lw $t7, 0($t4)
move $t7, $v0
li $v0, 5
syscall
la $s0, g
sw $s6, 0($s0)
la $s6, o
lw $t0, 0($s6)
move $t0, $v0
li $v0, 5
syscall
la $s0, h
sw $t6, 0($s0)
la $t6, p
lw $t2, 0($t6)
move $t2, $v0
li $v0, 5
syscall
la $s0, i
sw $s4, 0($s0)
la $s4, q
lw $t5, 0($s4)
move $t5, $v0
li $v0, 5
syscall
la $s0, j
sw $s2, 0($s0)
la $s2, r
lw $s3, 0($s2)
move $s3, $v0
li $v0, 5
syscall
la $s0, k
sw $t3, 0($s0)
la $t3, s
lw $t9, 0($t3)
move $t9, $v0
li $v0, 5
syscall
la $s0, l
sw $s5, 0($s0)
la $s5, t
lw $t8, 0($s5)
move $t8, $v0
li $v0, 5
syscall
la $s0, m
sw $s1, 0($s0)
la $s1, u
lw $t1, 0($s1)
move $t1, $v0
li $v0, 5
syscall
la $s0, n
sw $t7, 0($s0)
la $t7, v
lw $t4, 0($t7)
move $t4, $v0
li $v0, 5
syscall
la $s0, o
sw $t0, 0($s0)
la $t0, w
lw $s6, 0($t0)
move $s6, $v0
li $v0, 5
syscall
la $s0, p
sw $t2, 0($s0)
la $t2, x
lw $t6, 0($t2)
move $t6, $v0
li $v0, 5
syscall
la $s0, q
sw $t5, 0($s0)
la $t5, y
lw $s4, 0($t5)
move $s4, $v0
li $v0, 5
syscall
la $s0, r
sw $s3, 0($s0)
la $s3, z
lw $s2, 0($s3)
move $s2, $v0
li $v0, 5
syscall
la $s0, s
sw $t9, 0($s0)
la $t9, aa
lw $t3, 0($t9)
move $t3, $v0
li $v0, 5
syscall
la $s0, t
sw $t8, 0($s0)
la $t8, ab
lw $s5, 0($t8)
move $s5, $v0
move $s1, $s5
add $s1, $s1, $t3
la $s0, u
sw $t1, 0($s0)
move $t1, $s1
add $t1, $t1, $s2
move $t7, $t1
add $t7, $t7, $s4
la $s0, v
sw $t4, 0($s0)
move $t4, $t7
add $t4, $t4, $t6
move $t0, $t4
add $t0, $t0, $s6
la $s0, w
sw $s6, 0($s0)
move $s6, $t0
la $s0, x
sw $t6, 0($s0)
la $t2, v
lw $t6, 0($t2)
add $s6, $s6, $t6
move $t5, $s6
la $s0, y
sw $s4, 0($s0)
la $s4, u
lw $s3, 0($s4)
add $t5, $t5, $s3
la $s0, z
sw $s2, 0($s0)
move $s2, $t5
la $s0, aa
sw $t3, 0($s0)
la $t9, t
lw $t3, 0($t9)
add $s2, $s2, $t3
move $t8, $s2
la $s0, ab
sw $s5, 0($s0)
la $s0, ac
sw $s1, 0($s0)
la $s5, s
lw $s1, 0($s5)
add $t8, $t8, $s1
la $s0, ad
sw $t1, 0($s0)
move $t1, $t8
la $s0, ae
sw $t7, 0($s0)
la $s0, af
sw $t4, 0($s0)
la $t7, r
lw $t4, 0($t7)
add $t1, $t1, $t4
la $s0, ag
sw $t0, 0($s0)
move $t0, $t1
la $s0, ah
sw $s6, 0($s0)
la $s6, q
lw $t2, 0($s6)
add $t0, $t0, $t2
la $s0, v
sw $t6, 0($s0)
move $t6, $t0
la $s0, ai
sw $t5, 0($s0)
la $t5, p
lw $s4, 0($t5)
add $t6, $t6, $s4
la $s0, u
sw $s3, 0($s0)
move $s3, $t6
la $s0, aj
sw $s2, 0($s0)
la $s2, o
lw $t9, 0($s2)
add $s3, $s3, $t9
la $s0, t
sw $t3, 0($s0)
move $t3, $s3
la $s0, ak
sw $t8, 0($s0)
la $t8, n
lw $s5, 0($t8)
add $t3, $t3, $s5
la $s0, s
sw $s1, 0($s0)
move $s1, $t3
la $s0, al
sw $t1, 0($s0)
la $t1, m
lw $t7, 0($t1)
add $s1, $s1, $t7
la $s0, r
sw $t4, 0($s0)
move $t4, $s1
la $s0, am
sw $t0, 0($s0)
la $t0, l
lw $s6, 0($t0)
add $t4, $t4, $s6
la $s0, q
sw $t2, 0($s0)
move $t2, $t4
la $s0, an
sw $t6, 0($s0)
la $t6, k
lw $t5, 0($t6)
add $t2, $t2, $t5
la $s0, p
sw $s4, 0($s0)
move $s4, $t2
la $s0, ao
sw $s3, 0($s0)
la $s3, j
lw $s2, 0($s3)
add $s4, $s4, $s2
la $s0, o
sw $t9, 0($s0)
move $t9, $s4
la $s0, ap
sw $t3, 0($s0)
la $t3, i
lw $t8, 0($t3)
add $t9, $t9, $t8
la $s0, n
sw $s5, 0($s0)
move $s5, $t9
la $s0, aq
sw $s1, 0($s0)
la $s1, h
lw $t1, 0($s1)
add $s5, $s5, $t1
la $s0, m
sw $t7, 0($s0)
move $t7, $s5
la $s0, ar
sw $t4, 0($s0)
la $t4, g
lw $t0, 0($t4)
add $t7, $t7, $t0
la $s0, l
sw $s6, 0($s0)
move $s6, $t7
la $s0, as
sw $t2, 0($s0)
la $t2, f
lw $t6, 0($t2)
add $s6, $s6, $t6
la $s0, k
sw $t5, 0($s0)
move $t5, $s6
la $s0, at
sw $s4, 0($s0)
la $s4, e
lw $s3, 0($s4)
add $t5, $t5, $s3
la $s0, j
sw $s2, 0($s0)
move $s2, $t5
la $s0, au
sw $t9, 0($s0)
la $t9, d
lw $t3, 0($t9)
add $s2, $s2, $t3
la $s0, i
sw $t8, 0($s0)
move $t8, $s2
la $s0, av
sw $s5, 0($s0)
la $s5, c
lw $s1, 0($s5)
add $t8, $t8, $s1
li $v0, 1
move $a0, $t8
syscall
