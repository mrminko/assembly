.global _start
.section .text
_start:
    movq $1, %rax
    movq $2, %rbx
    movq $3, %rcx
    cmpq $0, %rcx
    je complete

mainloop:
    mulq %rbx
    loopq mainloop

complete:
    movq %rax, %rdi
    movq $60, %rax
    syscall