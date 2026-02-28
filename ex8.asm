_start:
 push 21 ;; em assembly passamos os parametros da funcao colocando eles na stack !
 call times2 ;; aqui entao dnv damos mais um push colocando depois do argument a localizacao do retorno da proxima instrucao
 mov ebx, eax ; salvamos o retorno da funcao no retorno aq do arquvio dps d fazer td do times2
 mov eax, 1
 int 0x80

times2:
 push ebp ;;aqui entao salvamos o valor original do ebp antes d entrar na funcao na stack pra poder preservar..
 mov ebp, esp ; guardamos no ebp a ultima localizacao do esp antes d executar a funcao em si o tal prolog da funcao..
 mov eax, [ebp+8] ; bom lembrar que anda de 4 em 4, entao se guardar o arg da funcao foi a primeira coisa q fizemos, se tinha 32 bytes a stack entao no 28 esta o arg, ja q nosso ESP antes d entrar na funcao foi salvo em EBP como 20
 add eax, eax ; aq o purpose da funcao ne multiplicar  por 2.
 mov esp, ebp ; retornamos o valor original do esp
 pop ebp ; em 20 estava o valor de ebp, entao salvamos o valor de volta e vamos para o 24 no esp, que é a localizacao da ultima instrucao
 ret ; executamos o retorno q agr é a instrucao da stack
