Algoritmo "semnome"
// Disciplina   : [LPOO)
// Professor   : Aldo Henrique 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Hyago Santana
// Data atual  : 11/03/2019
Var
n1,n2,n3,maior:real

Inicio
escreval("Qual a primeira nota?")
leia (n1)
escreval("Qual a segunda nota?")
leia (n2)
escreval("Qual a terceira nota?")
leia (n3)

maior <- n1

se n2 > maior entao
maior <- n2
fimse

se n3 > maior entao
maior <- n3
fimse

escreval("A maior nota � ", maior)
escreval ("A m�dia � ", (n1+n2+n3)/3)




Fimalgoritmo