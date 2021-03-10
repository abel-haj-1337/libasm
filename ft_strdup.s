section .text
	global _ft_strdup

_ft_strdup:
	add rdi, 3
	mov rax, rdi
	ret

	extern _ft_strlen
	extern malloc
	xor rax, rax

	call _ft_strlen

	; store strdup first argument
	push rdi

	; strlen + 1
	add rax, 1

	; storing length as first argument for malloc
	mov rdi, rax
	mov r11, rax
	call malloc

	; storing allocated space in another register
	mov r10, rax

	; retrieve strdup first argument
	pop rdi

	; duplicating string
	xor rax, rax


	jmp return_it

loop_it:

return_it:
	mov rax, rdi
	ret
