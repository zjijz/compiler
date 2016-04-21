import struct

#  _______________________Assembly Helper Functions________________________


# Borrowed from http://stackoverflow.com/questions/16444726/binary-representation-of-float-in-python-bits-not-hex
# Slightly edited to adhere to Python 3.5 standards over 2.7
# The return from this function should be cast by int(str, 2) for the immediate to use in MIPS
def convert_float_to_binary(float_val):
    return ''.join(bin(b).replace('0b', '').rjust(8, '0') for b in struct.pack('!f', float_val))


# Easy function to get the operation type of any assembly function (looks at the registers)
def get_op_type(f_reg, s_reg):
    return 'float' if 'f' in str(f_reg) or 'f' in str(s_reg) else 'normal'


# Ensures that f_reg and s_reg are loaded into registers if either is an immediate
# (Since most MIPS methods have overloads for s_reg as an immediate, we will not assume it needs to be done here)
# Assumes that not both of f_reg and s_reg are immediates !!!!
# (If both are immediates, we should have statically operated on them)
def load_immediates(op_type, ret_asm, f_reg, s_reg):
    if op_type == 'float':
        if type(s_reg) is float:
            ret_asm += asm_reg_set('$f13', s_reg)
            s_reg = '$f13'
        elif type(f_reg) is float:
            ret_asm += asm_reg_set('$f13', f_reg)
            f_reg = '$f13'
        elif type(s_reg) is int:
            ret_asm += asm_cast_int_to_float('$f13', s_reg)
            s_reg = '$f13'
    else:
        if type(f_reg) in {int, bool}:
            ret_asm += asm_reg_set('$v1', f_reg)
            f_reg = '$v1'
    print(ret_asm)
    return ret_asm, f_reg, s_reg
# _______________________Assembly________________________


## ______STACK______

# Allocates space to the stack
def asm_allocate_stack_space(space = 4):
    return asm_add('$sp', '$sp', -space)


# Load variable from stack
def asm_load_reg_from_stack(reg, offset = 0):
    return asm_load_mem_var_from_addr('$sp', reg, offset)


# Save variable to stack
def asm_save_reg_to_stack(reg, offset = 0):
    return asm_save_mem_var_from_addr('$sp', reg, offset)


## ______I/O______

# Pass in type information to indicate which syscall to use:
# 5 - read int
# 6 - read float
# 7 - read double
# 8 - read string
def asm_read(var_type):
    ret_asm = ''
    if var_type == 'int':
        ret_asm += asm_reg_set('$v0', 5)
    elif var_type == 'float':
        ret_asm += asm_reg_set('$v0', 6)
    elif var_type == 'double':
        ret_asm += asm_reg_set('$v0', 7)
    else:
        ret_asm += asm_reg_set('$v0', 8)
    return ret_asm + 'syscall\n'


# Check current syscode if it's correct for the var_type passed
def asm_check_syscode_write(var_type, val):
    return (var_type == 'int' and val != 1) or (var_type == 'float' and val != 2) \
           or (var_type == 'double' and val != 3) or (var_type == 'string' and val != 4)


# Pass it a var_type
# Return the necessary syscode to print
def asm_get_syscode_write(var_type):
    if var_type == 'int':
        return 1
    elif var_type == 'float':
        return 2
    elif var_type == 'double':
        return 3
    else:
        return 4


# Broke this off from write to optimize writes a little faster
# var_type: The type of variable to write
# 1 - print int, arg in $a0
# 2 - print float, arg in $f12
# 3 - print double, arg in $f12
# 4 - print string, arg in $a0
def asm_set_syscode_write(var_type):
    return asm_reg_set('$v0', asm_get_syscode_write(var_type))


