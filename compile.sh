

# first - input 
# second - ouptut/platform

# 32 bit - nasm -f elf hello.asm
# Compile by platform mach, elf32 or elf64
nasm -f elf32 -o $2.o $1

nasm -f macho64 hello_world.asm

# ld not working yet
ld -macosx_version_min 10.7.0 -o hello_world hello_world.o