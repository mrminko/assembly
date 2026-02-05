.global _start
.section .data
ncount:
    .quad 7
numbers:
    .quad 5, 20, 33, 80, 52, 10, 1

.section .text
_start:
    movq ncount, %rcx
    movq $0, %rbx
    movq $0, %rdi
    cmp $0, %rcx
    je loopend

mainloop:
    movq numbers(, %rbx, 8), %rax
    cmp %rdi, %rax
    jbe loopcontrol
    movq %rax, %rdi

loopcontrol:
    incq %rbx
    loopq mainloop

loopend:
    movq $60, %rax
    syscall