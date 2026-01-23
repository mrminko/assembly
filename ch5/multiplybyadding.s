.global _start
.section .text
_start:
    movq $0, %rax
    movq $2, %rbx
    movq $5, %rcx
    cmpq $0, %rcx
    je end

multiply:
    addq %rbx, %rax
    loopq multiply

end:
    movq %rax, %rdi
    movq $60, %rax
    syscall