section .text
	global _ft_strcmp

; rdi : first argument
; rsi : second argument
_ft_strcmp:
	; initializing values
	xor rax, rax
	xor r10, r10
	xor r9, r9

loop_it:
	mov r9b, [rdi]
	mov r10b, [rsi]
	cmp r9b, 0
	je diff_then_ret
	cmp r9b, r10b
	jne diff_then_ret
	add rdi, 1
	add rsi, 1
	jmp loop_it

equal_to:
	mov rax, 0
	ret

diff_then_ret:
	sub r9, r10
	mov rax, r9
	ret
