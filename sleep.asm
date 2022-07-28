section .data
    text db "Hello, World!",10
    delay dq 5, 0

section .text
    global _start

%macro print 1
    mov rax, 1
    mov rdi, 1
    mov rsi, %1
    mov rdx, 14
    syscall
%endmacro

%macro sleep 0
    mov rax, 35
    mov rdi, delay
    mov rsi, 0
    syscall
%endmacro

%macro exit 0
    mov rax, 60
    mov rdi, 0
    syscall
%endmacro

_start:
    sleep
    print text
    exit
