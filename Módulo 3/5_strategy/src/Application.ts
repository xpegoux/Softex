/*
- como input do usuário, a aplicação deve receber o primeiro valor, depois o segundo e, por último, a operação matemática que deve realizar;
- no final, a aplicação deve definir qual Strategy será usada, com base na operação informada, e imprimir o resultado da operação.
*/
const print = require('readline-sync');
import { Calculadora } from "./Calculadora";
import { Multiplicacao, Soma, Subtracao } from "./Operacoes";


export class Application {
    
    public main() {
        this.resultados();
    }

    private menuOperacao(): string {
        console.log("=====================");
        console.log("Escolha uma Operação");
        console.log("=====================");
        console.log("[+] - Soma\n[-] - Subtração\n[*] - Multiplicação");
        let escolha = print.question("==> ");

        if (escolha != "+" && escolha != "-" && escolha != "*") {
            throw new Error("Operador inválido!");
        }
        return escolha
    }

    private resultados() {
        console.log("========================");
        console.log("Digite números inteiros!");
        console.log("========================");
        var n1 = print.questionInt("==> ");
        var n2 = print.questionInt("==> ");

        const escolha = this.menuOperacao();

        switch (escolha) {
            case "+":
                this.soma(n1, n2);
                break;
            case "-":
                this.sub(n1, n2);
                break;
            case "*":
                this.mult(n1, n2);
                break;
        }
    }

    private soma(n1, n2) {
        const soma = new Soma();
        let resultado = new Calculadora(soma);
        console.log(`Resultado: ${resultado.calcular(n1,n2)}`);
        return resultado
    }

    private sub(n1, n2) {
        const sub = new Subtracao();
        let resultado = new Calculadora(sub);
        console.log(`Resultado: ${resultado.calcular(n1,n2)}`);
        return resultado
    }

    private mult(n1, n2) {
        const mult = new Multiplicacao();
        let resultado = new Calculadora(mult);
        console.log(`Resultado: ${resultado.calcular(n1,n2)}`);
        return resultado
    }
}