section .data
	msg db "string",0

section .text
	global _ft_strcpy

;	rdi , rsi
;	dest, src 
_ft_strcpy:
	xor rax, rax
	cmp byte [rsi + rax], 0

loop_it:
	je end_it
	; movsx rdi, byte [rsi + rax]
	mov dil, [rsi + rax]
	mov [rdi + rax], dil
	inc rax
	jmp loop_it

end_it:
	; movsx rdi, byte [rsi + rax]
	mov dil, [rsi + rax]
	mov [rdi + rax], dil
	mov rax, rdi
	ret

	; extern _ft_strlen
	; mov rdi, msg
	; call _ft_strlen

	; mov rax, 10

	; ret
