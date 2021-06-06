section .text
	global _ft_strlen

_ft_strlen:
	; zeroing rax
	xor rax, rax

loop_it:
	; if specified byte equals '\0'
	cmp byte [rdi + rax], 0
	; then exit
	je return_it
	; else increment index
	inc rax
	; and repeat
	jmp loop_it

return_it:
	; exit everything
	ret
