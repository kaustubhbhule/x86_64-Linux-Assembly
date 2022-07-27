section .data
    digit db 0,10

section .text
    global _start

_start:

    mov rax, 4
    add rax, 2
    call _printRAXDigit

    mov rax, 4
    sub rax, 2
    call _printRAXDigit

    mov rax, 4
    mov rbx, 2
    mul rbx
    call _printRAXDigit

    mov rax, 4
    mov rbx, 4
    div rbx
    call _printRAXDigit

    mov rax, 60
    mov rdi, 0
    syscall

_printRAXDigit:

    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 2
    syscall
    ret
