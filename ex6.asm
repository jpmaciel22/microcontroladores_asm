global _start
_start: 
  call func ;; aqui meio q colocamos na stack com push a localizacao da proxima instrucao
  mov eax, 1 ;; dai sim q executa o resto dps de rodar tudo d func
  int 0x80

func: 
  mov ebx, 42 ; dai vamos pra ca e executamos isso aaqui
  ret ;; retorrna da nossa funcao dando pop na stack de "instrucoes" e ai volta pra ultima q era pra ser executada antes de etnrar aqui