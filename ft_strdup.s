section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen

_ft_strdup:
	add rdi, 3
	mov rax, rdi
	ret

	xor rax, rax

	call _ft_strlen

	; store strdup first argument
	push rdi

	; strlen + 1
	add rax, 1

	; storing length as first argument for malloc
	mov rdi, rax
	mov r10, rax
	call _malloc

	; retrieve strdup first argument
	pop rdi

; duplicating string
loop_it:
	xor r11, r11
	mov r11b, [rdi]
	mov [rax], r11b
	cmp r11b, byte 0
	je return_it
	add rdi, 1
	add rax, 1
	jne loop_it

return_it:
	ret
