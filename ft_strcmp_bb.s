section .data
  global _ft_strcmp

_ft_strcmp:
  ; first param RDI
  ; second param RSI

  ; initializing
  xor rax, rax

loop_it:
  mov r9b, [rdi]
  mov r10b, [rsi]
  cmp r9b, r10b
  jg greater_than
  jb lower_than
  cmp r9b, 0
  je equal_to
  add rdi, 1
  add rsi, 1

greater_than:
  sub r9b, r10b
  mov rax, r9b
  ret

lower_than:
  sub r9b, r10b
  mov rax, r9b
  ret

equal_to:
  mov rax, 0
  ret
