Algoritmo "Insertion Sort"
//Faça um algoritmo de ordenação utilizando o método insertion sort.
//Crie um método que execute as seguintes operações:
//- Tamanho do vetor: 30; OK
//- Utilize números ímpares; OK
//- Opere em ordem crescente. OK

Var
random : vetor[1..30] de inteiro
i, naleat, aux, indice : inteiro
sair : logico
Inicio
//Loop para definir os numéros aleatórios impares no vetor de 30 posições
para i de 1 ate 30 faca

     sair <- verdadeiro
     enquanto sair = verdadeiro faca //este laço só vai parar até que um número aleatório ímpar for gerado

        aleatorio on //função para gerar números aleatórios.
        leia(naleat)
        aleatorio off //encerrando a função.

        se (naleat mod 2) = 1 entao //condição para número impar.
           random[i] <- naleat //atribuindo as posições do vetor os números randomicos impares.
           sair <- falso //saindo do loop enquanto, caso um número ímpar for gerado.
           limpatela //para parar de exibir os números gerados, evitar poluição de dados.
        fimse

     fimenquanto

fimpara

//Apresentando os números aleatórios
escreval("*-----Números Ímpares Gerados-----*")
para i de 1 ate 30 faca
     escreval(random[i])
fimpara

//Insertion Sort
para i de 2 ate 30 faca //iniciando a partir da segunda posição, para comparar com a anterior
     aux <- random[i] //variavel de auxilio para atribuição das posições
     indice <- i-1 //recebendo a posição anterior do índice[i]

     enquanto (aux < random[indice]) faca //se o elemento aux for menor que o elemento random na posição indice
              random[indice +1] <- random[indice] //atribuir para a proxima posição do elemento indice, o valor do mesmo
              indice <- indice -1 //verificação do loop para organizar os dados, se ele não for zero, irá repetir o procedimento acima, decrementando o indice
              se indice=0 entao
                 interrompa
              fimse
     fimenquanto

     random[indice +1] <- aux //variavel para por sempre o menor valor em primeira posição, após o loop.
fimpara

//Apresentando o resultado ordenado
escreval("*-----Números Ímpares Ordenados-----*")
para i de 1 ate 30 faca
     escreval(random[i])
fimpara

Fimalgoritmo



