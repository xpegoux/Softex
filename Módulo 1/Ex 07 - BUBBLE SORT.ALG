Algoritmo "Bubble Sort"

//- vetor seja dez e deve estar em ordem crescente
//- comparar seus elementos dois a dois adjacentes;
//- se os elementos n�o estiverem em ordem, ent�o ordenar;
//- sen�o, avan�ar para o pr�ximo par;
//- repetir a opera��o at� que nenhuma troca possa ser feita no vetor inteiro.

Var

random : vetor [1..10] de inteiro
loop1, troca : inteiro
ordem : logico

Inicio

//loop para alocar numeros digitados do usu�rio.
para loop1 de 1 ate 10 faca
     escreva("Digite qualquer n�mero inteiro [",loop1," de 10 ]: ")
     leia(random[loop1])
fimpara

//declarando ordem como verdadeiro para a condi��o de repeti��o
ordem <- verdadeiro
enquanto ordem = verdadeiro faca
         ordem <- falso //condi��o quando o loop PARA finalizar a ordem, parar o loop ENQUANTO.
         para loop1 de 1 ate 9 faca //ate 9 porque n�o tem como comparar 10 com outra posi��o.
              se random[loop1] > random[loop1+1] entao //se a posi��o atual for maior que a pr�xima, ser� aplicado os valores abaixo
                 troca <- random[loop1] //variavel troca, para armazenar o maior valor e devolve-lo para proxima posi��o.
                 random[loop1] <- random[loop1+1] //atribuindo a posi��o menor na maior.
                 random[loop1+1] <- troca //devolvendo a posi��o menor a posi��o maior, e finalizando a troca
                 ordem <- verdadeiro //para manter o loop enquanto funcionando, enquanto houver trocas de posi��es, se essas trocas acabarem, ent�o o loop enquanto acaba, pois foi declarado falso no in�cio dele.
              fimse
         fimpara
fimenquanto
limpatela
escreval("")
escreval("Ordenando n�meros digitados...")
escreval("")
para loop1 de 1 ate 10 faca //mais um loop na mesma vari�vel loop1, para poder printar as posi��es ordenadas anteriormente...
     escreval(loop1,"� -",random[loop1])
fimpara
Fimalgoritmo