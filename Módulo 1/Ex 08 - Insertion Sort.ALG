Algoritmo "Insertion Sort"
//Fa�a um algoritmo de ordena��o utilizando o m�todo insertion sort.
//Crie um m�todo que execute as seguintes opera��es:
//- Tamanho do vetor: 30; OK
//- Utilize n�meros �mpares; OK
//- Opere em ordem crescente. OK

Var
random : vetor[1..30] de inteiro
i, naleat, aux, indice : inteiro
sair : logico
Inicio
//Loop para definir os num�ros aleat�rios impares no vetor de 30 posi��es
para i de 1 ate 30 faca

     sair <- verdadeiro
     enquanto sair = verdadeiro faca //este la�o s� vai parar at� que um n�mero aleat�rio �mpar for gerado

        aleatorio on //fun��o para gerar n�meros aleat�rios.
        leia(naleat)
        aleatorio off //encerrando a fun��o.

        se (naleat mod 2) = 1 entao //condi��o para n�mero impar.
           random[i] <- naleat //atribuindo as posi��es do vetor os n�meros randomicos impares.
           sair <- falso //saindo do loop enquanto, caso um n�mero �mpar for gerado.
           limpatela //para parar de exibir os n�meros gerados, evitar polui��o de dados.
        fimse

     fimenquanto

fimpara

//Apresentando os n�meros aleat�rios
escreval("*-----N�meros �mpares Gerados-----*")
para i de 1 ate 30 faca
     escreval(random[i])
fimpara

//Insertion Sort
para i de 2 ate 30 faca //iniciando a partir da segunda posi��o, para comparar com a anterior
     aux <- random[i] //variavel de auxilio para atribui��o das posi��es
     indice <- i-1 //recebendo a posi��o anterior do �ndice[i]

     enquanto (aux < random[indice]) faca //se o elemento aux for menor que o elemento random na posi��o indice
              random[indice +1] <- random[indice] //atribuir para a proxima posi��o do elemento indice, o valor do mesmo
              indice <- indice -1 //verifica��o do loop para organizar os dados, se ele n�o for zero, ir� repetir o procedimento acima, decrementando o indice
              se indice=0 entao
                 interrompa
              fimse
     fimenquanto

     random[indice +1] <- aux //variavel para por sempre o menor valor em primeira posi��o, ap�s o loop.
fimpara

//Apresentando o resultado ordenado
escreval("*-----N�meros �mpares Ordenados-----*")
para i de 1 ate 30 faca
     escreval(random[i])
fimpara

Fimalgoritmo



