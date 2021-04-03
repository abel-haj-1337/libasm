section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern ___error

_ft_strdup:
	; FOR TESTING
	; add rdi, 3
	; mov rax, rdi
	; ret
	; rax = 0 pop qword[056146546]

	xor rax, rax
	; rdi = "str"
	; rdi = ?

	call _ft_strlen

	; store strdup first argument
	push rdi

	; strlen + 1
	add rax, 1

	; storing length as first argument for malloc
	mov rdi, rax
	mov r10, rax
	call _malloc

	; now rax holds allocated space
	; and r10 holds string length

	; retrieve strdup first argument
	pop rdi

	xor r9, r9

loop_it:
	cmp [rdi + r9], byte 0
	movzx r11, byte [rdi + r9]
	mov [rax + r9], r11
	je return_it
	inc r9
	jmp loop_it

	je return_it
	add rdi, 1
	add rax, 1

	jne loop_it

	call ___error

return_it:
	ret
