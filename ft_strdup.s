section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern ___error
	extern _ft_strcpy

_ft_strdup:
	; initializing
	xor rax, rax
	xor r9, r9

	; rdi	 "str"
	call _ft_strlen

	; store rdi
	push rdi

	; rax	 length
	add rax, 1
	; strlen + 1

	mov rdi, rax
	call _malloc

	; retrieve rdi
	pop rdi

	; protecting malloc
	cmp rax, 0
	je _error_it

	mov rsi, rdi
	mov rdi, rax
	call _ft_strcpy
	ret

_error_it:
	push rax
	call ___error
	pop qword [rax]
	mov rax, -1
	ret

return_it:
	ret
