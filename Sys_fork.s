BITS 64

extern printf

global _main

section .rodata
	print_result db 'pid => %d', 10, 0
section .text
	
_main:
	jmp _print_pid


_print_pid:
	mov rax, 57
	syscall
	mov rdi, print_result
	mov rsi, rax
	call printf
	syscall
	jmp _exit


_exit:
	mov rax, 0x3C
	mov rdi, 0
	syscall
	
