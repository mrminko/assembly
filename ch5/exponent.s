.global _start
.section .text
_start:
    movq $1, %rax
    movq $3, %rcx
    movq $2, %rbx

mainloop:
    addq $0, %rcx
    jz complete
    mulq %rbx
    decq %rcx
    jmp mainloop

complete:
    movq %rax, %rdi
    movq $60, %rax
    syscall