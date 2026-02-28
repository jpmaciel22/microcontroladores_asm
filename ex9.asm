; aprendendo a chamar as funcoes em C

global main
extern printf ; meio q diz q printf é algo externo q vai ser utilizado.

section .data
 msg db "Testing %i...", 0x0a, 0x00

main:
 push ebp
 mov ebp, esp
 push 123
 push msg 
 call printf
 mov eax, 0
 mov esp, ebp
 pop ebp
 ret