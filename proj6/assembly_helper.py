import struct

#  _______________________Float Functions________________________


# Borrowed from http://stackoverflow.com/questions/16444726/binary-representation-of-float-in-python-bits-not-hex
# Slightly edited to adhere to Python 3.5 standards over 2.7
# The return from this function should be cast by int(str, 2) for the immediate to use in MIPS
def convert_float_to_binary(float_val):
    return ''.join(bin(b).replace('0b', '').rjust(8, '0') for b in struct.pack('!f', float_val))


# _______________________Assembly________________________

## ______STACK______

# Allocates space to the stack
def asm_allocate_stack_space(space = 4):
    return asm_add('$sp', '$sp', -space)


# Load variable from stack
def asm_load_reg_from_stack(reg, offset = 0):
    return asm_read_mem_addr('$sp', reg, offset)


# Save variable to stack
def asm_save_reg_to_stack(reg, offset = 0):
    return asm_write_mem_addr('$sp', reg, offset)


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
    if type(s_reg) is int:
        'ori {:s}, {:s}, {:d}\n'.format(r_reg, f_reg, s_reg)
    else:
        return 'or {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


# ANDs f_reg and s_reg and stores in r_reg
def asm_log_and(r_reg, f_reg, s_reg):
    if type(s_reg) is int:
        return 'andi {:s}, {:s}, {:d}\n'.format(r_reg, f_reg, s_reg)
    else:
        return 'and {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


def asm_log_xor(r_reg, f_reg, s_reg):
    if type(s_reg) is int:
        return 'xori {:s}, {:s}, {:d}\n'.format(r_reg, f_reg, s_reg)
    else:
        return 'xor {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


# CANNOT work with immediates!
# Load f_reg into a register before using if it is an immediate
def asm_log_negate(r_reg, f_reg):
    return asm_log_xor(r_reg, f_reg, 1)


## ______EQUALITY______

# r_reg <- f_reg == s_reg
def asm_rel_eq(r_reg, f_reg, s_reg):
    if 'f' in s_reg:
        if type(s_reg) is float:
            asm_reg_set('$f13', s_reg)
            s_reg = '$f13'

        # Run the comparison (result set in coprocessor 1 flag 0 (default one looked at by movf
        # Load a 1 (True) into $at
        # If the comparison was actually false, swap $at with 0 (False)
        # Set r_reg to $at
        return 'c.eq.s {:s}, {:s}\n'.format(f_reg, s_reg) + asm_reg_set('$at', 1) + 'movf $at, $0\n' \
               + asm_reg_set(r_reg, '$at')
    else:
        return 'seq {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


# r_reg <- f_reg != s_reg
def asm_rel_neq(r_reg, f_reg, s_reg):
    if 'f' in s_reg:
        if type(s_reg) is float:
            asm_reg_set('$f13', s_reg)
            s_reg = '$f13'
        # Assumes f_reg and s_reg are not equal
        # If they are equal, then $at is set to 0 (False)
        return 'c.eq.s {:s}, {:s}\n'.format(f_reg, s_reg) + asm_reg_set('$at', 1) + 'movt $at, $0\n' \
               + asm_reg_set(r_reg, '$at')
    else:
        return 'sne {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


## ______RELATIONSHIP______

# r_reg <- f_reg < s_reg
def asm_rel_le(r_reg, f_reg, s_reg):
    if 'f' in s_reg:
        if type(s_reg) is float:
            asm_reg_set('$f13', s_reg)
            s_reg = '$f13'

        return 'c.le.s {:s}, {:s}\n'.format(f_reg, s_reg) + asm_reg_set('$at', 1) + 'movf $at, $0\n' \
               + asm_reg_set(r_reg, '$at')
    else:
        return 'sle {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


