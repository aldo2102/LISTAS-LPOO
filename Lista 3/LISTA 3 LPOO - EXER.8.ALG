Algoritmo "semnome"
// Disciplina   : [LPOO)
// Professor   : Aldo Henrique
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/03/2019
Var
   n,i:inteiro



Inicio
   escreva ("Digite um n�mero m�ximo e tirei os primeirosn�meros pares e depois os n�meros impares:")
   leia(n)

   escreval ("N�meros pares: ")
   para i de 1 ate n passo 1 faca
      se i mod 2 = 0 entao
         escreval (i)
      fimse
   fimpara

   escreval ("N�meros �mpares: ")
   para i de 1 ate n passo 1 faca
      se i mod 2=1 entao
         escreval (i)
      fimse
   fimpara

Fimalgoritmo