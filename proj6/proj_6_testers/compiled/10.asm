.data
am:	.word	0	# temp_o in original
e:	.word	0	# c in original
t:	.word	0	# r in original
d:	.word	0	# b in original
m:	.word	0	# k in original
aq:	.word	0	# temp_k in original
al:	.word	0	# temp_p in original
g:	.word	0	# e in original
as:	.word	0	# temp_i in original
ae:	.word	0	# temp_w in original
ab:	.word	0	# z in original
an:	.word	0	# temp_n in original
f:	.word	0	# d in original
i:	.word	0	# g in original
j:	.word	0	# h in original
u:	.word	0	# s in original
aa:	.word	0	# y in original
ak:	.word	0	# temp_q in original
ac:	.word	0	# temp_y in original
c:	.word	0	# a in original
ap:	.word	0	# temp_l in original
ar:	.word	0	# temp_j in original
ad:	.word	0	# temp_x in original
aj:	.word	0	# temp_r in original
af:	.word	0	# temp_v in original
r:	.word	0	# p in original
ah:	.word	0	# temp_t in original
x:	.word	0	# v in original
k:	.word	0	# i in original
p:	.word	0	# n in original
o:	.word	0	# m in original
w:	.word	0	# u in original
l:	.word	0	# j in original
q:	.word	0	# o in original
ag:	.word	0	# temp_u in original
ao:	.word	0	# temp_m in original
ai:	.word	0	# temp_s in original
h:	.word	0	# f in original
at:	.word	0	# temp_h in original
z:	.word	0	# x in original
av:	.word	0	# temp_f in original
au:	.word	0	# temp_g in original
y:	.word	0	# w in original
s:	.word	0	# q in original
v:	.word	0	# t in original
n:	.word	0	# l in original
.text
li $v0, 5
syscall
la $t5, c
lw $t8, 0($t5)
move $t8, $v0
li $v0, 5
syscall
la $s3, d
lw $t7, 0($s3)
move $t7, $v0
li $v0, 5
syscall
la $t4, e
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $t2, f
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $t6, g
lw $s5, 0($t6)
move $s5, $v0
li $v0, 5
syscall
la $s4, h
lw $t9, 0($s4)
move $t9, $v0
li $v0, 5
syscall
la $s1, i
lw $s6, 0($s1)
move $s6, $v0
li $v0, 5
syscall
la $t0, j
lw $s2, 0($t0)
move $s2, $v0
li $v0, 5
syscall
la $s0, c
sw $t8, 0($s0)
la $t8, k
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $s0, d
sw $t7, 0($s0)
la $t7, l
lw $s3, 0($t7)
move $s3, $v0
li $v0, 5
syscall
la $s0, e
sw $t3, 0($s0)
la $t3, m
lw $t4, 0($t3)
move $t4, $v0
li $v0, 5
syscall
la $s0, f
sw $t1, 0($s0)
la $t1, n
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $s0, g
sw $s5, 0($s0)
la $s5, o
lw $t6, 0($s5)
move $t6, $v0
li $v0, 5
syscall
la $s0, h
sw $t9, 0($s0)
la $t9, p
lw $s4, 0($t9)
move $s4, $v0
li $v0, 5
syscall
la $s0, i
sw $s6, 0($s0)
la $s6, q
lw $s1, 0($s6)
move $s1, $v0
li $v0, 5
syscall
la $s0, j
sw $s2, 0($s0)
la $s2, r
lw $t0, 0($s2)
move $t0, $v0
li $v0, 5
syscall
la $s0, k
sw $t5, 0($s0)
la $t5, s
lw $t8, 0($t5)
move $t8, $v0
li $v0, 5
syscall
la $s0, l
sw $s3, 0($s0)
la $s3, t
lw $t7, 0($s3)
move $t7, $v0
li $v0, 5
syscall
la $s0, m
sw $t4, 0($s0)
la $t4, u
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $s0, n
sw $t2, 0($s0)
la $t2, v
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $s0, o
sw $t6, 0($s0)
la $t6, w
lw $s5, 0($t6)
move $s5, $v0
li $v0, 5
syscall
la $s0, p
sw $s4, 0($s0)
la $s4, x
lw $t9, 0($s4)
move $t9, $v0
li $v0, 5
syscall
la $s0, q
sw $s1, 0($s0)
la $s1, y
lw $s6, 0($s1)
move $s6, $v0
li $v0, 5
syscall
la $s0, r
sw $t0, 0($s0)
la $t0, z
lw $s2, 0($t0)
move $s2, $v0
li $v0, 5
syscall
la $s0, s
sw $t8, 0($s0)
la $t8, aa
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $s0, t
sw $t7, 0($s0)
la $t7, ab
lw $s3, 0($t7)
move $s3, $v0
move $t4, $s3
add $t4, $t4, $t5
la $s0, u
sw $t3, 0($s0)
move $t3, $t4
add $t3, $t3, $s2
move $t2, $t3
add $t2, $t2, $s6
la $s0, v
sw $t1, 0($s0)
move $t1, $t2
add $t1, $t1, $t9
move $t6, $t1
add $t6, $t6, $s5
la $s0, w
sw $s5, 0($s0)
move $s5, $t6
la $s0, x
sw $t9, 0($s0)
la $s4, v
lw $t9, 0($s4)
add $s5, $s5, $t9
move $s1, $s5
la $s0, y
sw $s6, 0($s0)
la $s6, u
lw $t0, 0($s6)
add $s1, $s1, $t0
la $s0, z
sw $s2, 0($s0)
move $s2, $s1
la $s0, aa
sw $t5, 0($s0)
la $t8, t
lw $t5, 0($t8)
add $s2, $s2, $t5
move $t7, $s2
la $s0, ab
sw $s3, 0($s0)
la $s0, ac
sw $t4, 0($s0)
la $s3, s
lw $t4, 0($s3)
add $t7, $t7, $t4
la $s0, ad
sw $t3, 0($s0)
move $t3, $t7
la $s0, ae
sw $t2, 0($s0)
la $s0, af
sw $t1, 0($s0)
la $t2, r
lw $t1, 0($t2)
add $t3, $t3, $t1
la $s0, ag
sw $t6, 0($s0)
move $t6, $t3
la $s0, ah
sw $s5, 0($s0)
la $s5, q
lw $s4, 0($s5)
add $t6, $t6, $s4
la $s0, v
sw $t9, 0($s0)
move $t9, $t6
la $s0, ai
sw $s1, 0($s0)
la $s1, p
lw $s6, 0($s1)
add $t9, $t9, $s6
la $s0, u
sw $t0, 0($s0)
move $t0, $t9
la $s0, aj
sw $s2, 0($s0)
la $s2, o
lw $t8, 0($s2)
add $t0, $t0, $t8
la $s0, t
sw $t5, 0($s0)
move $t5, $t0
la $s0, ak
sw $t7, 0($s0)
la $t7, n
lw $s3, 0($t7)
add $t5, $t5, $s3
la $s0, s
sw $t4, 0($s0)
move $t4, $t5
la $s0, al
sw $t3, 0($s0)
la $t3, m
lw $t2, 0($t3)
add $t4, $t4, $t2
la $s0, r
sw $t1, 0($s0)
move $t1, $t4
la $s0, am
sw $t6, 0($s0)
la $t6, l
lw $s5, 0($t6)
add $t1, $t1, $s5
la $s0, q
sw $s4, 0($s0)
move $s4, $t1
la $s0, an
sw $t9, 0($s0)
la $t9, k
lw $s1, 0($t9)
add $s4, $s4, $s1
la $s0, p
sw $s6, 0($s0)
move $s6, $s4
la $s0, ao
sw $t0, 0($s0)
la $t0, j
lw $s2, 0($t0)
add $s6, $s6, $s2
la $s0, o
sw $t8, 0($s0)
move $t8, $s6
la $s0, ap
sw $t5, 0($s0)
la $t5, i
lw $t7, 0($t5)
add $t8, $t8, $t7
la $s0, n
sw $s3, 0($s0)
move $s3, $t8
la $s0, aq
sw $t4, 0($s0)
la $t4, h
lw $t3, 0($t4)
add $s3, $s3, $t3
la $s0, m
sw $t2, 0($s0)
move $t2, $s3
la $s0, ar
sw $t1, 0($s0)
la $t1, g
lw $t6, 0($t1)
add $t2, $t2, $t6
la $s0, l
sw $s5, 0($s0)
move $s5, $t2
la $s0, as
sw $s4, 0($s0)
la $s4, f
lw $t9, 0($s4)
add $s5, $s5, $t9
la $s0, k
sw $s1, 0($s0)
move $s1, $s5
la $s0, at
sw $s6, 0($s0)
la $s6, e
lw $t0, 0($s6)
add $s1, $s1, $t0
la $s0, j
sw $s2, 0($s0)
move $s2, $s1
la $s0, au
sw $t8, 0($s0)
la $t8, d
lw $t5, 0($t8)
add $s2, $s2, $t5
la $s0, i
sw $t7, 0($s0)
move $t7, $s2
la $s0, av
sw $s3, 0($s0)
la $s3, c
lw $t4, 0($s3)
add $t7, $t7, $t4
li $v0, 1
move $a0, $t7
syscall
