Algoritmo "semnome"
// Disciplina   : [LPOO)
// Professor   : Aldo Henrique
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/03/2019
Var
   n,divisor,ndivisores:inteiro



Inicio
   escreva ("Digite um n�mero: ")
   leia (n)

   enquanto(ndivisores <= 2) e (divisor <= n) faca
      se n mod divisor = 0 entao
         ndivisores <- ndivisores +1
      fimse
      divisor <- divisor +1
   fimenquanto

   se ndivisores = 2 entao
      escreva ("N�mero primo")
   senao
      escreva ("N�mero n�o primo")
   fimse

Fimalgoritmo