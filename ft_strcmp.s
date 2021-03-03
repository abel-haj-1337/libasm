section .text
	global _ft_strcmp

_ft_strcmp:
	; initializing index
	xor rax, rax

loop_it:
	cmp byte [rdi + rax], [rsi + rax]
	je return_it
	inc rax
	jmp loop_it

return_it:
	ret