.data
b:	.word	0	# b in original
i:	.word	0	# i in original
o:	.word	0	# o in original
v:	.word	0	# v in original
d:	.word	0	# d in original
n:	.word	0	# n in original
h:	.word	0	# h in original
w:	.word	0	# w in original
p:	.word	0	# p in original
q:	.word	0	# q in original
g:	.word	0	# g in original
c:	.word	0	# c in original
t:	.word	0	# t in original
e:	.word	0	# e in original
m:	.word	0	# m in original
u:	.word	0	# u in original
s:	.word	0	# s in original
a:	.word	0	# a in original
y:	.word	0	# y in original
x:	.word	0	# x in original
l:	.word	0	# l in original
r:	.word	0	# r in original
k:	.word	0	# k in original
z:	.word	0	# z in original
f:	.word	0	# f in original
j:	.word	0	# j in original
.text
li $v0, 5
syscall
la $t7, a
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $t1, b
lw $t8, 0($t1)
move $t8, $v0
li $v0, 5
syscall
la $t9, c
lw $t5, 0($t9)
move $t5, $v0
li $v0, 5
syscall
la $t4, d
lw $t0, 0($t4)
move $t0, $v0
li $v0, 5
syscall
la $t3, e
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $s0, a
sw $t2, 0($s0)
la $t2, f
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s0, b
sw $t8, 0($s0)
la $t8, g
lw $t1, 0($t8)
move $t1, $v0
li $v0, 5
syscall
la $s0, c
sw $t5, 0($s0)
la $t5, h
lw $t9, 0($t5)
move $t9, $v0
li $v0, 5
syscall
la $s0, d
sw $t0, 0($s0)
la $t0, i
lw $t4, 0($t0)
move $t4, $v0
li $v0, 5
syscall
la $s0, e
sw $t6, 0($s0)
la $t6, j
lw $t3, 0($t6)
move $t3, $v0
li $v0, 5
syscall
la $s0, f
sw $t7, 0($s0)
la $t7, k
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $s0, g
sw $t1, 0($s0)
la $t1, l
lw $t8, 0($t1)
move $t8, $v0
li $v0, 5
syscall
la $s0, h
sw $t9, 0($s0)
la $t9, m
lw $t5, 0($t9)
move $t5, $v0
li $v0, 5
syscall
la $s0, i
sw $t4, 0($s0)
la $t4, n
lw $t0, 0($t4)
move $t0, $v0
li $v0, 5
syscall
la $s0, j
sw $t3, 0($s0)
la $t3, o
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $s0, k
sw $t2, 0($s0)
la $t2, p
lw $t7, 0($t2)
move $t7, $v0
li $v0, 5
syscall
la $s0, l
sw $t8, 0($s0)
la $t8, q
lw $t1, 0($t8)
move $t1, $v0
li $v0, 5
syscall
la $s0, m
sw $t5, 0($s0)
la $t5, r
lw $t9, 0($t5)
move $t9, $v0
li $v0, 5
syscall
la $s0, n
sw $t0, 0($s0)
la $t0, s
lw $t4, 0($t0)
move $t4, $v0
li $v0, 5
syscall
la $s0, o
sw $t6, 0($s0)
la $t6, t
lw $t3, 0($t6)
move $t3, $v0
li $v0, 5
syscall
la $s0, p
sw $t7, 0($s0)
la $t7, u
lw $t2, 0($t7)
move $t2, $v0
li $v0, 5
syscall
la $s0, q
sw $t1, 0($s0)
la $t1, v
lw $t8, 0($t1)
move $t8, $v0
li $v0, 5
syscall
la $s0, r
sw $t9, 0($s0)
la $t9, w
lw $t5, 0($t9)
move $t5, $v0
li $v0, 5
syscall
la $s0, s
sw $t4, 0($s0)
la $t4, x
lw $t0, 0($t4)
move $t0, $v0
li $v0, 5
syscall
la $s0, t
sw $t3, 0($s0)
la $t3, y
lw $t6, 0($t3)
move $t6, $v0
li $v0, 5
syscall
la $s0, u
sw $t2, 0($s0)
la $t2, z
lw $t7, 0($t2)
move $t7, $v0
la $s0, v
sw $t8, 0($s0)
la $t1, a
lw $t8, 0($t1)
li $v0, 1
move $a0, $t8
syscall
la $s0, w
sw $t5, 0($s0)
la $t9, b
lw $t5, 0($t9)
move $a0, $t5
syscall
la $s0, x
sw $t0, 0($s0)
la $t4, c
lw $t0, 0($t4)
move $a0, $t0
syscall
la $s0, y
sw $t6, 0($s0)
la $t3, d
lw $t6, 0($t3)
move $a0, $t6
syscall
la $s0, z
sw $t7, 0($s0)
la $t2, e
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, a
sw $t8, 0($s0)
la $t1, f
lw $t8, 0($t1)
move $a0, $t8
syscall
la $s0, b
sw $t5, 0($s0)
la $t9, g
lw $t5, 0($t9)
move $a0, $t5
syscall
la $s0, c
sw $t0, 0($s0)
la $t4, h
lw $t0, 0($t4)
move $a0, $t0
syscall
la $s0, d
sw $t6, 0($s0)
la $t3, i
lw $t6, 0($t3)
move $a0, $t6
syscall
la $s0, e
sw $t7, 0($s0)
la $t2, j
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, f
sw $t8, 0($s0)
la $t1, k
lw $t8, 0($t1)
move $a0, $t8
syscall
la $s0, g
sw $t5, 0($s0)
la $t9, l
lw $t5, 0($t9)
move $a0, $t5
syscall
la $s0, h
sw $t0, 0($s0)
la $t4, m
lw $t0, 0($t4)
move $a0, $t0
syscall
la $s0, i
sw $t6, 0($s0)
la $t3, n
lw $t6, 0($t3)
move $a0, $t6
syscall
la $s0, j
sw $t7, 0($s0)
la $t2, o
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, k
sw $t8, 0($s0)
la $t1, p
lw $t8, 0($t1)
move $a0, $t8
syscall
la $s0, l
sw $t5, 0($s0)
la $t9, q
lw $t5, 0($t9)
move $a0, $t5
syscall
la $s0, m
sw $t0, 0($s0)
la $t4, r
lw $t0, 0($t4)
move $a0, $t0
syscall
la $s0, n
sw $t6, 0($s0)
la $t3, s
lw $t6, 0($t3)
move $a0, $t6
syscall
la $s0, o
sw $t7, 0($s0)
la $t2, t
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, p
sw $t8, 0($s0)
la $t1, u
lw $t8, 0($t1)
move $a0, $t8
syscall
la $s0, q
sw $t5, 0($s0)
la $t9, v
lw $t5, 0($t9)
move $a0, $t5
syscall
la $s0, r
sw $t0, 0($s0)
la $t4, w
lw $t0, 0($t4)
move $a0, $t0
syscall
la $s0, s
sw $t6, 0($s0)
la $t3, x
lw $t6, 0($t3)
move $a0, $t6
syscall
la $s0, t
sw $t7, 0($s0)
la $t2, y
lw $t7, 0($t2)
move $a0, $t7
syscall
la $s0, u
sw $t8, 0($s0)
la $t1, z
lw $t8, 0($t1)
move $a0, $t8
syscall
