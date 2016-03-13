.data
i:	.word	0	# i in original
u:	.word	0	# u in original
j:	.word	0	# j in original
n:	.word	0	# n in original
m:	.word	0	# m in original
s:	.word	0	# s in original
r:	.word	0	# r in original
o:	.word	0	# o in original
k:	.word	0	# k in original
e:	.word	0	# e in original
f:	.word	0	# f in original
h:	.word	0	# h in original
a:	.word	0	# a in original
v:	.word	0	# v in original
z:	.word	0	# z in original
l:	.word	0	# l in original
q:	.word	0	# q in original
p:	.word	0	# p in original
g:	.word	0	# g in original
c:	.word	0	# c in original
b:	.word	0	# b in original
x:	.word	0	# x in original
t:	.word	0	# t in original
d:	.word	0	# d in original
y:	.word	0	# y in original
w:	.word	0	# w in original
.text
li $v0, 5
syscall
la $t3, a
lw $t9, 0($t3)
move $t9, $v0
li $v0, 5
syscall
la $t2, b
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
la $t6, c
lw $t8, 0($t6)
move $t8, $v0
li $v0, 5
syscall
la $t5, d
lw $t7, 0($t5)
move $t7, $v0
li $v0, 5
syscall
la $t0, e
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, a
sw $t9, 0($s0)
lw $s0, 0($sp)
la $t9, f
lw $t3, 0($t9)
move $t3, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, b
sw $t4, 0($s0)
lw $s0, 0($sp)
la $t4, g
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, c
sw $t8, 0($s0)
lw $s0, 0($sp)
la $t8, h
lw $t6, 0($t8)
move $t6, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, d
sw $t7, 0($s0)
lw $s0, 0($sp)
la $t7, i
lw $t5, 0($t7)
move $t5, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, e
sw $t1, 0($s0)
lw $s0, 0($sp)
la $t1, j
lw $t0, 0($t1)
move $t0, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, f
sw $t3, 0($s0)
lw $s0, 0($sp)
la $t3, k
lw $t9, 0($t3)
move $t9, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, g
sw $t2, 0($s0)
lw $s0, 0($sp)
la $t2, l
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, h
sw $t6, 0($s0)
lw $s0, 0($sp)
la $t6, m
lw $t8, 0($t6)
move $t8, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, i
sw $t5, 0($s0)
lw $s0, 0($sp)
la $t5, n
lw $t7, 0($t5)
move $t7, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, j
sw $t0, 0($s0)
lw $s0, 0($sp)
la $t0, o
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, k
sw $t9, 0($s0)
lw $s0, 0($sp)
la $t9, p
lw $t3, 0($t9)
move $t3, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, l
sw $t4, 0($s0)
lw $s0, 0($sp)
la $t4, q
lw $t2, 0($t4)
move $t2, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, m
sw $t8, 0($s0)
lw $s0, 0($sp)
la $t8, r
lw $t6, 0($t8)
move $t6, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, n
sw $t7, 0($s0)
lw $s0, 0($sp)
la $t7, s
lw $t5, 0($t7)
move $t5, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, o
sw $t1, 0($s0)
lw $s0, 0($sp)
la $t1, t
lw $t0, 0($t1)
move $t0, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, p
sw $t3, 0($s0)
lw $s0, 0($sp)
la $t3, u
lw $t9, 0($t3)
move $t9, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, q
sw $t2, 0($s0)
lw $s0, 0($sp)
la $t2, v
lw $t4, 0($t2)
move $t4, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, r
sw $t6, 0($s0)
lw $s0, 0($sp)
la $t6, w
lw $t8, 0($t6)
move $t8, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, s
sw $t5, 0($s0)
lw $s0, 0($sp)
la $t5, x
lw $t7, 0($t5)
move $t7, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, t
sw $t0, 0($s0)
lw $s0, 0($sp)
la $t0, y
lw $t1, 0($t0)
move $t1, $v0
li $v0, 5
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, u
sw $t9, 0($s0)
lw $s0, 0($sp)
la $t9, z
lw $t3, 0($t9)
move $t3, $v0
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, v
sw $t4, 0($s0)
lw $s0, 0($sp)
la $t2, a
lw $t4, 0($t2)
li $v0, 1
move $a0, $t4
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, w
sw $t8, 0($s0)
lw $s0, 0($sp)
la $t6, b
lw $t8, 0($t6)
move $a0, $t8
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, x
sw $t7, 0($s0)
lw $s0, 0($sp)
la $t5, c
lw $t7, 0($t5)
move $a0, $t7
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, y
sw $t1, 0($s0)
lw $s0, 0($sp)
la $t0, d
lw $t1, 0($t0)
move $a0, $t1
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, z
sw $t3, 0($s0)
lw $s0, 0($sp)
la $t9, e
lw $t3, 0($t9)
move $a0, $t3
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, a
sw $t4, 0($s0)
lw $s0, 0($sp)
la $t2, f
lw $t4, 0($t2)
move $a0, $t4
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, b
sw $t8, 0($s0)
lw $s0, 0($sp)
la $t6, g
lw $t8, 0($t6)
move $a0, $t8
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, c
sw $t7, 0($s0)
lw $s0, 0($sp)
la $t5, h
lw $t7, 0($t5)
move $a0, $t7
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, d
sw $t1, 0($s0)
lw $s0, 0($sp)
la $t0, i
lw $t1, 0($t0)
move $a0, $t1
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, e
sw $t3, 0($s0)
lw $s0, 0($sp)
la $t9, j
lw $t3, 0($t9)
move $a0, $t3
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, f
sw $t4, 0($s0)
lw $s0, 0($sp)
la $t2, k
lw $t4, 0($t2)
move $a0, $t4
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, g
sw $t8, 0($s0)
lw $s0, 0($sp)
la $t6, l
lw $t8, 0($t6)
move $a0, $t8
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, h
sw $t7, 0($s0)
lw $s0, 0($sp)
la $t5, m
lw $t7, 0($t5)
move $a0, $t7
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, i
sw $t1, 0($s0)
lw $s0, 0($sp)
la $t0, n
lw $t1, 0($t0)
move $a0, $t1
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, j
sw $t3, 0($s0)
lw $s0, 0($sp)
la $t9, o
lw $t3, 0($t9)
move $a0, $t3
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, k
sw $t4, 0($s0)
lw $s0, 0($sp)
la $t2, p
lw $t4, 0($t2)
move $a0, $t4
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, l
sw $t8, 0($s0)
lw $s0, 0($sp)
la $t6, q
lw $t8, 0($t6)
move $a0, $t8
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, m
sw $t7, 0($s0)
lw $s0, 0($sp)
la $t5, r
lw $t7, 0($t5)
move $a0, $t7
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, n
sw $t1, 0($s0)
lw $s0, 0($sp)
la $t0, s
lw $t1, 0($t0)
move $a0, $t1
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, o
sw $t3, 0($s0)
lw $s0, 0($sp)
la $t9, t
lw $t3, 0($t9)
move $a0, $t3
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, p
sw $t4, 0($s0)
lw $s0, 0($sp)
la $t2, u
lw $t4, 0($t2)
move $a0, $t4
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, q
sw $t8, 0($s0)
lw $s0, 0($sp)
la $t6, v
lw $t8, 0($t6)
move $a0, $t8
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, r
sw $t7, 0($s0)
lw $s0, 0($sp)
la $t5, w
lw $t7, 0($t5)
move $a0, $t7
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, s
sw $t1, 0($s0)
lw $s0, 0($sp)
la $t0, x
lw $t1, 0($t0)
move $a0, $t1
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, t
sw $t3, 0($s0)
lw $s0, 0($sp)
la $t9, y
lw $t3, 0($t9)
move $a0, $t3
syscall
addi $sp, $sp, -4
sw $s0, 0($sp)
la $s0, u
sw $t4, 0($s0)
lw $s0, 0($sp)
la $t2, z
lw $t4, 0($t2)
move $a0, $t4
syscall
