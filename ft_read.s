section .text
	global _ft_read

_ft_read:
	; backup
	push rdi
	push rsi
	push rdx

	mov rax, 0x2000003
	syscall

	pop rdi
	pop rsi
	pop rdx

	ret