# I don't know why this one doesn't have pseudocode overrides for immediates, but the others do
# r_reg <- f_reg <= s_reg
def asm_rel_lt(r_reg, f_reg, s_reg):
    if 'f' in s_reg:
        if type(s_reg) is float:
            asm_reg_set('$f13', s_reg)
            s_reg = '$f13'

        return 'c.lt.s {:s}, {:s}\n'.format(f_reg, s_reg) + asm_reg_set('$at', 1) + 'movf $at, $0\n' \
               + asm_reg_set(r_reg, '$at')
    elif type(s_reg) is int:
        return 'slti {:s}, {:s}, {:d}\n'.format(r_reg, f_reg, s_reg)
    else:
        return 'slt {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


# r_reg <- f_reg > s_reg
def asm_rel_ge(r_reg, f_reg, s_reg):
    if 'f' in s_reg:
        if type(s_reg) is float:
            asm_reg_set('$f13', s_reg)
            s_reg = '$f13'

        # Assume f_reg >= s_reg
        # If f_reg < s_reg, set r_reg to 0 (False)
        return 'c.lt.s {:s}, {:s}\n'.format(f_reg, s_reg) + asm_reg_set('$at', 1) + 'movt $at, $0\n' \
               + asm_reg_set(r_reg, '$at')
    else:
        return 'sge {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


# r_reg <- f_reg >= s_reg
def asm_rel_gt(r_reg, f_reg, s_reg):
    if 'f' in s_reg:
        if type(s_reg) is float:
            asm_reg_set('$f13', s_reg)
            s_reg = '$f13'

        # Assume f_reg > s_reg
        # If f_reg <= s_reg, set r_reg to 0 (False)
        return 'c.le.s {:s}, {:s}\n'.format(f_reg, s_reg) + asm_reg_set('$at', 1) + 'movt $at, $0\n' \
               + asm_reg_set(r_reg, '$at')
    else:
        return 'sgt {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


## ______ARITHMETIC______

# Used to add two values
# Includes override for immediates
# r_reg = f_reg + s_reg
def asm_add(r_reg, f_reg, s_reg):
    op_type = 'float' if 'f' in str(f_reg) else 'normal'

    if type(s_reg) is int:
        return 'addi {:s}, {:s}, {:d}\n'.format(r_reg, f_reg, s_reg)
    elif type(s_reg) is float:
        # asm_reg_set will load float s_reg into $f13
        return asm_reg_set('$f13', s_reg) + 'add.s {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, '$f13')
    elif op_type == 'float':
        return 'add.s {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)
    else:
        return 'add {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


# Used to subtract two values
# Includes override for immediates
# r_reg = f_reg - s_reg
def asm_sub(r_reg, f_reg, s_reg):
    op_type = 'float' if 'f' in str(f_reg) else 'normal'

    if type(s_reg) is int:
        return 'subi {:s}, {:s}, {:d}\n'.format(r_reg, f_reg, s_reg)
    elif type(s_reg) is float:
        # asm_reg_set will load float s_reg into $f13
        return asm_reg_set('$f13', s_reg) + 'sub.s {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, '$f13')
    elif op_type == 'float':
        return 'sub.s {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)
    else:
        return 'sub {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


# Stores result in lo register in addition to r_reg
# r_reg = f_reg * s_reg
def asm_multiply(r_reg, f_reg, s_reg):
    if 'f' in str(f_reg):
        if type(s_reg) is float:
            return asm_reg_set('$f13', s_reg) + 'mul.s {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, '$f13')
        else:
            return 'mul.s {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)
    else:
        return 'mul {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


# r_reg = f_reg / s_reg
def asm_divide(r_reg, f_reg, s_reg):
    if 'f' in str(f_reg):
        if type(s_reg) is float:
            return asm_reg_set('$f13', s_reg) + 'div.s {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, '$f13')
        else:
            return 'div.s {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)
    else:
        return 'div {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


# Only defined for integers
# r_reg = f_reg % s_reg
def asm_modulo(r_reg, f_reg, s_reg):
    return 'rem {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


