Algoritmo "Projeto1"
// Disciplina   : [LPOO)
// Professor   : Aldo Henrique
// Descri��o   :PROJETO 1 - LPOO
// Autor(a)    : Hyago Santana Mariano
// Data atual  : 07/04/2019
Var
   // MENU
   opcao1:inteiro

   //4. RETORNAR MAIOR, MENOR E MEDIA
   Maior,Menor:inteiro

   mediaNum: real
   media: inteiro


procedimento divisao //funcao de divis�o
var
   n1, n2, resultado: real
inicio
   escreval("            ***VOC� ESCOLHEU DIVIS�O***")
   escreval("Digite primeiro o n�mero: ")
   leia (n1)
   repita  //repita feito para que seja digitado um n�mero diferente de 0
      escreval ("Digite o segundo n�mero: ")
      leia (n2)
      se (n2 <> 0) entao
         resultado <- n1/n2
         escreval ("Resultado da divis�o: ", resultado)
         escreval ("")
      senao
         escreval ("N�o � poss�vel dividir por 0, tente novamente com outro n�mero")
      fimse
   ate (n2 <> 0)
fimprocedimento
//fim da funcao de divisao

procedimento faixaetaria //funcao faixa etaria
var
   pessoa1,idade1,media1, media2,n1,n2:inteiro
   resultado:real
   sexo:caractere
   x:inteiro
   resultado1,resultado2:real
inicio
   escreval ("Digite a quantidade de pessoas: ")
   leia (pessoa1)
   para x de 1 ate pessoa1 passo 1 faca
      //vai repetir at� o n�mero digitado pelo usu�rio
      escreval ("Digite a idade da pessoa", x, ": ")
      repita //vai repetir at� o n�mero do usu�rio n�o for negativo
         leia (idade1)
         se (idade1 < 0) entao // IDADE NEGATIVA
            escreval ("A idade n�o pode ser negativa, tente novamente: ")
         fimse
      ate (idade1 >= 0)
      escreval ("Digite o sexo da pessoa", x, ",sendo M para masculino e F para feminino: ")
      repita //repita para caso seja digitado uma letra diferente das op��es
         leia (sexo)
         se (sexo <> "m")e(sexo <> "f") entao
            escreval ("Sexo n�o correspondente a masculino ou feminino, tente novamente: ")
         fimse
      ate (sexo = "m")ou(sexo = "f")
      media <- media+idade1
      se (sexo = "m") entao
         n1 <- n1+1 // m�dia masculina
         media1 <- media1+idade1
      fimse
      se (sexo = "f") entao
         n2 <- n2+1 // m�dia feminina
         media2 <- media2+idade1
      fimse
   fimpara

   se (pessoa1 <> 0) entao // Para evitar divis�o por 0
      resultado <- media/pessoa1
      escreval ("A m�dia de faixa etaria �: ", resultado)
   senao
      escreval ("Nenhuma pessoa informada!")
   fimse
   se (n1 <> 0) entao // Para evitar divis�o por 0
      resultado1 <- media1/n1
      escreval ("A m�dia de faixa etaria do sexo masculino �: ", resultado1)
   senao
      escreval ("Nenhuma pessoa do sexo masculino encontrada!")
   fimse
   se (n2 <> 0) entao // Para evitar divis�o por 0
      resultado2 <- media2/n2
      escreval ("A m�dia de faixa etaria do sexo feminino �: ", resultado2)
   senao
      escreval ("Nenhuma pessoa do sexo feminino encontrada!")
   fimse
   escreval ("")
fimprocedimento //fim da fun��o faixa etaria

procedimento numerosprimos
var
   p1,n1,x,primo1,resultado:inteiro
inicio
   escreval ("Digite um n�mero para que seja calculado a soma de todos os n�meros primos entre 1 e ele: ")
   leia (p1)
   escreval ("N�meros primos de 1 at� seu n�mero: ")
   para x de 1 ate p1 passo 1 faca
      n1 <- 0 //reseta o contador do n�mero primo
      para primo1 de 1 ate x passo 1 faca
         se (x mod primo1 = 0) entao //as variaveis x e idade1 alternam entre 1 e o valor de p1
            n1 <- n1+1 //contador para identificar o n�mero primo
         fimse
      fimpara
      se (n1 = 2) entao
         escreval (x)
         resultado <- resultado+x
      fimse
   fimpara
   escreval ("A soma de todos os n�meros primos �: ", resultado)
   escreval ("")
fimprocedimento

procedimento retornar //funcao retornar
var
   numeroInformado,numeroMaximo,Snum,contador4:inteiro
   mediaNum:real
inicio

   mediaNum <- 0
   numeroInformado <- 0
   numeroMaximo <- 0
   Snum <- 0

   escreval ("Informe quantos n�meros deseja calcular:")
   leia (numeroMaximo)

   se (numeroMaximo > 0) entao
      para contador4 de 1 ate numeroMaximo passo 1 faca
         escreval ("Digite o ", contador4,"� n�mero: ")
         leia (numeroInformado)
         se (contador4=1) entao
            Maior <- numeroInformado
            Menor <- numeroInformado
         fimse

         se(numeroInformado > Maior)entao
            Menor <- numeroInformado
         senao
            se (numeroInformado < Menor) entao
               Menor <- numeroInformado
            fimse
         fimse
         Snum <- Snum+numeroInformado
      fimpara
      mediaNum <- Snum/numeroMaximo

      escreval ("O maior n�mero digitado foi: ", Maior)
      escreval ("O menor n�mero digitado foi: ", Menor)
      escreval ("A m�dia entre os n�meros �: ", mediaNum)
   fimse
