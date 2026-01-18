.global _start
.section .text
_start:
    movq $3, %rdi
    movq %rdi, %rax
    incq %rax
    addq %rdi, %rax
    mulq %rdi
    movq %rax, %rdi
    movq $60, %rax
    syscall