# Load a value from one register to another
# f_reg = s_reg
def asm_reg_set(f_reg, s_reg):
    op_type = 'float' if 'f' in str(f_reg) else 'normal'

    # This branches if s_reg is a register (i.e. string) or an immediate (i.e. int)
    if type(s_reg) is int:
        return 'li {:s}, {:d}\n'.format(f_reg, s_reg)
    elif type(s_reg) is float:
        return 'li {:s}, {:d}\n'.format('$at', int(convert_float_to_binary(s_reg), 2)) \
                  + 'mtc1 {:s}, {:s}\n'.format('$at', f_reg)
    elif op_type == 'float':
        return 'mov.s {:s}, {:s}\n'.format(f_reg, s_reg)
    else:
        return 'move {:s}, {:s}\n'.format(f_reg, s_reg) # move is a pseudo-instruction


## ______READ/WRITE RAM______

# Loads a variable's memory address into a register
def asm_load_mem_addr(mem_name, temp_reg):
    return 'la {:s}, {:s}\n'.format(temp_reg, mem_name)


# Assumes mem_name address isn't in memory already
def asm_load_mem_var(mem_name, addr_reg, dest_reg, offset = 0):
    return 'la {:s}, {:s}\nlw {:s}, {:d}({:s})\n'.format(addr_reg, mem_name, dest_reg, offset, addr_reg)


# Assumes mem_addr_reg holds RAM location of desired variable
def asm_load_mem_var_from_addr(mem_addr_reg, dest_reg, offset = 0):
    return 'lw {:s}, {:d}({:s})\n'.format(dest_reg, offset, mem_addr_reg)


# Assumes mem_name address isn't in memory already
def asm_save_mem_var(mem_name, addr_reg, var_reg, offset = 0):
    return 'la {:s}, {:s}\nsw {:s}, {:d}({:s})\n'.format(addr_reg, mem_name, var_reg, offset, addr_reg)


# Assumes mem_addr_reg holds RAM location of desired variable
def asm_save_mem_var_from_addr(mem_addr_reg, var_reg, offset = 0):
    return 'sw {:s}, {:d}({:s})\n'.format(var_reg, offset, mem_addr_reg)

# _______________________Helpers________________________


# Helper function to make swapping variables easier
# Writes the old variable from $var_reg to RAM, and then loads the new one to the same reg
# At the end: $addre_reg = address of s_mem_name and $var_reg = value of s_mem_name
def asm_swap_variables(f_mem_name, s_mem_name, addr_reg, var_reg, f_offset = 0, s_offset = 0):
    return 'la {:s}, {:s}\nsw {:s}, {:d}({:s})\nla {:s}, {:s}\nlw {:s}, {:d}({:s})\n'\
        .format(addr_reg, f_mem_name, var_reg, f_offset, addr_reg, addr_reg, s_mem_name, var_reg, s_offset, addr_reg)


# Helper to make repeated addition easier
def asm_add_rep(r_reg, *regs):
    ret_asm = ''
    ret_asm += asm_add(r_reg, regs[0], regs[1]) # initial add of two variables
    for i in [2..len(regs)]:
        ret_asm += asm_add(r_reg, r_reg, regs[i])
    return ret_asm


# Helper to make repeated subtraction easier
def asm_sub_rep(r_reg, *regs):
    ret_asm = ''
    ret_asm += asm_sub(r_reg, regs[0], regs[1]) # initial add of two variables
    for i in [2..len(regs)]:
        ret_asm += asm_sub(r_reg, r_reg, regs[i])
    return ret_asm


# Helper that will convert an int to a float
def asm_cast_int_to_float(f_reg, i_reg):
    ret_asm = ''

    if type(i_reg) is int:
        ret_asm += asm_reg_set('$at', i_reg)
        i_reg = '$at'

    ret_asm += 'mtc1 {:s}, {:s}\ncvt.s.w {:s}, {:s}\n'.format(i_reg, f_reg, f_reg, f_reg)

    return ret_asm


# This allows for bools to be able to be dynamically printed
def asm_dynamic_bool_print(r_reg, f_reg, true_addr_reg, false_addr_reg):
    return asm_rel_eq('$at', f_reg, 1) + 'movn {:s}, {:s}, {:s}'.format(r_reg, true_addr_reg, '$at') + \
           'movz {:s}, {:s}, {:s}'.format(r_reg, false_addr_reg, '$at')
