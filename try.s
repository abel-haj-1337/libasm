section .data
	s_msg db ""
	msg db "test",10
	len equ $ - msg
	
section .text
	global _main

_main:
	mov rdi, 1
	mov rsi, msg
	mov rdx, 5 
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
