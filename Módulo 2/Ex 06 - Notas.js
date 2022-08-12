//Aluno: Erivaldo Barros
/* Crie dois códigos de sistema de notas para uma escola. 

O primeiro código deve ser um programa que informa se o aluno reprovou, ou não, com base nas três notas que ele adicionou ao programa. Utilize, no mínimo, um operador de atribuição e um operador ternário. 

O segundo código é um programa que o aluno deve escrever duas notas e o retorno informa a nota mínima que ele deve tirar na próxima prova para poder passar com nota sete. */

//para capturar entrada de dados
var print = require('readline-sync');
var nota_1, nota_2, nota_3, media, min;
var resultado, i;
console.log("PRIMEIRO PROGRAMA!\n");

//laço para verificação de notas digitadas incorretamente!
i = true;
while (i == true) {
    i = false;
    nota_1 = Number(print.question('Primeira nota: '));    
    nota_2 = Number(print.question('Segunda nota: '));
    nota_3 = Number(print.question('Terceira nota: '));

    if ((nota_1 < 0 || nota_1 > 10) || (nota_2 < 0 || nota_2 > 10) || (nota_3 < 0 || nota_3 > 10)){ 
        console.log("\n[ERRO] - Você digitou uma nota incorreta, digite-as novamente!\n")
        i = true;
    }    
}
media = (nota_1 + nota_2 + nota_3) / 3;
//Apresentação dos resultados
resultado = media >= 7 ? 'APROVADO(A)' : 'REPROVADO(A)';
console.log(`Aluno(a) foi ${resultado} com a média ${media.toFixed(1)}`);


//Segundo Código, reutilizando as variáveis...
console.log("\nSEGUNDO PROGRAMA!");
i = true;
while (i == true){
    i = false;
    nota_1 = Number(print.question('\nPrimeira nota: '));
    nota_2 = Number(print.question('Segunda nota: '));
    if ((nota_1 < 0 || nota_1 > 10) || (nota_2 < 0 || nota_2 > 10)) { 
        console.log("\n[ERRO] - Você digitou uma nota incorreta, digite-as novamente!\n")
        i = true;
    }
}

min = 0;
media = (nota_1 + nota_2 + min) / 3; //definindo a média com as duas notas
while (media < 7) { //enquanto a média estiver menor que 7 o verificador vai somar +1 no mínimo e atribuir a média
    min++;
    media = (nota_1 + nota_2 + min) / 3; //nova media com o novo valor mínimo.

    if (min > 10) { //se o valor minimo chegar até 10 e a média ainda não tiver sido atingida, o programa irá parar
        break;
    } 
}
if (media < 7) {
    console.log('Você não atingiu a média, sua terceira nota será irrelevante.')
} else {
    console.log(`Nota mínima para atingir a média: ${min.toFixed(1)}`);
}