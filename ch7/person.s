.equ WEIGHT_OFFSET, 0
.equ HEIGHT_OFFSET, WEIGHT_OFFSET + 8
.equ HAIRCOLOR_OFFSET, HEIGHT_OFFSET + 8
.equ AGE_OFFSET, HAIRCOLOR_OFFSET + 8

.global WEIGHT_OFFSET, HEIGHT_OFFSET, HAIRCOLOR_OFFSET, AGE_OFFSET, _start

.section .data
person:
    .quad 50, 123, 2, 30

.section .text
_start:
    leaq person, %rbx
    movq AGE_OFFSET(%rbx), %rdi
    movq $60, %rax
    syscall