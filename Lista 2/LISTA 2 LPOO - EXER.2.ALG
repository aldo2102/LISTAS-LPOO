Algoritmo "semnome"
// Disciplina   : [LPOO)
// Professor   : Aldo Henrique 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Hyago Santana
// Data atual  : 11/03/2019
Var
a,b,c: inteiro

Inicio
escreval("Qual a medida do lado A?")
leia (a)
escreval("Qual a medida do lado B?")
leia (b)
escreval("Qual a medida do lado C?")
leia (c)

se ((a+b) > c) e ((a+c) >b) e ((b+c) > a) entao
se (a=b) e (b=c) entao
escreval ("Este tri�ngulo � equilatero")
fimae
se (a <> b) e (b <> c) entao
escreval ("Este tri�ngulo � escaleno")
fimse
se ((a=b) ou (b=c) ou (c=a)) e ((a<>b) ou (a<>c)) entao
escreval ("Este tri�ngulo is�celes")
fimse
senao
escreva ("Esta forma n�o � un tri�ngulo")
fimse




Fimalgoritmo
fimse