.global _start

.section .data
source:
    .quad 9, 23, 55, 1, 3
dest:
    .quad 0, 0, 0, 0, 0

.section .text
_start:
    leaq source, %rsi
    leaq dest, %rdi
    movq $3, %rcx
    rep movsq
    movq dest + 8, %rdi
    movq $60, %rax
    syscall