# var_type is the type of the variable to print
# reg is the register where the variable is stored
# 1 - print int, arg in $a0
# 2 - print float, arg in $f12
# 3 - print double, arg in $f12
# 4 - print string, arg in $a0
# If the is_a0_set boolean is True, then the will be no register equation
def asm_write(var_reg, var_type, is_a0_set = False):
    ret_asm = ''

    if not is_a0_set:
        if var_type == 'int':
            ret_asm += asm_reg_set('$a0', var_reg)
        elif var_type == 'float':
            ret_asm += asm_reg_set('$f12', var_reg)
        elif var_type == 'double':
            ret_asm += asm_reg_set('$f12', var_reg)
        else:
            ret_asm += asm_reg_set('$a0', var_reg)

    return ret_asm + 'syscall\n'


## ______LOGICAL______
# These work assuming f_reg, s_reg are 0 or 1

# ORs f_reg and s_reg and stores in r_reg
def asm_log_or(r_reg, f_reg, s_reg):
    ret_asm, f_reg, s_reg = load_immediates('normal', '', f_reg, s_reg)
    if type(s_reg) is bool:
        s_reg = 1 if s_reg else 0
        ret_asm += 'ori {:s}, {:s}, {:d}\n'.format(r_reg, f_reg, s_reg)
    else:
        ret_asm += 'or {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)
    return ret_asm


# ANDs f_reg and s_reg and stores in r_reg
def asm_log_and(r_reg, f_reg, s_reg):
    ret_asm, f_reg, s_reg = load_immediates('normal', '', f_reg, s_reg)
    if type(s_reg) is bool:
        s_reg = 1 if s_reg else 0
        ret_asm += 'andi {:s}, {:s}, {:d}\n'.format(r_reg, f_reg, s_reg)
    else:
        ret_asm += 'and {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)
    return ret_asm


def asm_log_xor(r_reg, f_reg, s_reg):
    ret_asm, f_reg, s_reg = load_immediates('normal', '', f_reg, s_reg)
    if type(s_reg) is bool:
        s_reg = 1 if s_reg else 0
        ret_asm += 'xori {:s}, {:s}, {:d}\n'.format(r_reg, f_reg, s_reg)
    else:
        ret_asm += 'xor {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)
    return ret_asm


# CANNOT work with immediates!
# Load f_reg into a register before using if it is an immediate
# This does a bitflip of the 1's place
def asm_log_negate(r_reg, f_reg):
    return asm_log_xor(r_reg, f_reg, 1)


## ______EQUALITY______

# r_reg <- f_reg == s_reg
def asm_rel_eq(r_reg, f_reg, s_reg):
    op_type = get_op_type(f_reg, s_reg)
    ret_asm, f_reg, s_reg = load_immediates(op_type, '', f_reg, s_reg)
    if op_type == 'float':
        ret_asm += 'c.eq.s {:s}, {:s}\n'.format(f_reg, s_reg) \
                   + asm_reg_set('$v1', 1) \
                   + 'movf $v1, $0\n' \
                   + asm_reg_set(r_reg, '$v1')
    else:
        ret_asm += 'seq {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, str(s_reg))
    return ret_asm


# r_reg <- f_reg != s_reg
def asm_rel_neq(r_reg, f_reg, s_reg):
    op_type = get_op_type(f_reg, s_reg)
    ret_asm, f_reg, s_reg = load_immediates(op_type, '', f_reg, s_reg)
    if op_type == 'float':
        ret_asm += 'c.eq.s {:s}, {:s}\n'.format(f_reg, s_reg) \
                   + asm_reg_set('$v1', 1) \
                   + 'movt $v1, $0\n' \
                   + asm_reg_set(r_reg, '$v1')
    else:
        ret_asm += 'sne {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, str(s_reg))
    return ret_asm


## ______RELATIONSHIP______

# r_reg <- f_reg < s_reg
def asm_rel_le(r_reg, f_reg, s_reg):
    op_type = get_op_type(f_reg, s_reg)
    ret_asm, f_reg, s_reg = load_immediates(op_type, '', f_reg, s_reg)
    if op_type == 'float':
        ret_asm += 'c.le.s {:s}, {:s}\n'.format(f_reg, s_reg) \
                   + asm_reg_set('$v1', 1) \
                   + 'movf $v1, $0\n' \
                   + asm_reg_set(r_reg, '$v1')
    else:
        ret_asm += 'sle {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, str(s_reg))
    return ret_asm


