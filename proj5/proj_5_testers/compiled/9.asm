.data
e:	.word	0	# e in original
g:	.word	0	# g in original
o:	.word	0	# o in original
z:	.word	0	# z in original
k:	.word	0	# k in original
t:	.word	0	# t in original
i:	.word	0	# i in original
m:	.word	0	# m in original
b:	.word	0	# b in original
q:	.word	0	# q in original
w:	.word	0	# w in original
j:	.word	0	# j in original
l:	.word	0	# l in original
p:	.word	0	# p in original
c:	.word	0	# c in original
y:	.word	0	# y in original
f:	.word	0	# f in original
x:	.word	0	# x in original
r:	.word	0	# r in original
n:	.word	0	# n in original
a:	.word	0	# a in original
s:	.word	0	# s in original
d:	.word	0	# d in original
v:	.word	0	# v in original
u:	.word	0	# u in original
h:	.word	0	# h in original
.text
li $v0, 5
syscall
la $t4, a
lw $t9, 0($t4)
move $t9, $v0
li $v0, 5
syscall
la $t7, b
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $t5, c
lw $t1, 0($t5)
move $t1, $v0
li $v0, 5
syscall
la $t6, d
lw $t3, 0($t6)
move $t3, $v0
li $v0, 5
syscall
la $t8, e
lw $t0, 0($t8)
move $t0, $v0
li $v0, 5
syscall
la $s0, a
sw $t9, 0($s0)
la $t9, f
lw $t4, 0($t9)
move $t4, $v0
li $v0, 5
syscall
la $s0, b
sw $t2, 0($s0)
la $t2, g
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s0, c
sw $t1, 0($s0)
la $t1, h
lw $t5, 0($t1)
move $t5, $v0
li $v0, 5
syscall
la $s0, d
sw $t3, 0($s0)
la $t3, i
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $s0, e
sw $t0, 0($s0)
la $t0, j
lw $t8, 0($t0)
move $t8, $v0
li $v0, 5
syscall
la $s0, f
sw $t4, 0($s0)
la $t4, k
lw $t9, 0($t4)
move $t9, $v0
li $v0, 5
syscall
la $s0, g
sw $t7, 0($s0)
la $t7, l
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $s0, h
sw $t5, 0($s0)
la $t5, m
lw $t1, 0($t5)
move $t1, $v0
li $v0, 5
syscall
la $s0, i
sw $t6, 0($s0)
la $t6, n
lw $t3, 0($t6)
move $t3, $v0
li $v0, 5
syscall
la $s0, j
sw $t8, 0($s0)
la $t8, o
lw $t0, 0($t8)
move $t0, $v0
li $v0, 5
syscall
la $s0, k
sw $t9, 0($s0)
la $t9, p
lw $t4, 0($t9)
move $t4, $v0
li $v0, 5
syscall
la $s0, l
sw $t2, 0($s0)
la $t2, q
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s0, m
sw $t1, 0($s0)
la $t1, r
lw $t5, 0($t1)
move $t5, $v0
li $v0, 5
syscall
la $s0, n
sw $t3, 0($s0)
la $t3, s
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $s0, o
sw $t0, 0($s0)
la $t0, t
lw $t8, 0($t0)
move $t8, $v0
li $v0, 5
syscall
la $s0, p
sw $t4, 0($s0)
la $t4, u
lw $t9, 0($t4)
move $t9, $v0
li $v0, 5
syscall
la $s0, q
sw $t7, 0($s0)
la $t7, v
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $s0, r
sw $t5, 0($s0)
la $t5, w
lw $t1, 0($t5)
move $t1, $v0
li $v0, 5
syscall
la $s0, s
sw $t6, 0($s0)
la $t6, x
lw $t3, 0($t6)
move $t3, $v0
li $v0, 5
syscall
la $s0, t
sw $t8, 0($s0)
la $t8, y
lw $t0, 0($t8)
move $t0, $v0
li $v0, 5
syscall
la $s0, u
sw $t9, 0($s0)
la $t9, z
lw $t4, 0($t9)
move $t4, $v0
la $s0, v
sw $t2, 0($s0)
la $t7, a
lw $t2, 0($t7)
li $v0, 1
move $a0, $t2
syscall
la $s0, w
sw $t1, 0($s0)
la $t5, b
lw $t1, 0($t5)
move $a0, $t1
syscall
la $s0, x
sw $t3, 0($s0)
la $t6, c
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, y
sw $t0, 0($s0)
la $t8, d
lw $t0, 0($t8)
move $a0, $t0
syscall
la $s0, z
sw $t4, 0($s0)
la $t9, e
lw $t4, 0($t9)
move $a0, $t4
syscall
la $s0, a
sw $t2, 0($s0)
la $t7, f
lw $t2, 0($t7)
move $a0, $t2
syscall
la $s0, b
sw $t1, 0($s0)
la $t5, g
lw $t1, 0($t5)
move $a0, $t1
syscall
la $s0, c
sw $t3, 0($s0)
la $t6, h
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, d
sw $t0, 0($s0)
la $t8, i
lw $t0, 0($t8)
move $a0, $t0
syscall
la $s0, e
sw $t4, 0($s0)
la $t9, j
lw $t4, 0($t9)
move $a0, $t4
syscall
la $s0, f
sw $t2, 0($s0)
la $t7, k
lw $t2, 0($t7)
move $a0, $t2
syscall
la $s0, g
sw $t1, 0($s0)
la $t5, l
lw $t1, 0($t5)
move $a0, $t1
syscall
la $s0, h
sw $t3, 0($s0)
la $t6, m
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, i
sw $t0, 0($s0)
la $t8, n
lw $t0, 0($t8)
move $a0, $t0
syscall
la $s0, j
sw $t4, 0($s0)
la $t9, o
lw $t4, 0($t9)
move $a0, $t4
syscall
la $s0, k
sw $t2, 0($s0)
la $t7, p
lw $t2, 0($t7)
move $a0, $t2
syscall
la $s0, l
sw $t1, 0($s0)
la $t5, q
lw $t1, 0($t5)
move $a0, $t1
syscall
la $s0, m
sw $t3, 0($s0)
la $t6, r
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, n
sw $t0, 0($s0)
la $t8, s
lw $t0, 0($t8)
move $a0, $t0
syscall
la $s0, o
sw $t4, 0($s0)
la $t9, t
lw $t4, 0($t9)
move $a0, $t4
syscall
la $s0, p
sw $t2, 0($s0)
la $t7, u
lw $t2, 0($t7)
move $a0, $t2
syscall
la $s0, q
sw $t1, 0($s0)
la $t5, v
lw $t1, 0($t5)
move $a0, $t1
syscall
la $s0, r
sw $t3, 0($s0)
la $t6, w
lw $t3, 0($t6)
move $a0, $t3
syscall
la $s0, s
sw $t0, 0($s0)
la $t8, x
lw $t0, 0($t8)
move $a0, $t0
syscall
la $s0, t
sw $t4, 0($s0)
la $t9, y
lw $t4, 0($t9)
move $a0, $t4
syscall
la $s0, u
sw $t2, 0($s0)
la $t7, z
lw $t2, 0($t7)
move $a0, $t2
syscall
