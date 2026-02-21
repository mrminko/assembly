.global _start
.section .data
value:
    .quad 5

.section .text
_start:
    pushq $0
    movq value, %rax

pushvalues:
    pushq %rax
    decq %rax
    jne pushvalues
    movq $1, %rax

multiply:
    popq %rcx
    cmpq $0, %rcx
    je end
    mulq %rcx
    jmp multiply

end:
    movq %rax, %rdi
    movq $60, %rax
    syscall