# I don't know why this one doesn't have pseudocode overrides for immediates, but the others do
# r_reg <- f_reg <= s_reg
def asm_rel_lt(r_reg, f_reg, s_reg):
    op_type = get_op_type(f_reg, s_reg)
    ret_asm, f_reg, s_reg = load_immediates(op_type, '', f_reg, s_reg)
    if op_type == 'float':
        ret_asm += 'c.lt.s {:s}, {:s}\n'.format(f_reg, s_reg) \
                   + asm_reg_set('$v1', 1) \
                   + 'movf $v1, $0\n' \
                   + asm_reg_set(r_reg, '$v1')
    else:
        if type(s_reg) is int:
            ret_asm += 'slti {:s}, {:s}, {:d}\n'.format(r_reg, f_reg, s_reg)
        else:
            ret_asm += 'slt {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, str(s_reg))
    return ret_asm


# r_reg <- f_reg > s_reg
def asm_rel_ge(r_reg, f_reg, s_reg):
    op_type = get_op_type(f_reg, s_reg)
    ret_asm, f_reg, s_reg = load_immediates(op_type, '', f_reg, s_reg)
    if op_type == 'float':
        ret_asm += 'c.lt.s {:s}, {:s}\n'.format(f_reg, s_reg) \
                   + asm_reg_set('$v1', 1) \
                   + 'movt $v1, $0\n' \
                   + asm_reg_set(r_reg, '$v1')
    else:
        ret_asm += 'sge {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, str(s_reg))
    return ret_asm


# r_reg <- f_reg >= s_reg
def asm_rel_gt(r_reg, f_reg, s_reg):
    op_type = get_op_type(f_reg, s_reg)
    ret_asm, f_reg, s_reg = load_immediates(op_type, '', f_reg, s_reg)
    if op_type == 'float':
        ret_asm += 'c.le.s {:s}, {:s}\n'.format(f_reg, s_reg) \
                   + asm_reg_set('$v1', 1) \
                   + 'movt $v1, $0\n' \
                   + asm_reg_set(r_reg, '$v1')
    else:
        ret_asm += 'sgt {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, str(s_reg))
    return ret_asm


## ______ARITHMETIC______

# Used to add two values
# Includes override for immediates
# r_reg = f_reg + s_reg
def asm_add(r_reg, f_reg, s_reg):
    op_type = get_op_type(f_reg, s_reg)
    ret_asm, f_reg, s_reg = load_immediates(op_type, '', f_reg, s_reg)
    if op_type == 'float':
        ret_asm += 'add.s {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)
    elif type(s_reg) is int:
        ret_asm += 'addi {:s}, {:s}, {:d}\n'.format(r_reg, f_reg, s_reg)
    else:
        ret_asm += 'add {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)
    return ret_asm


# Used to subtract two values
# Includes override for immediates
# r_reg = f_reg - s_reg
def asm_sub(r_reg, f_reg, s_reg):
    op_type = get_op_type(f_reg, s_reg)
    ret_asm, f_reg, s_reg = load_immediates(op_type, '', f_reg, s_reg)
    if op_type == 'float':
        ret_asm += 'sub.s {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)
    elif type(s_reg) is int:
        ret_asm += 'subi {:s}, {:s}, {:d}\n'.format(r_reg, f_reg, s_reg)
    else:
        ret_asm += 'sub {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)
    return ret_asm


# Stores result in lo register in addition to r_reg
# r_reg = f_reg * s_reg
def asm_multiply(r_reg, f_reg, s_reg):
    op_type = get_op_type(f_reg, s_reg)
    ret_asm, f_reg, s_reg = load_immediates(op_type, '', f_reg, s_reg)
    if op_type == 'float':
        ret_asm += 'mul.s {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)
    else:
        ret_asm += 'mul {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, str(s_reg))
    return ret_asm


