.global _start
.section .data
mystring:
    .ascii "Hello bro\n"
mystringend:

.equ strlen, mystringend - mystring

.section .text
_start:
    movq $1, %rax
    movq $1, %rdi
    leaq mystring, %rsi
    movq $strlen, %rdx
    syscall

    movq $0x3c, %rax
    movq $0, %rdi
    syscall