# _______________________Assembly________________________


def asm_read():
    pass


def asm_write():
    pass


def asm_add(r_reg, f_reg, s_reg):
    if type(s_reg) is int:
        return 'addi {:s}, {:s}, {:d}'.format(r_reg, f_reg, s_reg)
    else:
        return 'add {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


def asm_sub(r_reg, f_reg, s_reg):
    if type(s_reg) is int:
        return 'subi {:s}, {:s}, {:d}'.format(r_reg, f_reg, s_reg)
    else:
        return 'sub {:s}, {:s}, {:s}\n'.format(r_reg, f_reg, s_reg)


def asm_reg_set(f_reg, s_reg):
    # This branches if s_reg is a register (i.e. string) or an immediate (i.e. int)
    if type(s_reg) is int:
        return 'li {:s}, {:d}\n'.format(f_reg, s_reg)
    else:
        return 'move {:s}, {:s}\n'.format(f_reg, s_reg) # move is a pseudo-instruction


# Loads a variable's memory address into a register
def asm_load_mem_addr(mem_name, temp_reg):
    return 'la {:s}, {:s}\n'.format(temp_reg, mem_name)


# Assumes mem_name address isn't in memory already
def asm_read_mem(mem_name, addr_reg, dest_reg, offset = 0):
    return 'la {:s}, {:s}\nlw {:s}, {:d}({:s})\n'.format(addr_reg, mem_name, dest_reg, offset, addr_reg)


# Assumes mem_addr_reg holds RAM location of desired variable
def asm_read_mem_addr(mem_addr_reg, dest_reg, offset = 0):
    return 'lw {:s}, {:d}({:s})\n'.format(dest_reg, offset, mem_addr_reg)


# Assumes mem_name address isn't in memory already
def asm_write_mem(mem_name, addr_reg, var_reg, offset = 0):
    return 'la {:s}, {:s}\nsw {:s}, {:d}({:s})\n'.format(addr_reg, mem_name, var_reg, offset, addr_reg)


#Assumes mem_addr_reg holds RAM location of desired variable
def asm_write_mem_addr(mem_addr_reg, var_reg, offset = 0):
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