# r_reg = f_reg / s_reg
def asm_divide(r_reg, f_reg, s_reg):
    op_type = get_op_type(f_reg, s_reg)
    ret_asm, f_reg, s_reg = load_immediates(op_type, '', f_reg, s_reg)
    if op_type == 'float':
        ret_asm += 'div.s {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)
    else:
        ret_asm += 'div {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, str(s_reg))
    return ret_asm


# Only defined for integers
# r_reg = f_reg % s_reg
def asm_modulo(r_reg, f_reg, s_reg):
    ret_asm = ''
    if type(f_reg) is int:
        ret_asm += asm_reg_set('$v1', f_reg)
        f_reg = '$v1'
    ret_asm += 'rem {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, str(s_reg))
    return ret_asm


# REWRITE
# Load a value from one register to another
# f_reg = s_reg
def asm_reg_set(f_reg, s_reg):
    print(f_reg, s_reg)
    op_type = get_op_type(f_reg, s_reg)
    ret_asm = ''
    # We don't use the shortcut load_immediates here because this is the function used in that
    if op_type == 'float':
        if type(s_reg) is float:
            ret_asm += 'li {:s}, {:d}\n'.format('$v1', int(convert_float_to_binary(s_reg), 2)) \
                  + 'mtc1 {:s}, {:s}\n'.format('$v1', '$f13')
            s_reg = '$f13'
        elif type(s_reg) is int:
            print('error state')
            pass
        elif type(f_reg) is float:
            ret_asm += 'li {:s}, {:d}\n'.format('$v1', int(convert_float_to_binary(f_reg), 2)) \
                  + 'mtc1 {:s}, {:s}\n'.format('$v1', '$f13')
            f_reg = '$f13'
        elif 'f' not in str(s_reg):
            ret_asm += asm_cast_int_to_float('$f13', s_reg)
            s_reg = '$f13'

        ret_asm += 'mov.s {:s}, {:s}\n'.format(f_reg, s_reg)
        print(ret_asm)
    else: # int
        if type(s_reg) in {int, bool}:
            ret_asm += 'li {:s}, {:d}\n'.format(f_reg, s_reg)
        elif type(f_reg) in {int, bool}:
            ret_asm += 'li {:s}, {:d}\n'.format(s_reg, f_reg)
        else:
            ret_asm += 'move {:s}, {:s}\n'.format(f_reg, s_reg)
    return ret_asm

## ______READ/WRITE RAM______


# Loads a variable's memory address into a register
def asm_load_mem_addr(mem_name, temp_reg):
    return 'la {:s}, {:s}\n'.format(temp_reg, mem_name)


# Assumes mem_name address isn't in memory already
def asm_load_mem_var(mem_name, addr_reg, dest_reg, offset = 0):
    if 'f' in str(dest_reg):
        return 'la {:s}, {:s}\nl.s {:s}, {:d}({:s})\n'.format(addr_reg, mem_name, dest_reg, offset, addr_reg)
    else:
        return 'la {:s}, {:s}\nlw {:s}, {:d}({:s})\n'.format(addr_reg, mem_name, dest_reg, offset, addr_reg)


# REQRITE
# Assumes mem_addr_reg holds RAM location of desired variable
def asm_load_mem_var_from_addr(mem_addr_reg, dest_reg, offset = 0):
    if 'f' in str(dest_reg):
        return 'l.s {:s}, {:d}({:s})\n'.format(dest_reg, offset, mem_addr_reg)
    elif type(mem_addr_reg) is str and '$' not in mem_addr_reg:
        return 'lw {:s}, {:s} + {:d}\n'.format(dest_reg, mem_addr_reg, offset)
    else:
        return 'lw {:s}, {:d}({:s})\n'.format(dest_reg, offset, mem_addr_reg)


