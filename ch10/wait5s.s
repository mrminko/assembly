.global _start
.section .data
curtime:
    .quad 0

.section .text
_start:
    leaq curtime, %rdi
    movq $0xc9, %rax
    syscall
    movq curtime, %rdx
    addq $5, %rdx

timeloop:
    movq $0xc9, %rax
    syscall
    cmpq %rdx, curtime
    jb timeloop

end:
    movq $0x3c, %rax
    movq $0, %rdi
    syscall

