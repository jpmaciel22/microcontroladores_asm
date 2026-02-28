global _start

section .text
_start:
  sub esp, 8
  mov [esp], byte 'H'
  mov [esp+1], byte 'e'
  mov [esp+2], byte 'l'
  mov [esp+3], byte 'l'
  mov [esp+4], byte 'o'
  mov [esp+5], byte '!'
  mov eax, 4 ;sys_write call
  mov ebx, 1 ;stdout file descriptor
  mov ecx, esp
  mov edx, 6
  int 0x80 ; perform system call
  mov eax, 1 ;; sys exit
  mov ebx, 0 ; exit status 0
  int 0x80

;; or
global _start
section .data
  msg db 'Hello!', 0

section .text
_start:
  mov ecx, msg
  mov edx, 6
  mov eax, 4
  mov ebx, 1
  int 0x80
  mov eax, 1
  mov ebx, 0
  int 0x80