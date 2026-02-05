.global _start
.section .data
ncount:
    .quad 7
numbers:
    .quad 5, 20, 33, 80, 52, 10, 1

.section .text
_start:
    leaq numbers, %rbx
    movq ncount, %rcx
    movq $255, %rdi
    cmp $0, %rdi
    je endloop

mainloop:
    movq (%rbx), %rax
    cmp %rax, %rdi
    jbe loopcontrol
    movq %rax, %rdi

loopcontrol:
    addq $8, %rbx
    loop mainloop

endloop:
    movq $60, %rax
    syscall