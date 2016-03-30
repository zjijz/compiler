.data
n:	.word	0	# n in original
aj:	.word	0	# temp_p in original
u:	.word	0	# u in original
a:	.word	0	# a in original
ab:	.word	0	# temp_x in original
ag:	.word	0	# temp_s in original
d:	.word	0	# d in original
ah:	.word	0	# temp_r in original
o:	.word	0	# o in original
p:	.word	0	# p in original
s:	.word	0	# s in original
ai:	.word	0	# temp_q in original
m:	.word	0	# m in original
al:	.word	0	# temp_n in original
r:	.word	0	# r in original
ae:	.word	0	# temp_u in original
t:	.word	0	# t in original
g:	.word	0	# g in original
j:	.word	0	# j in original
an:	.word	0	# temp_l in original
h:	.word	0	# h in original
at:	.word	0	# temp_f in original
w:	.word	0	# w in original
aa:	.word	0	# temp_y in original
ao:	.word	0	# temp_k in original
l:	.word	0	# l in original
as:	.word	0	# temp_g in original
ap:	.word	0	# temp_j in original
am:	.word	0	# temp_m in original
ad:	.word	0	# temp_v in original
i:	.word	0	# i in original
z:	.word	0	# z in original
ac:	.word	0	# temp_w in original
v:	.word	0	# v in original
ak:	.word	0	# temp_o in original
y:	.word	0	# y in original
f:	.word	0	# f in original
aq:	.word	0	# temp_i in original
b:	.word	0	# b in original
q:	.word	0	# q in original
k:	.word	0	# k in original
ar:	.word	0	# temp_h in original
x:	.word	0	# x in original
c:	.word	0	# c in original
e:	.word	0	# e in original
af:	.word	0	# temp_t in original
.text
li $v0, 5
syscall
la $s1, a
lw $t1, 0($s1)
move $t1, $v0
li $v0, 5
syscall
la $t4, b
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
la $s5, c
lw $t9, 0($s5)
move $t9, $v0
li $v0, 5
syscall
la $t3, d
lw $s4, 0($t3)
move $s4, $v0
li $v0, 5
syscall
la $t7, e
lw $s6, 0($t7)
move $s6, $v0
li $v0, 5
syscall
la $t6, f
lw $s3, 0($t6)
move $s3, $v0
li $v0, 5
syscall
la $t8, g
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $t0, h
lw $s2, 0($t0)
move $s2, $v0
li $v0, 5
syscall
la $s0, a
sw $t1, 0($s0)
la $t1, i
lw $s1, 0($t1)
move $s1, $v0
li $v0, 5
syscall
la $s0, b
sw $t2, 0($s0)
la $t2, j
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $s0, c
sw $t9, 0($s0)
la $t9, k
lw $s5, 0($t9)
move $s5, $v0
li $v0, 5
syscall
la $s0, d
sw $s4, 0($s0)
la $s4, l
lw $t3, 0($s4)
move $t3, $v0
li $v0, 5
syscall
la $s0, e
sw $s6, 0($s0)
la $s6, m
lw $t7, 0($s6)
move $t7, $v0
li $v0, 5
syscall
la $s0, f
sw $s3, 0($s0)
la $s3, n
lw $t6, 0($s3)
move $t6, $v0
li $v0, 5
syscall
la $s0, g
sw $t5, 0($s0)
la $t5, o
lw $t8, 0($t5)
move $t8, $v0
li $v0, 5
syscall
la $s0, h
sw $s2, 0($s0)
la $s2, p
lw $t0, 0($s2)
move $t0, $v0
li $v0, 5
syscall
la $s0, i
sw $s1, 0($s0)
la $s1, q
lw $t1, 0($s1)
move $t1, $v0
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
lw $t9, 0($s5)
move $t9, $v0
li $v0, 5
syscall
la $s0, l
sw $t3, 0($s0)
la $t3, t
lw $s4, 0($t3)
move $s4, $v0
li $v0, 5
syscall
la $s0, m
sw $t7, 0($s0)
la $t7, u
lw $s6, 0($t7)
move $s6, $v0
li $v0, 5
syscall
la $s0, n
sw $t6, 0($s0)
la $t6, v
lw $s3, 0($t6)
move $s3, $v0
li $v0, 5
syscall
la $s0, o
sw $t8, 0($s0)
la $t8, w
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $s0, p
sw $t0, 0($s0)
la $t0, x
lw $s2, 0($t0)
move $s2, $v0
li $v0, 5
syscall
la $s0, q
sw $t1, 0($s0)
la $t1, y
lw $s1, 0($t1)
move $s1, $v0
li $v0, 5
syscall
la $s0, r
sw $t2, 0($s0)
la $t2, z
lw $t4, 0($t2)
move $t4, $v0
move $s5, $t4
add $s5, $s5, $s1
la $s0, s
sw $t9, 0($s0)
move $t9, $s5
add $t9, $t9, $s2
move $t3, $t9
add $t3, $t3, $t5
la $s0, t
sw $s4, 0($s0)
move $s4, $t3
add $s4, $s4, $s3
move $t7, $s4
add $t7, $t7, $s6
la $s0, u
sw $s6, 0($s0)
move $s6, $t7
la $s0, v
sw $s3, 0($s0)
la $t6, t
lw $s3, 0($t6)
add $s6, $s6, $s3
move $t8, $s6
la $s0, w
sw $t5, 0($s0)
la $t5, s
lw $t0, 0($t5)
add $t8, $t8, $t0
la $s0, x
sw $s2, 0($s0)
move $s2, $t8
la $s0, y
sw $s1, 0($s0)
la $t1, r
lw $s1, 0($t1)
add $s2, $s2, $s1
move $t2, $s2
la $s0, z
sw $t4, 0($s0)
la $s0, aa
sw $s5, 0($s0)
la $t4, q
lw $s5, 0($t4)
add $t2, $t2, $s5
la $s0, ab
sw $t9, 0($s0)
move $t9, $t2
la $s0, ac
sw $t3, 0($s0)
la $s0, ad
sw $s4, 0($s0)
la $t3, p
lw $s4, 0($t3)
add $t9, $t9, $s4
la $s0, ae
sw $t7, 0($s0)
move $t7, $t9
la $s0, af
sw $s6, 0($s0)
la $s6, o
lw $t6, 0($s6)
add $t7, $t7, $t6
la $s0, t
sw $s3, 0($s0)
move $s3, $t7
la $s0, ag
sw $t8, 0($s0)
la $t8, n
lw $t5, 0($t8)
add $s3, $s3, $t5
la $s0, s
sw $t0, 0($s0)
move $t0, $s3
la $s0, ah
sw $s2, 0($s0)
la $s2, m
lw $t1, 0($s2)
add $t0, $t0, $t1
la $s0, r
sw $s1, 0($s0)
move $s1, $t0
la $s0, ai
sw $t2, 0($s0)
la $t2, l
lw $t4, 0($t2)
add $s1, $s1, $t4
la $s0, q
sw $s5, 0($s0)
move $s5, $s1
la $s0, aj
sw $t9, 0($s0)
la $t9, k
lw $t3, 0($t9)
add $s5, $s5, $t3
la $s0, p
sw $s4, 0($s0)
move $s4, $s5
la $s0, ak
sw $t7, 0($s0)
la $t7, j
lw $s6, 0($t7)
add $s4, $s4, $s6
la $s0, o
sw $t6, 0($s0)
move $t6, $s4
la $s0, al
sw $s3, 0($s0)
la $s3, i
lw $t8, 0($s3)
add $t6, $t6, $t8
la $s0, n
sw $t5, 0($s0)
move $t5, $t6
la $s0, am
sw $t0, 0($s0)
la $t0, h
lw $s2, 0($t0)
add $t5, $t5, $s2
la $s0, m
sw $t1, 0($s0)
move $t1, $t5
la $s0, an
sw $s1, 0($s0)
la $s1, g
lw $t2, 0($s1)
add $t1, $t1, $t2
la $s0, l
sw $t4, 0($s0)
move $t4, $t1
la $s0, ao
sw $s5, 0($s0)
la $s5, f
lw $t9, 0($s5)
add $t4, $t4, $t9
la $s0, k
sw $t3, 0($s0)
move $t3, $t4
la $s0, ap
sw $s4, 0($s0)
la $s4, e
lw $t7, 0($s4)
add $t3, $t3, $t7
la $s0, j
sw $s6, 0($s0)
move $s6, $t3
la $s0, aq
sw $t6, 0($s0)
la $t6, d
lw $s3, 0($t6)
add $s6, $s6, $s3
la $s0, i
sw $t8, 0($s0)
move $t8, $s6
la $s0, ar
sw $t5, 0($s0)
la $t5, c
lw $t0, 0($t5)
add $t8, $t8, $t0
la $s0, h
sw $s2, 0($s0)
move $s2, $t8
la $s0, as
sw $t1, 0($s0)
la $t1, b
lw $s1, 0($t1)
add $s2, $s2, $s1
la $s0, g
sw $t2, 0($s0)
move $t2, $s2
la $s0, at
sw $t4, 0($s0)
la $t4, a
lw $s5, 0($t4)
add $t2, $t2, $s5
li $v0, 1
move $a0, $t2
syscall
