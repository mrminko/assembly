.global _start
.section .data
ncount:
    .quad 7
numbers:
    .quad 5, 20, 33, 80, 52, 10, 1

.section .text
_start:
    movq ncount, %rcx
    movq $numbers, %rbx
    movq $0, %rdi
    cmp $0, %rcx
    je endloop

mainloop:
    movq (%rbx), %rax
    cmp %rdi, %rax
    jbe loopcontrol
    movq %rax, %rdi

loopcontrol:
    addq $8, %rbx
    loopq mainloop

endloop:
    movq $60, %rax
    syscall