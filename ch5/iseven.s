.global _start
.section .text
_start:
    movq $2, %rax
    movq $2, %rbx
    divq %rbx
    cmpq $0, %rdx
    je even
    jne odd

even:
    movq $1, %rdi
    jmp end
odd:
    movq $0, %rdi
end:
    movq $60, %rax
    syscall
