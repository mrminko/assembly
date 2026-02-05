##findindex

.global _start
.section .data
ncount:
    .quad 7
numbers:
    .quad 5, 20, 33, 80, 52, 10, 1
tofind:
    .quad 52

.section .text
_start:
    movq $-1, %rdi
    movq ncount, %rcx
    movq $0, %rax
    movq tofind, %rdx
    leaq numbers, %rbx
    cmp $0, %rcx
    je end

mainloop:
    cmp %rax, %rcx
    jge end
    cmp (%rbx,%rax,8), %rdx
    je found
    incq %rax
    jmp mainloop

found:
    movq %rax, %rdi

end:
    movq $60, %rax
    syscall
