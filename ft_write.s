section .text
	global _ft_write
	extern ___error

_ft_write:
	; backup
	push rdi
	push rsi
	push rdx

	mov rax, 0x2000004
	syscall

	pop rdi
	pop rsi
	pop rdx

	ret
