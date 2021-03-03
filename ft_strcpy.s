section .data
	msg db "string",0
section .text
	global _ft_strcpy

_ft_strcpy:
	extern _ft_strlen
	mov rdi, msg
	call _ft_strlen
	; mov rax, 10
	ret
