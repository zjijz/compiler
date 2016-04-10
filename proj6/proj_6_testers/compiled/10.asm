.data
at:	.word	0	# temp_h in original
ac:	.word	0	# temp_y in original
c:	.word	0	# a in original
w:	.word	0	# u in original
s:	.word	0	# q in original
y:	.word	0	# w in original
ao:	.word	0	# temp_m in original
am:	.word	0	# temp_o in original
aa:	.word	0	# y in original
au:	.word	0	# temp_g in original
h:	.word	0	# f in original
al:	.word	0	# temp_p in original
e:	.word	0	# c in original
ak:	.word	0	# temp_q in original
aq:	.word	0	# temp_k in original
ad:	.word	0	# temp_x in original
aj:	.word	0	# temp_r in original
x:	.word	0	# v in original
as:	.word	0	# temp_i in original
t:	.word	0	# r in original
ag:	.word	0	# temp_u in original
d:	.word	0	# b in original
ab:	.word	0	# z in original
i:	.word	0	# g in original
ai:	.word	0	# temp_s in original
n:	.word	0	# l in original
ah:	.word	0	# temp_t in original
l:	.word	0	# j in original
ar:	.word	0	# temp_j in original
k:	.word	0	# i in original
r:	.word	0	# p in original
m:	.word	0	# k in original
av:	.word	0	# temp_f in original
q:	.word	0	# o in original
u:	.word	0	# s in original
v:	.word	0	# t in original
f:	.word	0	# d in original
ae:	.word	0	# temp_w in original
o:	.word	0	# m in original
j:	.word	0	# h in original
p:	.word	0	# n in original
an:	.word	0	# temp_n in original
g:	.word	0	# e in original
af:	.word	0	# temp_v in original
ap:	.word	0	# temp_l in original
z:	.word	0	# x in original
.text
li $v0, 5
syscall
la $t2, c
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $t8, d
lw $s4, 0($t8)
move $s4, $v0
li $v0, 5
syscall
la $t5, e
lw $s5, 0($t5)
move $s5, $v0
li $v0, 5
syscall
la $t7, f
lw $s1, 0($t7)
move $s1, $v0
li $v0, 5
syscall
la $t4, g
lw $t6, 0($t4)
move $t6, $v0
li $v0, 5
syscall
la $t3, h
lw $t9, 0($t3)
move $t9, $v0
li $v0, 5
syscall
la $s3, i
lw $s2, 0($s3)
move $s2, $v0
li $v0, 5
syscall
la $s6, j
lw $t0, 0($s6)
move $t0, $v0
li $v0, 5
syscall
la $s0, c
sw $t1, 0($s0)
la $t1, k
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $s0, d
sw $s4, 0($s0)
la $s4, l
lw $t8, 0($s4)
move $t8, $v0
li $v0, 5
syscall
la $s0, e
sw $s5, 0($s0)
la $s5, m
lw $t5, 0($s5)
move $t5, $v0
li $v0, 5
syscall
la $s0, f
sw $s1, 0($s0)
la $s1, n
lw $t7, 0($s1)
move $t7, $v0
li $v0, 5
syscall
la $s0, g
sw $t6, 0($s0)
la $t6, o
lw $t4, 0($t6)
move $t4, $v0
li $v0, 5
syscall
la $s0, h
sw $t9, 0($s0)
la $t9, p
lw $t3, 0($t9)
move $t3, $v0
li $v0, 5
syscall
la $s0, i
sw $s2, 0($s0)
la $s2, q
lw $s3, 0($s2)
move $s3, $v0
li $v0, 5
syscall
la $s0, j
sw $t0, 0($s0)
la $t0, r
lw $s6, 0($t0)
move $s6, $v0
li $v0, 5
syscall
la $s0, k
sw $t2, 0($s0)
la $t2, s
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $s0, l
sw $t8, 0($s0)
la $t8, t
lw $s4, 0($t8)
move $s4, $v0
li $v0, 5
syscall
la $s0, m
sw $t5, 0($s0)
la $t5, u
lw $s5, 0($t5)
move $s5, $v0
li $v0, 5
syscall
la $s0, n
sw $t7, 0($s0)
la $t7, v
lw $s1, 0($t7)
move $s1, $v0
li $v0, 5
syscall
la $s0, o
sw $t4, 0($s0)
la $t4, w
lw $t6, 0($t4)
move $t6, $v0
li $v0, 5
syscall
la $s0, p
sw $t3, 0($s0)
la $t3, x
lw $t9, 0($t3)
move $t9, $v0
li $v0, 5
syscall
la $s0, q
sw $s3, 0($s0)
la $s3, y
lw $s2, 0($s3)
move $s2, $v0
li $v0, 5
syscall
la $s0, r
sw $s6, 0($s0)
la $s6, z
lw $t0, 0($s6)
move $t0, $v0
li $v0, 5
syscall
la $s0, s
sw $t1, 0($s0)
la $t1, aa
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $s0, t
sw $s4, 0($s0)
la $s4, ab
lw $t8, 0($s4)
move $t8, $v0
move $t5, $t8
add $t5, $t5, $t2
la $s0, u
sw $s5, 0($s0)
move $s5, $t5
add $s5, $s5, $t0
move $t7, $s5
add $t7, $t7, $s2
la $s0, v
sw $s1, 0($s0)
move $s1, $t7
add $s1, $s1, $t9
move $t4, $s1
add $t4, $t4, $t6
la $s0, w
sw $t6, 0($s0)
move $t6, $t4
la $s0, x
sw $t9, 0($s0)
la $t3, v
lw $t9, 0($t3)
add $t6, $t6, $t9
move $s3, $t6
la $s0, y
sw $s2, 0($s0)
la $s2, u
lw $s6, 0($s2)
add $s3, $s3, $s6
la $s0, z
sw $t0, 0($s0)
move $t0, $s3
la $s0, aa
sw $t2, 0($s0)
la $t1, t
lw $t2, 0($t1)
add $t0, $t0, $t2
move $s4, $t0
la $s0, ab
sw $t8, 0($s0)
la $s0, ac
sw $t5, 0($s0)
la $t8, s
lw $t5, 0($t8)
add $s4, $s4, $t5
la $s0, ad
sw $s5, 0($s0)
move $s5, $s4
la $s0, ae
sw $t7, 0($s0)
la $s0, af
sw $s1, 0($s0)
la $t7, r
lw $s1, 0($t7)
add $s5, $s5, $s1
la $s0, ag
sw $t4, 0($s0)
move $t4, $s5
la $s0, ah
sw $t6, 0($s0)
la $t6, q
lw $t3, 0($t6)
add $t4, $t4, $t3
la $s0, v
sw $t9, 0($s0)
move $t9, $t4
la $s0, ai
sw $s3, 0($s0)
la $s3, p
lw $s2, 0($s3)
add $t9, $t9, $s2
la $s0, u
sw $s6, 0($s0)
move $s6, $t9
la $s0, aj
sw $t0, 0($s0)
la $t0, o
lw $t1, 0($t0)
add $s6, $s6, $t1
la $s0, t
sw $t2, 0($s0)
move $t2, $s6
la $s0, ak
sw $s4, 0($s0)
la $s4, n
lw $t8, 0($s4)
add $t2, $t2, $t8
la $s0, s
sw $t5, 0($s0)
move $t5, $t2
la $s0, al
sw $s5, 0($s0)
la $s5, m
lw $t7, 0($s5)
add $t5, $t5, $t7
la $s0, r
sw $s1, 0($s0)
move $s1, $t5
la $s0, am
sw $t4, 0($s0)
la $t4, l
lw $t6, 0($t4)
add $s1, $s1, $t6
la $s0, q
sw $t3, 0($s0)
move $t3, $s1
la $s0, an
sw $t9, 0($s0)
la $t9, k
lw $s3, 0($t9)
add $t3, $t3, $s3
la $s0, p
sw $s2, 0($s0)
move $s2, $t3
la $s0, ao
sw $s6, 0($s0)
la $s6, j
lw $t0, 0($s6)
add $s2, $s2, $t0
la $s0, o
sw $t1, 0($s0)
move $t1, $s2
la $s0, ap
sw $t2, 0($s0)
la $t2, i
lw $s4, 0($t2)
add $t1, $t1, $s4
la $s0, n
sw $t8, 0($s0)
move $t8, $t1
la $s0, aq
sw $t5, 0($s0)
la $t5, h
lw $s5, 0($t5)
add $t8, $t8, $s5
la $s0, m
sw $t7, 0($s0)
move $t7, $t8
la $s0, ar
sw $s1, 0($s0)
la $s1, g
lw $t4, 0($s1)
add $t7, $t7, $t4
la $s0, l
sw $t6, 0($s0)
move $t6, $t7
la $s0, as
sw $t3, 0($s0)
la $t3, f
lw $t9, 0($t3)
add $t6, $t6, $t9
la $s0, k
sw $s3, 0($s0)
move $s3, $t6
la $s0, at
sw $s2, 0($s0)
la $s2, e
lw $s6, 0($s2)
add $s3, $s3, $s6
la $s0, j
sw $t0, 0($s0)
move $t0, $s3
la $s0, au
sw $t1, 0($s0)
la $t1, d
lw $t2, 0($t1)
add $t0, $t0, $t2
la $s0, i
sw $s4, 0($s0)
move $s4, $t0
la $s0, av
sw $t8, 0($s0)
la $t8, c
lw $t5, 0($t8)
add $s4, $s4, $t5
li $v0, 1
move $a0, $s4
syscall
