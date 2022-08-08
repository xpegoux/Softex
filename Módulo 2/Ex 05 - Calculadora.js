// pacote disponível para download em: www.npmjs.com/package/readline-sync
var readline = require('readline-sync'); //receber o pacote readline para entrada de dados, armazenada na var readlineS.
var num_1, num_2, total, resto;
var operador;

num_1 = Number(readline.question('Digite o primeiro numero: '));
num_2 = Number(readline.question('Digite o segundo numero: '));
operador = readline.question('Digite o operador que voce deseja calcular\n[+]   [-]\n[*]   [/]\n-> ');

if (operador == '+') {
    total = num_1 + num_2;
    console.log(`Soma: ${total}`);
} else if (operador == '-') {
    total = num_1 - num_2;
    console.log(`Subtração: ${total}`);
} else if (operador == '*') {
    total = num_1 * num_2;
    console.log(`Multiplicação: ${total}`);
} else if (operador == '/') {
    total = num_1 / num_2;
    console.log(`Divisão: ${total}`);
    resto = num_1 % num_2;
    if (resto != 0) {
        console.log(`Resto da divisão: ${resto}`);
    }
} else {
    console.log('Operador inválido!');
}