# Assumes mem_name address isn't in memory already
def asm_save_mem_var(mem_name, addr_reg, var_reg, offset = 0):
    if 'f' in str(var_reg):
        return 'la {:s}, {:s}\ns.s {:s}, {:d}({:s})\n'.format(addr_reg, mem_name, var_reg, offset, addr_reg)
    else:
        return 'la {:s}, {:s}\nsw {:s}, {:d}({:s})\n'.format(addr_reg, mem_name, var_reg, offset, addr_reg)


# REWRITE
# Assumes mem_addr_reg holds RAM location of desired variable
def asm_save_mem_var_from_addr(mem_addr_reg, var_reg, offset = 0):
    print(mem_addr_reg, var_reg)
    if type(mem_addr_reg) is str and '$' not in mem_addr_reg: # might be risky to assume this, although we won't make labels with $
        ret = ''
        if 'f' in str(var_reg):
            return 's.s {:s}, {:s} + {:d}\n'.format(var_reg, mem_addr_reg, offset)
        if type(var_reg) is float:
            ret = asm_reg_set('$f13', var_reg)
            ret += 's.s {:s}, {:s} + {:d}\n'.format('$f13', mem_addr_reg, offset)
            return ret
        if type(var_reg) is int:
            ret = asm_reg_set('$v1', var_reg)
            var_reg = '$v1'
        ret += 'sw {:s}, {:s} + {:d}\n'.format(var_reg, mem_addr_reg, offset)
        return ret
    elif 'f' in str(var_reg):
        return 's.s {:s}, {:d}({:s})\n'.format(var_reg, offset, mem_addr_reg)
    elif type(var_reg) is int:
        ret = asm_reg_set('$v1', var_reg)
        ret += 'sw {:s}, {:d}({:s})\n'.format('$v1', offset, mem_addr_reg)
        return ret
    elif type(var_reg) is float:
        ret = asm_reg_set('$f13', var_reg)
        ret += 's.s {:s}, {:d}({:s})\n'.format('$f13', offset, mem_addr_reg)
        return ret
    else:
        return 'sw {:s}, {:d}({:s})\n'.format(var_reg, offset, mem_addr_reg)

## _______________________Conditionals________________________


def asm_conditional_check(reg, label):
    ret, reg, _ = load_immediates('normal', '', reg, None)
    if 'f' in str(reg):
        ret += asm_rel_eq('$v2', reg, 0)
        reg = '$v2'
    ret += 'beqz {:s}, {:s}\n'.format(reg, label)
    return ret


def asm_branch_to_label(label):
    return 'b {:s}\n'.format(label)

# _______________________Helpers________________________


# Helper that will convert an int to a float
def asm_cast_int_to_float(f_reg, i_reg):
    print(f_reg, i_reg)
    ret_asm = ''
    if type(i_reg) is int:
        ret_asm += asm_reg_set('$v1', i_reg)
        i_reg = '$v1'
    ret_asm += 'mtc1 {:s}, {:s}\ncvt.s.w {:s}, {:s}\n'.format(i_reg, f_reg, f_reg, f_reg)
    print(ret_asm)
    return ret_asm


# This allows for bools to be able to be dynamically printed
def asm_dynamic_bool_print(r_reg, f_reg, true_addr_reg, false_addr_reg):
    return asm_rel_eq('$v1', f_reg, 1) + 'movn {:s}, {:s}, {:s}\n'.format(r_reg, true_addr_reg, '$v1') + \
           'movz {:s}, {:s}, {:s}\n'.format(r_reg, false_addr_reg, '$v1')


# Saves all registers to stack
def asm_save_off_reg_pool(reg_pool):
    ret = ''
    for i in range(0, len(reg_pool), 1):
        ret += asm_allocate_stack_space(4)
        ret += asm_save_reg_to_stack(reg_pool[i])
    return ret


# Reloads registers from stack
def asm_load_reg_pool_from_stack(reg_pool):
    ret = ''
    for i in range(len(reg_pool) - 1, -1, -1):
        ret += asm_load_reg_from_stack(reg_pool[i])
        ret += asm_add('$sp', '$sp', 4)
    return ret
