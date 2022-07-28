section .data
    digit db 0,10

section .text
    global _start

%macro sum 2
    mov rax, %1
    add rax, %2
    call _printRAXDigit
%endmacro

%macro exit 0
    mov rax, 60
    mov rdi, 0
    syscall
%endmacro

_start:
    sum 3, 2
    exit

_printRAXDigit:
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 2
    syscall
    ret
