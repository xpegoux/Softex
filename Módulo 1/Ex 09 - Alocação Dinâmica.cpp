#include <stdio.h> //biblioteca para entrada e sa�da de dados
#include <stdlib.h> //biblioteca para as fun��es de aloca��o din�micas
#include <locale.h> //biblioteca para utilizar caracteres especiais nas strings.

int main() {
	setlocale(LC_ALL, "Portuguese");
	
	int i, *ptr=NULL; //Criando ponteiro do tipo inteiro *ptr. 
	
	ptr = (int *) malloc(5 * sizeof(int)); // alocando 5 posi��es na mem�ria.
	
	printf("*---Valores referente ao ponteiro de 5 posi��es---*\n\n");
	for (i=0; i<5; i++) {
		ptr[i] = i;
		printf("Ponteiro na posi��o [%d] com valor de: %d\n",ptr[i],ptr[i]*2);
	}
	
	ptr = (int *) realloc(ptr,22*sizeof(int)); //realocando 22 posi��es na mem�ria.
	printf("\n*---Valores referente ao ponteiro de 22 posi��es---*\n\n");
		for (i=0; i<22; i++) {
		ptr[i] = i;
		printf("Ponteiro na posi��o [%d] com valor de: %d\n",ptr[i],ptr[i]*2);
	}
		
	free(ptr); //liberando o bloco.
	
	return 0;
}
