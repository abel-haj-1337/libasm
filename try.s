section .data
	msg db "Asmaa kh",10
	len equ $ - msg
section .text
	global _main

_main:
	mov rdi, 1
	mov rsi, msg
	mov rdx, len 
	mov rax, 0x2000004
	syscall
	ret

	;mov rax, 1
	;mov rdi, 1
	;mov rsi, msg
	;mov rdx, 13
	;syscall

	;mov rax, 60
	;mov rdi, 0
	;syscall
