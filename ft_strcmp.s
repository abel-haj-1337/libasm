section .text
	global _ft_strcmp

_ft_strcmp:
	; initializing index
	xor rax, rax
	xor r9, r9

loop_it:
	movzx r9, byte [rdi]
	cmp r9, [rsi]
	jg greater_than
	jb lower_than
	cmp r9, byte 0
	je equal_to
	add rdi, 1
	add rsi, 1
	jmp loop_it

equal_to:
	mov rax, 0
	jmp return_it

greater_than:
	mov rax, 1
	jmp return_it

lower_than:
	mov rax, -1
	jmp return_it

return_it:
	ret