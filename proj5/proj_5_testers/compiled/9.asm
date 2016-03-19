.data
x:	.word	0	# x in original
o:	.word	0	# o in original
a:	.word	0	# a in original
b:	.word	0	# b in original
w:	.word	0	# w in original
e:	.word	0	# e in original
f:	.word	0	# f in original
k:	.word	0	# k in original
s:	.word	0	# s in original
q:	.word	0	# q in original
r:	.word	0	# r in original
y:	.word	0	# y in original
n:	.word	0	# n in original
u:	.word	0	# u in original
j:	.word	0	# j in original
d:	.word	0	# d in original
m:	.word	0	# m in original
l:	.word	0	# l in original
i:	.word	0	# i in original
h:	.word	0	# h in original
p:	.word	0	# p in original
t:	.word	0	# t in original
c:	.word	0	# c in original
g:	.word	0	# g in original
v:	.word	0	# v in original
z:	.word	0	# z in original
.text
li $v0, 5
syscall
la $t1, a
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $t9, b
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $t5, c
lw $t0, 0($t5)
move $t0, $v0
li $v0, 5
syscall
la $t6, d
lw $t7, 0($t6)
move $t7, $v0
li $v0, 5
syscall
la $t4, e
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $s0, a
sw $t2, 0($s0)
la $t2, f
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $s0, b
sw $t8, 0($s0)
la $t8, g
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, c
sw $t0, 0($s0)
la $t0, h
lw $t5, 0($t0)
move $t5, $v0
li $v0, 5
syscall
la $s0, d
sw $t7, 0($s0)
la $t7, i
lw $t6, 0($t7)
move $t6, $v0
li $v0, 5
syscall
la $s0, e
sw $t3, 0($s0)
la $t3, j
lw $t4, 0($t3)
move $t4, $v0
li $v0, 5
syscall
la $s0, f
sw $t1, 0($s0)
la $t1, k
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $s0, g
sw $t9, 0($s0)
la $t9, l
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s0, h
sw $t5, 0($s0)
la $t5, m
lw $t0, 0($t5)
move $t0, $v0
li $v0, 5
syscall
la $s0, i
sw $t6, 0($s0)
la $t6, n
lw $t7, 0($t6)
move $t7, $v0
li $v0, 5
syscall
la $s0, j
sw $t4, 0($s0)
la $t4, o
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $s0, k
sw $t2, 0($s0)
la $t2, p
lw $t1, 0($t2)
move $t1, $v0
li $v0, 5
syscall
la $s0, l
sw $t8, 0($s0)
la $t8, q
lw $t9, 0($t8)
move $t9, $v0
li $v0, 5
syscall
la $s0, m
sw $t0, 0($s0)
la $t0, r
lw $t5, 0($t0)
move $t5, $v0
li $v0, 5
syscall
la $s0, n
sw $t7, 0($s0)
la $t7, s
lw $t6, 0($t7)
move $t6, $v0
li $v0, 5
syscall
la $s0, o
sw $t3, 0($s0)
la $t3, t
lw $t4, 0($t3)
move $t4, $v0
li $v0, 5
syscall
la $s0, p
sw $t1, 0($s0)
la $t1, u
lw $t2, 0($t1)
move $t2, $v0
li $v0, 5
syscall
la $s0, q
sw $t9, 0($s0)
la $t9, v
lw $t8, 0($t9)
move $t8, $v0
li $v0, 5
syscall
la $s0, r
sw $t5, 0($s0)
la $t5, w
lw $t0, 0($t5)
move $t0, $v0
li $v0, 5
syscall
la $s0, s
sw $t6, 0($s0)
la $t6, x
lw $t7, 0($t6)
move $t7, $v0
li $v0, 5
syscall
la $s0, t
sw $t4, 0($s0)
la $t4, y
lw $t3, 0($t4)
move $t3, $v0
li $v0, 5
syscall
la $s0, u
sw $t2, 0($s0)
la $t2, z
lw $t1, 0($t2)
move $t1, $v0
la $s0, v
sw $t8, 0($s0)
la $t9, a
lw $t8, 0($t9)
li $v0, 1
move $a0, $t8
syscall
la $s0, w
sw $t0, 0($s0)
la $t5, b
lw $t0, 0($t5)
move $a0, $t0
syscall
la $s0, x
sw $t7, 0($s0)
la $t6, c
lw $t7, 0($t6)
move $a0, $t7
syscall
la $s0, y
sw $t3, 0($s0)
la $t4, d
lw $t3, 0($t4)
move $a0, $t3
syscall
la $s0, z
sw $t1, 0($s0)
la $t2, e
lw $t1, 0($t2)
move $a0, $t1
syscall
la $s0, a
sw $t8, 0($s0)
la $t9, f
lw $t8, 0($t9)
move $a0, $t8
syscall
la $s0, b
sw $t0, 0($s0)
la $t5, g
lw $t0, 0($t5)
move $a0, $t0
syscall
la $s0, c
sw $t7, 0($s0)
la $t6, h
lw $t7, 0($t6)
move $a0, $t7
syscall
la $s0, d
sw $t3, 0($s0)
la $t4, i
lw $t3, 0($t4)
move $a0, $t3
syscall
la $s0, e
sw $t1, 0($s0)
la $t2, j
lw $t1, 0($t2)
move $a0, $t1
syscall
la $s0, f
sw $t8, 0($s0)
la $t9, k
lw $t8, 0($t9)
move $a0, $t8
syscall
la $s0, g
sw $t0, 0($s0)
la $t5, l
lw $t0, 0($t5)
move $a0, $t0
syscall
la $s0, h
sw $t7, 0($s0)
la $t6, m
lw $t7, 0($t6)
move $a0, $t7
syscall
la $s0, i
sw $t3, 0($s0)
la $t4, n
lw $t3, 0($t4)
move $a0, $t3
syscall
la $s0, j
sw $t1, 0($s0)
la $t2, o
lw $t1, 0($t2)
move $a0, $t1
syscall
la $s0, k
sw $t8, 0($s0)
la $t9, p
lw $t8, 0($t9)
move $a0, $t8
syscall
la $s0, l
sw $t0, 0($s0)
la $t5, q
lw $t0, 0($t5)
move $a0, $t0
syscall
la $s0, m
sw $t7, 0($s0)
la $t6, r
lw $t7, 0($t6)
move $a0, $t7
syscall
la $s0, n
sw $t3, 0($s0)
la $t4, s
lw $t3, 0($t4)
move $a0, $t3
syscall
la $s0, o
sw $t1, 0($s0)
la $t2, t
lw $t1, 0($t2)
move $a0, $t1
syscall
la $s0, p
sw $t8, 0($s0)
la $t9, u
lw $t8, 0($t9)
move $a0, $t8
syscall
la $s0, q
sw $t0, 0($s0)
la $t5, v
lw $t0, 0($t5)
move $a0, $t0
syscall
la $s0, r
sw $t7, 0($s0)
la $t6, w
lw $t7, 0($t6)
move $a0, $t7
syscall
la $s0, s
sw $t3, 0($s0)
la $t4, x
lw $t3, 0($t4)
move $a0, $t3
syscall
la $s0, t
sw $t1, 0($s0)
la $t2, y
lw $t1, 0($t2)
move $a0, $t1
syscall
la $s0, u
sw $t8, 0($s0)
la $t9, z
lw $t8, 0($t9)
move $a0, $t8
syscall
