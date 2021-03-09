section .text
	global _ft_strcpy

; 	rdi , rsi
; 	dest, src
_ft_strcpy:
	cmp rsi, 0
	je end_it
	cmp rdi, 0
	je end_it

	xor rax, rax
	xor r9, r9
	xor dil, dil
loop_it:
; 	cmp [rsi + rax], byte 0
; 	mov dil, byte [rsi + rax]
; 	mov [rdi + rax], dil
; 	je end_it
; 	inc rax
; 	jmp loop_it

	cmp  [rsi + rax], byte 0
	movzx r9, byte [rsi + rax]
	mov [rdi + rax], r9
	je end_it
	inc rax
	jmp loop_it

	; movzx r9, byte [rsi + 0]
	; mov [rdi + 0], r9
	; movzx r9, byte [rsi + 1]
	; mov [rdi + 1], r9
	; movzx r9, byte [rsi + 2]
	; mov [rdi + 2], r9
	; movzx r9, byte [rsi + 3]
	; mov [rdi + 3], r9
	; movzx r9, byte [rsi + 500]
	; mov [rdi + 500], r9

end_it:
	mov rax, rdi
	ret


; _ft_strcpy:
; 	cmp byte [rsi], 0
; 	je end
; loop:
; 	mov dil, byte [rsi]
; 	xor r9, r9
; 	mov [rdi], r9
; 	mov [rdi], dil
; 	add rsi, 1
; 	cmp byte [rsi], 0
; 	je end
; 	add rdi, 1
; 	jmp loop

; end:
; 	add rdi, 1
; 	xor r9, r9
; 	mov [rdi], r9
; 	mov rax, rdi
; 	ret