BITS 64

global _start
section.rodata
 helloworld db "Hello World", 10, 0
 helloworld_len equ $-helloworld
 
section .text

_start : 
 mov rax, 1
 mov rdi, 0x1
 mov rsi, helloworld
 mov rdx, helloworld_len
 syscall
 jmp_exit

_exit:
 mov rax, 0x3c
 mov rdi, 0
 syscall
