#include <stdio.h> //biblioteca para entrada e saída de dados
#include <stdlib.h> //biblioteca para as funções de alocação dinâmicas
#include <locale.h> //biblioteca para utilizar caracteres especiais nas strings.

int main() {
	setlocale(LC_ALL, "Portuguese");
	
	int i, *ptr=NULL; //Criando ponteiro do tipo inteiro *ptr. 
	
	ptr = (int *) malloc(5 * sizeof(int)); // alocando 5 posições na memória.
	
	printf("*---Valores referente ao ponteiro de 5 posições---*\n\n");
	for (i=0; i<5; i++) {
		ptr[i] = i;
		printf("Ponteiro na posição [%d] com valor de: %d\n",ptr[i],ptr[i]*2);
	}
	
	ptr = (int *) realloc(ptr,22*sizeof(int)); //realocando 22 posições na memória.
	printf("\n*---Valores referente ao ponteiro de 22 posições---*\n\n");
		for (i=0; i<22; i++) {
		ptr[i] = i;
		printf("Ponteiro na posição [%d] com valor de: %d\n",ptr[i],ptr[i]*2);
	}
		
	free(ptr); //liberando o bloco.
	
	return 0;
}
