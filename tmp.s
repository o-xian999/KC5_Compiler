.intel_syntax noprefix
.globl main
main:
  push 56
  push 22
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  ret
