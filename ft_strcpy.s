section .text
	global _ft_strcpy

_ft_strcpy:
	cmp rsi, 0
	je return_it
	cmp rdi, 0
	je return_it

	; zeroing useful registers
	xor rax, rax
	xor r9, r9

loop_it:
	; iterating using index (rax)
	cmp  [rsi + rax], byte 0
	movzx r9, byte [rsi + rax]
	mov [rdi + rax], r9
	je return_it
	inc rax
	jmp loop_it

return_it:
	mov rax, rdi
	ret
