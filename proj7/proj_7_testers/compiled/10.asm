.data
ad:	.word	0	# temp_x in original
ag:	.word	0	# temp_u in original
av:	.word	0	# temp_f in original
ap:	.word	0	# temp_l in original
ab:	.word	0	# z in original
al:	.word	0	# temp_p in original
c:	.word	0	# a in original
aj:	.word	0	# temp_r in original
g:	.word	0	# e in original
n:	.word	0	# l in original
au:	.word	0	# temp_g in original
u:	.word	0	# s in original
ae:	.word	0	# temp_w in original
at:	.word	0	# temp_h in original
am:	.word	0	# temp_o in original
as:	.word	0	# temp_i in original
y:	.word	0	# w in original
af:	.word	0	# temp_v in original
o:	.word	0	# m in original
ao:	.word	0	# temp_m in original
aq:	.word	0	# temp_k in original
x:	.word	0	# v in original
m:	.word	0	# k in original
ac:	.word	0	# temp_y in original
aa:	.word	0	# y in original
i:	.word	0	# g in original
d:	.word	0	# b in original
k:	.word	0	# i in original
l:	.word	0	# j in original
r:	.word	0	# p in original
w:	.word	0	# u in original
ah:	.word	0	# temp_t in original
j:	.word	0	# h in original
ar:	.word	0	# temp_j in original
z:	.word	0	# x in original
an:	.word	0	# temp_n in original
f:	.word	0	# d in original
q:	.word	0	# o in original
p:	.word	0	# n in original
h:	.word	0	# f in original
ak:	.word	0	# temp_q in original
v:	.word	0	# t in original
s:	.word	0	# q in original
ai:	.word	0	# temp_s in original
e:	.word	0	# c in original
t:	.word	0	# r in original
.text
li $v0, 5
syscall
la $t1, c
lw $t6, 0($t1)
move $t6, $v0
li $v0, 5
syscall
la $s3, d
lw $t4, 0($s3)
move $t4, $v0
li $v0, 5
syscall
la $t2, e
lw $s5, 0($t2)
move $s5, $v0
li $v0, 5
syscall
la $s2, f
lw $t8, 0($s2)
move $t8, $v0
li $v0, 5
syscall
la $s1, g
lw $t5, 0($s1)
move $t5, $v0
li $v0, 5
syscall
la $t0, h
lw $s4, 0($t0)
move $s4, $v0
li $v0, 5
syscall
la $s6, i
lw $t3, 0($s6)
move $t3, $v0
li $v0, 5
syscall
la $t9, j
lw $t7, 0($t9)
move $t7, $v0
li $v0, 5
syscall
la $s0, c
sw $t6, 0($s0)
la $t6, k
lw $t1, 0($t6)
move $t1, $v0
li $v0, 5
syscall
la $s0, d
sw $t4, 0($s0)
la $t4, l
lw $s3, 0($t4)
move $s3, $v0
li $v0, 5
syscall
la $s0, e
sw $s5, 0($s0)
la $s5, m
lw $t2, 0($s5)
move $t2, $v0
li $v0, 5
syscall
la $s0, f
sw $t8, 0($s0)
la $t8, n
lw $s2, 0($t8)
move $s2, $v0
li $v0, 5
syscall
la $s0, g
sw $t5, 0($s0)
la $t5, o
lw $s1, 0($t5)
move $s1, $v0
li $v0, 5
syscall
la $s0, h
sw $s4, 0($s0)
la $s4, p
lw $t0, 0($s4)
move $t0, $v0
li $v0, 5
syscall
la $s0, i
sw $t3, 0($s0)
la $t3, q
lw $s6, 0($t3)
move $s6, $v0
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
sw $t1, 0($s0)
la $t1, s
lw $t6, 0($t1)
move $t6, $v0
li $v0, 5
syscall
la $s0, l
sw $s3, 0($s0)
la $s3, t
lw $t4, 0($s3)
move $t4, $v0
li $v0, 5
syscall
la $s0, m
sw $t2, 0($s0)
la $t2, u
lw $s5, 0($t2)
move $s5, $v0
li $v0, 5
syscall
la $s0, n
sw $s2, 0($s0)
la $s2, v
lw $t8, 0($s2)
move $t8, $v0
li $v0, 5
syscall
la $s0, o
sw $s1, 0($s0)
la $s1, w
lw $t5, 0($s1)
move $t5, $v0
li $v0, 5
syscall
la $s0, p
sw $t0, 0($s0)
la $t0, x
lw $s4, 0($t0)
move $s4, $v0
li $v0, 5
syscall
la $s0, q
sw $s6, 0($s0)
la $s6, y
lw $t3, 0($s6)
move $t3, $v0
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
sw $t6, 0($s0)
la $t6, aa
lw $t1, 0($t6)
move $t1, $v0
li $v0, 5
syscall
la $s0, t
sw $t4, 0($s0)
la $t4, ab
lw $s3, 0($t4)
move $s3, $v0
move $t2, $s3
add $t2, $t2, $t1
la $s0, u
sw $s5, 0($s0)
move $s5, $t2
add $s5, $s5, $t7
move $s2, $s5
add $s2, $s2, $t3
la $s0, v
sw $t8, 0($s0)
move $t8, $s2
add $t8, $t8, $s4
move $s1, $t8
add $s1, $s1, $t5
la $s0, w
sw $t5, 0($s0)
move $t5, $s1
la $s0, x
sw $s4, 0($s0)
la $t0, v
lw $s4, 0($t0)
add $t5, $t5, $s4
move $s6, $t5
la $s0, y
sw $t3, 0($s0)
la $t3, u
lw $t9, 0($t3)
add $s6, $s6, $t9
la $s0, z
sw $t7, 0($s0)
move $t7, $s6
la $s0, aa
sw $t1, 0($s0)
la $t6, t
lw $t1, 0($t6)
add $t7, $t7, $t1
move $t4, $t7
la $s0, ab
sw $s3, 0($s0)
la $s0, ac
sw $t2, 0($s0)
la $s3, s
lw $t2, 0($s3)
add $t4, $t4, $t2
la $s0, ad
sw $s5, 0($s0)
move $s5, $t4
la $s0, ae
sw $s2, 0($s0)
la $s0, af
sw $t8, 0($s0)
la $s2, r
lw $t8, 0($s2)
add $s5, $s5, $t8
la $s0, ag
sw $s1, 0($s0)
move $s1, $s5
la $s0, ah
sw $t5, 0($s0)
la $t5, q
lw $t0, 0($t5)
add $s1, $s1, $t0
la $s0, v
sw $s4, 0($s0)
move $s4, $s1
la $s0, ai
sw $s6, 0($s0)
la $s6, p
lw $t3, 0($s6)
add $s4, $s4, $t3
la $s0, u
sw $t9, 0($s0)
move $t9, $s4
la $s0, aj
sw $t7, 0($s0)
la $t7, o
lw $t6, 0($t7)
add $t9, $t9, $t6
la $s0, t
sw $t1, 0($s0)
move $t1, $t9
la $s0, ak
sw $t4, 0($s0)
la $t4, n
lw $s3, 0($t4)
add $t1, $t1, $s3
la $s0, s
sw $t2, 0($s0)
move $t2, $t1
la $s0, al
sw $s5, 0($s0)
la $s5, m
lw $s2, 0($s5)
add $t2, $t2, $s2
la $s0, r
sw $t8, 0($s0)
move $t8, $t2
la $s0, am
sw $s1, 0($s0)
la $s1, l
lw $t5, 0($s1)
add $t8, $t8, $t5
la $s0, q
sw $t0, 0($s0)
move $t0, $t8
la $s0, an
sw $s4, 0($s0)
la $s4, k
lw $s6, 0($s4)
add $t0, $t0, $s6
la $s0, p
sw $t3, 0($s0)
move $t3, $t0
la $s0, ao
sw $t9, 0($s0)
la $t9, j
lw $t7, 0($t9)
add $t3, $t3, $t7
la $s0, o
sw $t6, 0($s0)
move $t6, $t3
la $s0, ap
sw $t1, 0($s0)
la $t1, i
lw $t4, 0($t1)
add $t6, $t6, $t4
la $s0, n
sw $s3, 0($s0)
move $s3, $t6
la $s0, aq
sw $t2, 0($s0)
la $t2, h
lw $s5, 0($t2)
add $s3, $s3, $s5
la $s0, m
sw $s2, 0($s0)
move $s2, $s3
la $s0, ar
sw $t8, 0($s0)
la $t8, g
lw $s1, 0($t8)
add $s2, $s2, $s1
la $s0, l
sw $t5, 0($s0)
move $t5, $s2
la $s0, as
sw $t0, 0($s0)
la $t0, f
lw $s4, 0($t0)
add $t5, $t5, $s4
la $s0, k
sw $s6, 0($s0)
move $s6, $t5
la $s0, at
sw $t3, 0($s0)
la $t3, e
lw $t9, 0($t3)
add $s6, $s6, $t9
la $s0, j
sw $t7, 0($s0)
move $t7, $s6
la $s0, au
sw $t6, 0($s0)
la $t6, d
lw $t1, 0($t6)
add $t7, $t7, $t1
la $s0, i
sw $t4, 0($s0)
move $t4, $t7
la $s0, av
sw $s3, 0($s0)
la $s3, c
lw $t2, 0($s3)
add $t4, $t4, $t2
li $v0, 1
move $a0, $t4
syscall
