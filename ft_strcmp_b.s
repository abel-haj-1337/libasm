section .text
	global _ft_strcmp

_ft_strcmp:
	; initializing values
	xor rax, rax
	xor r10, r10

loop_it:
	mov r10b, byte [rdi]
	cmp r10b, [rsi]
	jg greater_than
	jb lower_than
	cmp r10b, byte 0
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