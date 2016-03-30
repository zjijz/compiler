.data
r:	.word	0	# r in original
y:	.word	0	# y in original
ah:	.word	0	# temp_r in original
j:	.word	0	# j in original
t:	.word	0	# t in original
h:	.word	0	# h in original
an:	.word	0	# temp_l in original
m:	.word	0	# m in original
k:	.word	0	# k in original
l:	.word	0	# l in original
c:	.word	0	# c in original
aj:	.word	0	# temp_p in original
f:	.word	0	# f in original
aa:	.word	0	# temp_y in original
b:	.word	0	# b in original
al:	.word	0	# temp_n in original
at:	.word	0	# temp_f in original
p:	.word	0	# p in original
ae:	.word	0	# temp_u in original
ai:	.word	0	# temp_q in original
n:	.word	0	# n in original
aq:	.word	0	# temp_i in original
ab:	.word	0	# temp_x in original
s:	.word	0	# s in original
o:	.word	0	# o in original
w:	.word	0	# w in original
ao:	.word	0	# temp_k in original
e:	.word	0	# e in original
i:	.word	0	# i in original
ag:	.word	0	# temp_s in original
af:	.word	0	# temp_t in original
v:	.word	0	# v in original
u:	.word	0	# u in original
x:	.word	0	# x in original
q:	.word	0	# q in original
ar:	.word	0	# temp_h in original
am:	.word	0	# temp_m in original
a:	.word	0	# a in original
ad:	.word	0	# temp_v in original
g:	.word	0	# g in original
ap:	.word	0	# temp_j in original
ac:	.word	0	# temp_w in original
z:	.word	0	# z in original
d:	.word	0	# d in original
as:	.word	0	# temp_g in original
ak:	.word	0	# temp_o in original
.text
li $v0, 5
syscall
la $t3, a
lw $t9, 0($t3)
move $t9, $v0
li $v0, 5
syscall
la $s2, b
lw $t6, 0($s2)
move $t6, $v0
li $v0, 5
syscall
la $t7, c
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $t8, d
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $t1, e
lw $t0, 0($t1)
move $t0, $v0
li $v0, 5
syscall
la $s3, f
lw $s6, 0($s3)
move $s6, $v0
li $v0, 5
syscall
la $t4, g
lw $s5, 0($t4)
move $s5, $v0
li $v0, 5
syscall
la $s1, h
lw $s4, 0($s1)
move $s4, $v0
li $v0, 5
syscall
la $s0, a
sw $t9, 0($s0)
la $t9, i
lw $t3, 0($t9)
move $t3, $v0
li $v0, 5
syscall
la $s0, b
sw $t6, 0($s0)
la $t6, j
lw $s2, 0($t6)
move $s2, $v0
li $v0, 5
syscall
la $s0, c
sw $t2, 0($s0)
la $t2, k
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s0, d
sw $t5, 0($s0)
la $t5, l
lw $t8, 0($t5)
move $t8, $v0
li $v0, 5
syscall
la $s0, e
sw $t0, 0($s0)
la $t0, m
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
la $s0, f
sw $s6, 0($s0)
la $s6, n
lw $s3, 0($s6)
move $s3, $v0
li $v0, 5
syscall
la $s0, g
sw $s5, 0($s0)
la $s5, o
lw $t4, 0($s5)
move $t4, $v0
li $v0, 5
syscall
la $s0, h
sw $s4, 0($s0)
la $s4, p
lw $s1, 0($s4)
move $s1, $v0
li $v0, 5
syscall
la $s0, i
sw $t3, 0($s0)
la $t3, q
lw $t9, 0($t3)
move $t9, $v0
li $v0, 5
syscall
la $s0, j
sw $s2, 0($s0)
la $s2, r
lw $t6, 0($s2)
move $t6, $v0
li $v0, 5
syscall
la $s0, k
sw $t7, 0($s0)
la $t7, s
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $s0, l
sw $t8, 0($s0)
la $t8, t
lw $t5, 0($t8)
move $t5, $v0
li $v0, 5
syscall
la $s0, m
sw $t1, 0($s0)
la $t1, u
lw $t0, 0($t1)
move $t0, $v0
li $v0, 5
syscall
la $s0, n
sw $s3, 0($s0)
la $s3, v
lw $s6, 0($s3)
move $s6, $v0
li $v0, 5
syscall
la $s0, o
sw $t4, 0($s0)
la $t4, w
lw $s5, 0($t4)
move $s5, $v0
li $v0, 5
syscall
la $s0, p
sw $s1, 0($s0)
la $s1, x
lw $s4, 0($s1)
move $s4, $v0
li $v0, 5
syscall
la $s0, q
sw $t9, 0($s0)
la $t9, y
lw $t3, 0($t9)
move $t3, $v0
li $v0, 5
syscall
la $s0, r
sw $t6, 0($s0)
la $t6, z
lw $s2, 0($t6)
move $s2, $v0
move $t7, $s2
add $t7, $t7, $t3
la $s0, s
sw $t2, 0($s0)
move $t2, $t7
add $t2, $t2, $s4
move $t8, $t2
add $t8, $t8, $s5
la $s0, t
sw $t5, 0($s0)
move $t5, $t8
add $t5, $t5, $s6
move $t1, $t5
add $t1, $t1, $t0
la $s0, u
sw $t0, 0($s0)
move $t0, $t1
la $s0, v
sw $s6, 0($s0)
la $s3, t
lw $s6, 0($s3)
add $t0, $t0, $s6
move $t4, $t0
la $s0, w
sw $s5, 0($s0)
la $s5, s
lw $s1, 0($s5)
add $t4, $t4, $s1
la $s0, x
sw $s4, 0($s0)
move $s4, $t4
la $s0, y
sw $t3, 0($s0)
la $t9, r
lw $t3, 0($t9)
add $s4, $s4, $t3
move $t6, $s4
la $s0, z
sw $s2, 0($s0)
la $s0, aa
sw $t7, 0($s0)
la $s2, q
lw $t7, 0($s2)
add $t6, $t6, $t7
la $s0, ab
sw $t2, 0($s0)
move $t2, $t6
la $s0, ac
sw $t8, 0($s0)
la $s0, ad
sw $t5, 0($s0)
la $t8, p
lw $t5, 0($t8)
add $t2, $t2, $t5
la $s0, ae
sw $t1, 0($s0)
move $t1, $t2
la $s0, af
sw $t0, 0($s0)
la $t0, o
lw $s3, 0($t0)
add $t1, $t1, $s3
la $s0, t
sw $s6, 0($s0)
move $s6, $t1
la $s0, ag
sw $t4, 0($s0)
la $t4, n
lw $s5, 0($t4)
add $s6, $s6, $s5
la $s0, s
sw $s1, 0($s0)
move $s1, $s6
la $s0, ah
sw $s4, 0($s0)
la $s4, m
lw $t9, 0($s4)
add $s1, $s1, $t9
la $s0, r
sw $t3, 0($s0)
move $t3, $s1
la $s0, ai
sw $t6, 0($s0)
la $t6, l
lw $s2, 0($t6)
add $t3, $t3, $s2
la $s0, q
sw $t7, 0($s0)
move $t7, $t3
la $s0, aj
sw $t2, 0($s0)
la $t2, k
lw $t8, 0($t2)
add $t7, $t7, $t8
la $s0, p
sw $t5, 0($s0)
move $t5, $t7
la $s0, ak
sw $t1, 0($s0)
la $t1, j
lw $t0, 0($t1)
add $t5, $t5, $t0
la $s0, o
sw $s3, 0($s0)
move $s3, $t5
la $s0, al
sw $s6, 0($s0)
la $s6, i
lw $t4, 0($s6)
add $s3, $s3, $t4
la $s0, n
sw $s5, 0($s0)
move $s5, $s3
la $s0, am
sw $s1, 0($s0)
la $s1, h
lw $s4, 0($s1)
add $s5, $s5, $s4
la $s0, m
sw $t9, 0($s0)
move $t9, $s5
la $s0, an
sw $t3, 0($s0)
la $t3, g
lw $t6, 0($t3)
add $t9, $t9, $t6
la $s0, l
sw $s2, 0($s0)
move $s2, $t9
la $s0, ao
sw $t7, 0($s0)
la $t7, f
lw $t2, 0($t7)
add $s2, $s2, $t2
la $s0, k
sw $t8, 0($s0)
move $t8, $s2
la $s0, ap
sw $t5, 0($s0)
la $t5, e
lw $t1, 0($t5)
add $t8, $t8, $t1
la $s0, j
sw $t0, 0($s0)
move $t0, $t8
la $s0, aq
sw $s3, 0($s0)
la $s3, d
lw $s6, 0($s3)
add $t0, $t0, $s6
la $s0, i
sw $t4, 0($s0)
move $t4, $t0
la $s0, ar
sw $s5, 0($s0)
la $s5, c
lw $s1, 0($s5)
add $t4, $t4, $s1
la $s0, h
sw $s4, 0($s0)
move $s4, $t4
la $s0, as
sw $t9, 0($s0)
la $t9, b
lw $t3, 0($t9)
add $s4, $s4, $t3
la $s0, g
sw $t6, 0($s0)
move $t6, $s4
la $s0, at
sw $s2, 0($s0)
la $s2, a
lw $t7, 0($s2)
add $t6, $t6, $t7
li $v0, 1
move $a0, $t6
syscall
