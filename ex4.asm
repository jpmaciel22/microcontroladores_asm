global _start
section .data
  addr db "yellow"

section .text
_start:
  mov [addr], byte 'H' ; aqui o byte é pra dizer q queremos mover pra dentro do addr a representacao em bytes do caractere H, e o [] é pra dizer q estamso fazendo essa operacao movendo os dados into o valor do addr, ou seja na posicao 0, onde estava o y
  mov [addr+5], byte '!' ; ahaha entendeu agora? o w virou ! , portanto saiu de yellow pra Hello!
  mov eax, 4 ;sys_write call
  mov ebx, 1 ;stdout file descriptor
  mov ecx, addr ; bytes to write
  mov edx, 6 ; number of bytes to write pq ne yellow tem 6 letras
  int 0x80 ; perform system call
  mov eax, 1 ;; sys exit
  mov ebx, 0 ; exit status 0
  int 0x80


;; ===============

section .data
; db is 1 byte
name1 db "string"
name2 db 0xff
name3 db 100

;dw is 2 bytes
name4 dw 0x1234
name5 dw 1000

;dd is 4 bytes
name6 dd 0x12345678
name7 dd 100000