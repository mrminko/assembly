.global _start
.section .data
mytext:
    .ascii "This is a string of characters.\0"

.section .text
_start:
    leaq mytext, %rbx
    movq $0, %rdi

mainloop:
    movb (%rbx), %al
    cmpb $0, %al
    je finish
    cmpb $'a', %al
    jb loopcontrol
    cmpb $'z', %al
    ja loopcontrol
    incq %rdi

loopcontrol:
    incq %rbx
    jmp mainloop

finish:
    movq $60, %rax
    syscall