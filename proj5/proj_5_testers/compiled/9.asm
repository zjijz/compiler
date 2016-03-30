.data
d:	.word	0	# d in original
t:	.word	0	# t in original
q:	.word	0	# q in original
y:	.word	0	# y in original
x:	.word	0	# x in original
l:	.word	0	# l in original
v:	.word	0	# v in original
e:	.word	0	# e in original
s:	.word	0	# s in original
m:	.word	0	# m in original
h:	.word	0	# h in original
c:	.word	0	# c in original
f:	.word	0	# f in original
n:	.word	0	# n in original
r:	.word	0	# r in original
z:	.word	0	# z in original
w:	.word	0	# w in original
j:	.word	0	# j in original
b:	.word	0	# b in original
p:	.word	0	# p in original
g:	.word	0	# g in original
i:	.word	0	# i in original
k:	.word	0	# k in original
o:	.word	0	# o in original
u:	.word	0	# u in original
a:	.word	0	# a in original
.text
li $v0, 5
syscall
la $t8, a
lw $t7, 0($t8)
move $t7, $v0
li $v0, 5
syscall
la $t5, b
lw $s2, 0($t5)
move $s2, $v0
li $v0, 5
syscall
la $s5, c
lw $t2, 0($s5)
move $t2, $v0
li $v0, 5
syscall
la $t9, d
lw $s4, 0($t9)
move $s4, $v0
li $v0, 5
syscall
la $s6, e
lw $t1, 0($s6)
move $t1, $v0
li $v0, 5
syscall
la $t0, f
lw $t4, 0($t0)
move $t4, $v0
li $v0, 5
syscall
la $t6, g
lw $s1, 0($t6)
move $s1, $v0
li $v0, 5
syscall
la $s3, h
lw $t3, 0($s3)
move $t3, $v0
li $v0, 5
syscall
la $s0, a
sw $t7, 0($s0)
la $t7, i
lw $t8, 0($t7)
move $t8, $v0
li $v0, 5
syscall
la $s0, b
sw $s2, 0($s0)
la $s2, j
lw $t5, 0($s2)
move $t5, $v0
li $v0, 5
syscall
la $s0, c
sw $t2, 0($s0)
la $t2, k
lw $s5, 0($t2)
move $s5, $v0
li $v0, 5
syscall
la $s0, d
sw $s4, 0($s0)
la $s4, l
lw $t9, 0($s4)
move $t9, $v0
li $v0, 5
syscall
la $s0, e
sw $t1, 0($s0)
la $t1, m
lw $s6, 0($t1)
move $s6, $v0
li $v0, 5
syscall
la $s0, f
sw $t4, 0($s0)
la $t4, n
lw $t0, 0($t4)
move $t0, $v0
li $v0, 5
syscall
la $s0, g
sw $s1, 0($s0)
la $s1, o
lw $t6, 0($s1)
move $t6, $v0
li $v0, 5
syscall
la $s0, h
sw $t3, 0($s0)
la $t3, p
lw $s3, 0($t3)
move $s3, $v0
li $v0, 5
syscall
la $s0, i
sw $t8, 0($s0)
la $t8, q
lw $t7, 0($t8)
move $t7, $v0
li $v0, 5
syscall
la $s0, j
sw $t5, 0($s0)
la $t5, r
lw $s2, 0($t5)
move $s2, $v0
li $v0, 5
syscall
la $s0, k
sw $s5, 0($s0)
la $s5, s
lw $t2, 0($s5)
move $t2, $v0
li $v0, 5
syscall
la $s0, l
sw $t9, 0($s0)
la $t9, t
lw $s4, 0($t9)
move $s4, $v0
li $v0, 5
syscall
la $s0, m
sw $s6, 0($s0)
la $s6, u
lw $t1, 0($s6)
move $t1, $v0
li $v0, 5
syscall
la $s0, n
sw $t0, 0($s0)
la $t0, v
lw $t4, 0($t0)
move $t4, $v0
li $v0, 5
syscall
la $s0, o
sw $t6, 0($s0)
la $t6, w
lw $s1, 0($t6)
move $s1, $v0
li $v0, 5
syscall
la $s0, p
sw $s3, 0($s0)
la $s3, x
lw $t3, 0($s3)
move $t3, $v0
li $v0, 5
syscall
la $s0, q
sw $t7, 0($s0)
la $t7, y
lw $t8, 0($t7)
move $t8, $v0
li $v0, 5
syscall
la $s0, r
sw $s2, 0($s0)
la $s2, z
lw $t5, 0($s2)
move $t5, $v0
la $s0, s
sw $t2, 0($s0)
la $s5, a
lw $t2, 0($s5)
li $v0, 1
move $a0, $t2
syscall
la $s0, t
sw $s4, 0($s0)
la $t9, b
lw $s4, 0($t9)
move $a0, $s4
syscall
la $s0, u
sw $t1, 0($s0)
la $s6, c
lw $t1, 0($s6)
move $a0, $t1
syscall
la $s0, v
sw $t4, 0($s0)
la $t0, d
lw $t4, 0($t0)
move $a0, $t4
syscall
la $s0, w
sw $s1, 0($s0)
la $t6, e
lw $s1, 0($t6)
move $a0, $s1
syscall
la $s0, x
sw $t3, 0($s0)
la $s3, f
lw $t3, 0($s3)
move $a0, $t3
syscall
la $s0, y
sw $t8, 0($s0)
la $t7, g
lw $t8, 0($t7)
move $a0, $t8
syscall
la $s0, z
sw $t5, 0($s0)
la $s2, h
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, a
sw $t2, 0($s0)
la $s5, i
lw $t2, 0($s5)
move $a0, $t2
syscall
la $s0, b
sw $s4, 0($s0)
la $t9, j
lw $s4, 0($t9)
move $a0, $s4
syscall
la $s0, c
sw $t1, 0($s0)
la $s6, k
lw $t1, 0($s6)
move $a0, $t1
syscall
la $s0, d
sw $t4, 0($s0)
la $t0, l
lw $t4, 0($t0)
move $a0, $t4
syscall
la $s0, e
sw $s1, 0($s0)
la $t6, m
lw $s1, 0($t6)
move $a0, $s1
syscall
la $s0, f
sw $t3, 0($s0)
la $s3, n
lw $t3, 0($s3)
move $a0, $t3
syscall
la $s0, g
sw $t8, 0($s0)
la $t7, o
lw $t8, 0($t7)
move $a0, $t8
syscall
la $s0, h
sw $t5, 0($s0)
la $s2, p
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, i
sw $t2, 0($s0)
la $s5, q
lw $t2, 0($s5)
move $a0, $t2
syscall
la $s0, j
sw $s4, 0($s0)
la $t9, r
lw $s4, 0($t9)
move $a0, $s4
syscall
la $s0, k
sw $t1, 0($s0)
la $s6, s
lw $t1, 0($s6)
move $a0, $t1
syscall
la $s0, l
sw $t4, 0($s0)
la $t0, t
lw $t4, 0($t0)
move $a0, $t4
syscall
la $s0, m
sw $s1, 0($s0)
la $t6, u
lw $s1, 0($t6)
move $a0, $s1
syscall
la $s0, n
sw $t3, 0($s0)
la $s3, v
lw $t3, 0($s3)
move $a0, $t3
syscall
la $s0, o
sw $t8, 0($s0)
la $t7, w
lw $t8, 0($t7)
move $a0, $t8
syscall
la $s0, p
sw $t5, 0($s0)
la $s2, x
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, q
sw $t2, 0($s0)
la $s5, y
lw $t2, 0($s5)
move $a0, $t2
syscall
la $s0, r
sw $s4, 0($s0)
la $t9, z
lw $s4, 0($t9)
move $a0, $s4
syscall
