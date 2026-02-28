global _start
_start:
  call func
  mov eax, 1
  mov ebx, 0
  int 0x80

func:
  push ebp ;; guarda o valor de ebp na stack ( chamado de prolog da funcao )
  mov ebp, esp ;; guardamos a ultima localizacao do topo da stack no ebp
  sub esp, 2 
  mov [esp], byte 'H'
  mov [esp+1], byte 'i'
  mov eax, 4 ;; sys write system call
  mov ebx, 1 ;; stdout file descriptor
  mov ecx, esp ; bytes to write
  mov edx, 2 ;; number of bytes to write
  int 0x80 ;; perfmor system call
  mov esp, ebp ;; ebp tinha preservado como estava a stack com a ultima localizacao no topo
  pop ebp  ( epilog da funcao )
  ret