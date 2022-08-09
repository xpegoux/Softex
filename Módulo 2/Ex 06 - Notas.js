//Aluno: Erivaldo Barros
/* Crie dois códigos de sistema de notas para uma escola. 

O primeiro código deve ser um programa que informa se o aluno reprovou, ou não, com base nas três notas que ele adicionou ao programa. Utilize, no mínimo, um operador de atribuição e um operador ternário. 

O segundo código é um programa que o aluno deve escrever duas notas e o retorno informa a nota mínima que ele deve tirar na próxima prova para poder passar com nota sete. */

//Primeiro Código
var readline = require('readline-sync');
var nota_1, nota_2, nota_3, media, min;
nota_1 = Number(readline.question('Primeira nota: '));
nota_2 = Number(readline.question('Segunda nota: '));
nota_3 = Number(readline.question('Terceira nota: '));

media = (nota_1 + nota_2 + nota_3) / 3;
console.log(`Média: ${media.toFixed(1)}`);
media = media >= 7 ? 'APROVADO' : 'REPROVADO';
console.log(media);

//Segundo Código, reutilizando as variáveis...
nota_1 = Number(readline.question('\nPrimeira nota: '));
nota_2 = Number(readline.question('Segunda nota: '));

min = 0
media = (nota_1 + nota_2 + min) / 3;
while (media < 7){
    min++  
    media = (nota_1 + nota_2 + min) / 3;
    if (min >= 10) {
        break;
    } 
}
if (media < 7) {
    console.log('Você não atingiu a média, sua terceira nota será irrelevante.')
} else {
    console.log(`Nota mínima para a terceira nota: ${min}`);
}