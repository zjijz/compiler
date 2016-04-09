.data
ai:	.word	0	# temp_s in original
n:	.word	0	# l in original
h:	.word	0	# f in original
o:	.word	0	# m in original
p:	.word	0	# n in original
k:	.word	0	# i in original
am:	.word	0	# temp_o in original
an:	.word	0	# temp_n in original
l:	.word	0	# j in original
c:	.word	0	# a in original
ae:	.word	0	# temp_w in original
e:	.word	0	# c in original
m:	.word	0	# k in original
j:	.word	0	# h in original
ak:	.word	0	# temp_q in original
y:	.word	0	# w in original
ab:	.word	0	# z in original
ap:	.word	0	# temp_l in original
ag:	.word	0	# temp_u in original
u:	.word	0	# s in original
al:	.word	0	# temp_p in original
w:	.word	0	# u in original
ah:	.word	0	# temp_t in original
z:	.word	0	# x in original
af:	.word	0	# temp_v in original
at:	.word	0	# temp_h in original
v:	.word	0	# t in original
s:	.word	0	# q in original
au:	.word	0	# temp_g in original
ac:	.word	0	# temp_y in original
r:	.word	0	# p in original
g:	.word	0	# e in original
aq:	.word	0	# temp_k in original
ao:	.word	0	# temp_m in original
aj:	.word	0	# temp_r in original
q:	.word	0	# o in original
aa:	.word	0	# y in original
as:	.word	0	# temp_i in original
t:	.word	0	# r in original
ar:	.word	0	# temp_j in original
i:	.word	0	# g in original
ad:	.word	0	# temp_x in original
d:	.word	0	# b in original
f:	.word	0	# d in original
x:	.word	0	# v in original
av:	.word	0	# temp_f in original
.text
li $v0, 5
syscall
la $s4, c
lw $s1, 0($s4)
move $s1, $v0
li $v0, 5
syscall
la $s2, d
lw $t6, 0($s2)
move $t6, $v0
li $v0, 5
syscall
la $t4, e
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
la $t5, f
lw $s5, 0($t5)
move $s5, $v0
li $v0, 5
syscall
la $t8, g
lw $s3, 0($t8)
move $s3, $v0
li $v0, 5
syscall
la $s6, h
lw $t9, 0($s6)
move $t9, $v0
li $v0, 5
syscall
la $t3, i
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $t0, j
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
la $s0, c
sw $s1, 0($s0)
la $s1, k
lw $s4, 0($s1)
move $s4, $v0
li $v0, 5
syscall
la $s0, d
sw $t6, 0($s0)
la $t6, l
lw $s2, 0($t6)
move $s2, $v0
li $v0, 5
syscall
la $s0, e
sw $t2, 0($s0)
la $t2, m
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s0, f
sw $s5, 0($s0)
la $s5, n
lw $t5, 0($s5)
move $t5, $v0
li $v0, 5
syscall
la $s0, g
sw $s3, 0($s0)
la $s3, o
lw $t8, 0($s3)
move $t8, $v0
li $v0, 5
syscall
la $s0, h
sw $t9, 0($s0)
la $t9, p
lw $s6, 0($t9)
move $s6, $v0
li $v0, 5
syscall
la $s0, i
sw $t7, 0($s0)
la $t7, q
lw $t3, 0($t7)
move $t3, $v0
li $v0, 5
syscall
la $s0, j
sw $t1, 0($s0)
la $t1, r
lw $t0, 0($t1)
move $t0, $v0
li $v0, 5
syscall
la $s0, k
sw $s4, 0($s0)
la $s4, s
lw $s1, 0($s4)
move $s1, $v0
li $v0, 5
syscall
la $s0, l
sw $s2, 0($s0)
la $s2, t
lw $t6, 0($s2)
move $t6, $v0
li $v0, 5
syscall
la $s0, m
sw $t4, 0($s0)
la $t4, u
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
la $s0, n
sw $t5, 0($s0)
la $t5, v
lw $s5, 0($t5)
move $s5, $v0
li $v0, 5
syscall
la $s0, o
sw $t8, 0($s0)
la $t8, w
lw $s3, 0($t8)
move $s3, $v0
li $v0, 5
syscall
la $s0, p
sw $s6, 0($s0)
la $s6, x
lw $t9, 0($s6)
move $t9, $v0
li $v0, 5
syscall
la $s0, q
sw $t3, 0($s0)
la $t3, y
lw $t7, 0($t3)
move $t7, $v0
li $v0, 5
syscall
la $s0, r
sw $t0, 0($s0)
la $t0, z
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
la $s0, s
sw $s1, 0($s0)
la $s1, aa
lw $s4, 0($s1)
move $s4, $v0
li $v0, 5
syscall
la $s0, t
sw $t6, 0($s0)
la $t6, ab
lw $s2, 0($t6)
move $s2, $v0
move $t4, $s2
add $t4, $t4, $s4
la $s0, u
sw $t2, 0($s0)
move $t2, $t4
add $t2, $t2, $t1
move $t5, $t2
add $t5, $t5, $t7
la $s0, v
sw $s5, 0($s0)
move $s5, $t5
add $s5, $s5, $t9
move $t8, $s5
add $t8, $t8, $s3
la $s0, w
sw $s3, 0($s0)
move $s3, $t8
la $s0, x
sw $t9, 0($s0)
la $s6, v
lw $t9, 0($s6)
add $s3, $s3, $t9
move $t3, $s3
la $s0, y
sw $t7, 0($s0)
la $t7, u
lw $t0, 0($t7)
add $t3, $t3, $t0
la $s0, z
sw $t1, 0($s0)
move $t1, $t3
la $s0, aa
sw $s4, 0($s0)
la $s1, t
lw $s4, 0($s1)
add $t1, $t1, $s4
move $t6, $t1
la $s0, ab
sw $s2, 0($s0)
la $s0, ac
sw $t4, 0($s0)
la $s2, s
lw $t4, 0($s2)
add $t6, $t6, $t4
la $s0, ad
sw $t2, 0($s0)
move $t2, $t6
la $s0, ae
sw $t5, 0($s0)
la $s0, af
sw $s5, 0($s0)
la $t5, r
lw $s5, 0($t5)
add $t2, $t2, $s5
la $s0, ag
sw $t8, 0($s0)
move $t8, $t2
la $s0, ah
sw $s3, 0($s0)
la $s3, q
lw $s6, 0($s3)
add $t8, $t8, $s6
la $s0, v
sw $t9, 0($s0)
move $t9, $t8
la $s0, ai
sw $t3, 0($s0)
la $t3, p
lw $t7, 0($t3)
add $t9, $t9, $t7
la $s0, u
sw $t0, 0($s0)
move $t0, $t9
la $s0, aj
sw $t1, 0($s0)
la $t1, o
lw $s1, 0($t1)
add $t0, $t0, $s1
la $s0, t
sw $s4, 0($s0)
move $s4, $t0
la $s0, ak
sw $t6, 0($s0)
la $t6, n
lw $s2, 0($t6)
add $s4, $s4, $s2
la $s0, s
sw $t4, 0($s0)
move $t4, $s4
la $s0, al
sw $t2, 0($s0)
la $t2, m
lw $t5, 0($t2)
add $t4, $t4, $t5
la $s0, r
sw $s5, 0($s0)
move $s5, $t4
la $s0, am
sw $t8, 0($s0)
la $t8, l
lw $s3, 0($t8)
add $s5, $s5, $s3
la $s0, q
sw $s6, 0($s0)
move $s6, $s5
la $s0, an
sw $t9, 0($s0)
la $t9, k
lw $t3, 0($t9)
add $s6, $s6, $t3
la $s0, p
sw $t7, 0($s0)
move $t7, $s6
la $s0, ao
sw $t0, 0($s0)
la $t0, j
lw $t1, 0($t0)
add $t7, $t7, $t1
la $s0, o
sw $s1, 0($s0)
move $s1, $t7
la $s0, ap
sw $s4, 0($s0)
la $s4, i
lw $t6, 0($s4)
add $s1, $s1, $t6
la $s0, n
sw $s2, 0($s0)
move $s2, $s1
la $s0, aq
sw $t4, 0($s0)
la $t4, h
lw $t2, 0($t4)
add $s2, $s2, $t2
la $s0, m
sw $t5, 0($s0)
move $t5, $s2
la $s0, ar
sw $s5, 0($s0)
la $s5, g
lw $t8, 0($s5)
add $t5, $t5, $t8
la $s0, l
sw $s3, 0($s0)
move $s3, $t5
la $s0, as
sw $s6, 0($s0)
la $s6, f
lw $t9, 0($s6)
add $s3, $s3, $t9
la $s0, k
sw $t3, 0($s0)
move $t3, $s3
la $s0, at
sw $t7, 0($s0)
la $t7, e
lw $t0, 0($t7)
add $t3, $t3, $t0
la $s0, j
sw $t1, 0($s0)
move $t1, $t3
la $s0, au
sw $s1, 0($s0)
la $s1, d
lw $s4, 0($s1)
add $t1, $t1, $s4
la $s0, i
sw $t6, 0($s0)
move $t6, $t1
la $s0, av
sw $s2, 0($s0)
la $s2, c
lw $t4, 0($s2)
add $t6, $t6, $t4
li $v0, 1
move $a0, $t6
syscall
