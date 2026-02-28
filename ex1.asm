section .data
  msg db "Hello, world!", 0x0a ; 0x0a aqui e´ 10 e é o codigo para /n
  len equ $ - msg ; equ é const assignment ai no caso seria subtracao do comeco da string pro final da string

section .text
_start:
mov eax, 4 ; sys_write system call
mov ebx, 1 ; stdout file descriptor
mov ecx, msg ; bytes to write
mov edx, len ; number of bytes to write
int 0x80 ; perform system call
mov eax, 1 ; sys_exit system call
mov ebx, 0 ; exit status is 0 
int 0x80

mov ebx, 123 ; ebx = 123
mov eax, ebx ; eax = ebx
add ebx, ecx ; ebx += ecx
sub ebx, edx ; ebx -= edx
mul ebx ; eax * ebx
div edx ; eax /= edx