fimprocedimento  //fim funcao retornar

procedimento codigomorse //inicio funcao morse
var
   numeroMorse:inteiro

inicio
   escreval("1= . _ _ _ _")
   escreval("2= . . _ _ _")
   escreval("3= . . . _ _")
   escreval("4= . . . . _")
   escreval("5= . . . . .")
   escreval("6= _ . . . .")
   escreval("7= _ _ . . .")
   escreval("8= _ _ _ . .")
   escreval("9= _ _ _ _ .")
   escreval("0= _ _ _ _ _")

   escreval ("Digite um n�mero de 0 � 20 para codificar: ")
   leia (numeroMorse)

   ESCOLHA numeroMorse
   caso 0
      escreval ("0 em c�digo morse = _ _ _ _ _")
   caso 1
      escreval ("1 em c�digo morse= . _ _ _ _")
   caso 2
      escreval("2 em c�digo morse= . . _ _ _")
   caso 3
      escreval("3 em c�digo morse= . . . _ _")
   caso 4
      escreval("4 em c�digo morse= . . . . _")
   caso 5
      escreval("5 em c�digo morse= . . . . .")
   caso 6
      escreval("6 em c�digo morse= _ . . . .")
   caso 7
      escreval("7 em c�digo morse= _ _ . . .")
   caso 8
      escreval("8 em c�digo morse= _ _ _ . .")
   caso 9
      escreval("9 em c�digo morse= _ _ _ _ .")
   caso 10
      escreval("10 em c�digo morse= . _ _ _ _ _ _ _ _ _")
   caso 11
      escreval("11 em c�digo morse= ._ _ _ _ ._ _ _ _")
   caso 12
      escreval("12 em c�digo morse= ._ _ _ _ . . _ _ _")
   caso 13
      escreval("13 em c�digo morse= ._ _ _ _ . . . _ _")
   caso 14
      escreval("14 em c�digo morse= ._ _ _ _ . . . . _")
   caso 15
      escreval("15 em c�digo morse= ._ _ _ _ . . . . .")
   caso 16
      escreval("16 em c�digo morse= ._ _ _ _ _ . . . .")
   caso 17
      escreval("17 em c�digo morse= ._ _ _ _ _ _ . . .")
   caso 18
      escreval("18 em c�digo morse= ._ _ _ _ _ _ _ . .")
   caso 19
      escreval("19 em c�digo morse= ._ _ _ _ _ _ _ _ .")
   caso 20
      escreval("20 em c�digo morse= . . _ _ _ _ _ _ _ _")

   OUTROCASO
      ESCREVA("N�mero digitado � inv�lida!")
      ESCREVAL("")

   FIMESCOLHA
fimprocedimento //fim funcao morse

procedimento mudancadebase //inicio fun��o mudancadebase
var
   letra,bin:caractere
   p1,i1,i2,x:inteiro
   result:inteiro

inicio
   escreval ("Digite d para transformar decimal em binario e b para transformar binario em decimal")
   escreval ("")
   leia (letra)
   se (letra = "d") entao
      escreval ("Entre com um n�mero inteiro:")
      leia (p1)
      i1 <- p1
      repita
         se (p1 mod 2 = 0) entao // incremento de 0 ou 1 no valor bin�rio
            bin <- "0" + bin
         senao
            bin <- "1" + bin
         fimse
         p1 <- p1 div 2 // resultado da divis�o por 2
      ate (p1 <= 0)
      escreval ("A representa��o bin�ria de", i1, " �: ", bin)
   fimse
   se (letra = "b") entao
      escreval ("Entre com um n�mero igual a quantia de n�meros bin�rios:")
      escreval ("")
      leia (p1)
      escreval ("Agora digite o n�mero bin�rio:")
      para x de 0 ate (p1-1) passo 1 faca
         leia (i1)
         se (i1 = 1) entao
            result <- result+(2^x)
         senao
            result <- result+0
         fimse
      fimpara
      escreval ("A representa��o decimal �:", result)
   fimse
fimse



fimprocedimento //fim funcao mudancadebase

Inicio
   repita
      escreval ("       ***SEJA BEM-VINDO(A) AO PROJETO DO HYAGO!***")
      escreval ("   Escolha o que deseja, digite sua op��o e d� enter:")
      escreval ("") // escreval para pular linha
      escreval ("1. Divis�o")
      escreval ("2. Faixa et�ria")
      escreval ("3. N�meros primos")
      escreval ("4. Retornar o maior, menor e m�dia")
      escreval ("5. C�digo Morse")
      escreval ("6. Mudan�a de Base")
      escreval ("7. Sair")
      escreval ("") // escreval para pular linha
      leia (opcao1)
      limpatela

      //OP��O 1
      se (opcao1 = 1) entao
         divisao
      fimse
      // at� aqui est� funcionando

      //OP��O 2
      se (opcao1 = 2) entao
         faixaetaria
      fimse
      // at� aqui est� funcionando

      //OP��O 3
      se (opcao1 = 3) entao
         numerosprimos
      fimse
      // at� aqui est� funcionando

      //OP��O 4
      se (opcao1 = 4) entao
         retornar
      fimse
      //at� aqui est� funcionando

      //OP��O 5
      se (opcao1= 5) entao
         codigoMorse
      fimse
      //at� aqui est� funcionando

      //OP��O 6
      se (opcao1 = 6) entao
         mudancadebase
      fimse

      //OP��O 7
   ate (opcao1 =7)
   //at� aqui est� funcionando



Fimalgoritmo

