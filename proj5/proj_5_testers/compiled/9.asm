.data
b:	.word	0	# b in original
u:	.word	0	# u in original
y:	.word	0	# y in original
d:	.word	0	# d in original
w:	.word	0	# w in original
a:	.word	0	# a in original
r:	.word	0	# r in original
m:	.word	0	# m in original
g:	.word	0	# g in original
p:	.word	0	# p in original
k:	.word	0	# k in original
h:	.word	0	# h in original
v:	.word	0	# v in original
s:	.word	0	# s in original
z:	.word	0	# z in original
e:	.word	0	# e in original
q:	.word	0	# q in original
c:	.word	0	# c in original
j:	.word	0	# j in original
x:	.word	0	# x in original
o:	.word	0	# o in original
f:	.word	0	# f in original
t:	.word	0	# t in original
i:	.word	0	# i in original
n:	.word	0	# n in original
l:	.word	0	# l in original
.text
li $v0, 5
syscall
la $s5, a
lw $t1, 0($s5)
move $t1, $v0
li $v0, 5
syscall
la $t4, b
lw $t0, 0($t4)
move $t0, $v0
li $v0, 5
syscall
la $s2, c
lw $t5, 0($s2)
move $t5, $v0
li $v0, 5
syscall
la $t3, d
lw $s6, 0($t3)
move $s6, $v0
li $v0, 5
syscall
la $t7, e
lw $s3, 0($t7)
move $s3, $v0
li $v0, 5
syscall
la $s4, f
lw $t2, 0($s4)
move $t2, $v0
li $v0, 5
syscall
la $t8, g
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $t6, h
lw $s1, 0($t6)
move $s1, $v0
li $v0, 5
syscall
la $s0, a
sw $t1, 0($s0)
la $t1, i
lw $s5, 0($t1)
move $s5, $v0
li $v0, 5
syscall
la $s0, b
sw $t0, 0($s0)
la $t0, j
lw $t4, 0($t0)
move $t4, $v0
li $v0, 5
syscall
la $s0, c
sw $t5, 0($s0)
la $t5, k
lw $s2, 0($t5)
move $s2, $v0
li $v0, 5
syscall
la $s0, d
sw $s6, 0($s0)
la $s6, l
lw $t3, 0($s6)
move $t3, $v0
li $v0, 5
syscall
la $s0, e
sw $s3, 0($s0)
la $s3, m
lw $t7, 0($s3)
move $t7, $v0
li $v0, 5
syscall
la $s0, f
sw $t2, 0($s0)
la $t2, n
lw $s4, 0($t2)
move $s4, $v0
li $v0, 5
syscall
la $s0, g
sw $t9, 0($s0)
la $t9, o
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s0, h
sw $s1, 0($s0)
la $s1, p
lw $t6, 0($s1)
move $t6, $v0
li $v0, 5
syscall
la $s0, i
sw $s5, 0($s0)
la $s5, q
lw $t1, 0($s5)
move $t1, $v0
li $v0, 5
syscall
la $s0, j
sw $t4, 0($s0)
la $t4, r
lw $t0, 0($t4)
move $t0, $v0
li $v0, 5
syscall
la $s0, k
sw $s2, 0($s0)
la $s2, s
lw $t5, 0($s2)
move $t5, $v0
li $v0, 5
syscall
la $s0, l
sw $t3, 0($s0)
la $t3, t
lw $s6, 0($t3)
move $s6, $v0
li $v0, 5
syscall
la $s0, m
sw $t7, 0($s0)
la $t7, u
lw $s3, 0($t7)
move $s3, $v0
li $v0, 5
syscall
la $s0, n
sw $s4, 0($s0)
la $s4, v
lw $t2, 0($s4)
move $t2, $v0
li $v0, 5
syscall
la $s0, o
sw $t8, 0($s0)
la $t8, w
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, p
sw $t6, 0($s0)
la $t6, x
lw $s1, 0($t6)
move $s1, $v0
li $v0, 5
syscall
la $s0, q
sw $t1, 0($s0)
la $t1, y
lw $s5, 0($t1)
move $s5, $v0
li $v0, 5
syscall
la $s0, r
sw $t0, 0($s0)
la $t0, z
lw $t4, 0($t0)
move $t4, $v0
la $s0, s
sw $t5, 0($s0)
la $s2, a
lw $t5, 0($s2)
li $v0, 1
move $a0, $t5
syscall
la $s0, t
sw $s6, 0($s0)
la $t3, b
lw $s6, 0($t3)
move $a0, $s6
syscall
la $s0, u
sw $s3, 0($s0)
la $t7, c
lw $s3, 0($t7)
move $a0, $s3
syscall
la $s0, v
sw $t2, 0($s0)
la $s4, d
lw $t2, 0($s4)
move $a0, $t2
syscall
la $s0, w
sw $t9, 0($s0)
la $t8, e
lw $t9, 0($t8)
move $a0, $t9
syscall
la $s0, x
sw $s1, 0($s0)
la $t6, f
lw $s1, 0($t6)
move $a0, $s1
syscall
la $s0, y
sw $s5, 0($s0)
la $t1, g
lw $s5, 0($t1)
move $a0, $s5
syscall
la $s0, z
sw $t4, 0($s0)
la $t0, h
lw $t4, 0($t0)
move $a0, $t4
syscall
la $s0, a
sw $t5, 0($s0)
la $s2, i
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, b
sw $s6, 0($s0)
la $t3, j
lw $s6, 0($t3)
move $a0, $s6
syscall
la $s0, c
sw $s3, 0($s0)
la $t7, k
lw $s3, 0($t7)
move $a0, $s3
syscall
la $s0, d
sw $t2, 0($s0)
la $s4, l
lw $t2, 0($s4)
move $a0, $t2
syscall
la $s0, e
sw $t9, 0($s0)
la $t8, m
lw $t9, 0($t8)
move $a0, $t9
syscall
la $s0, f
sw $s1, 0($s0)
la $t6, n
lw $s1, 0($t6)
move $a0, $s1
syscall
la $s0, g
sw $s5, 0($s0)
la $t1, o
lw $s5, 0($t1)
move $a0, $s5
syscall
la $s0, h
sw $t4, 0($s0)
la $t0, p
lw $t4, 0($t0)
move $a0, $t4
syscall
la $s0, i
sw $t5, 0($s0)
la $s2, q
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, j
sw $s6, 0($s0)
la $t3, r
lw $s6, 0($t3)
move $a0, $s6
syscall
la $s0, k
sw $s3, 0($s0)
la $t7, s
lw $s3, 0($t7)
move $a0, $s3
syscall
la $s0, l
sw $t2, 0($s0)
la $s4, t
lw $t2, 0($s4)
move $a0, $t2
syscall
la $s0, m
sw $t9, 0($s0)
la $t8, u
lw $t9, 0($t8)
move $a0, $t9
syscall
la $s0, n
sw $s1, 0($s0)
la $t6, v
lw $s1, 0($t6)
move $a0, $s1
syscall
la $s0, o
sw $s5, 0($s0)
la $t1, w
lw $s5, 0($t1)
move $a0, $s5
syscall
la $s0, p
sw $t4, 0($s0)
la $t0, x
lw $t4, 0($t0)
move $a0, $t4
syscall
la $s0, q
sw $t5, 0($s0)
la $s2, y
lw $t5, 0($s2)
move $a0, $t5
syscall
la $s0, r
sw $s6, 0($s0)
la $t3, z
lw $s6, 0($t3)
move $a0, $s6
syscall
