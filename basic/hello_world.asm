global _start

section .text:

_start:
	mov edx, len ;message length
	mov ecx, msg ;message to write
	mov ebx, 1   ;file descriptor(stdout)
	mov eax, 4   ;system call for sys_write
	int 0x80     ;call kernel

	mov eax, 1   ;system call for sys_exit
	int 0x80     ;call kernel

section .data:
	msg db "Hello world!", 0xa
	len equ $-msg ; length of the string
