//- Deve haver três classes concretas que implementam a Strategy para realizar as operações de Soma, Subtração e Multiplicação de números inteiros;
//- o método execute() deve receber dois números inteiros como parâmetros e retornar o resultado também como número inteiro;

import { IStrategy } from "./IStrategy";

//Concrete Strategy
export class Soma implements IStrategy {
    execute(n1: number, n2: number): number {
        let resultado: number = Math.round(n1 + n2); //math.round para retornar apenas inteiros sem frações, arredondando-o.
        return resultado
    }
}

export class Subtracao implements IStrategy {
    execute(n1: number, n2: number): number {
        let resultado: number = Math.round(n1 - n2); //math.round para retornar apenas inteiros sem frações, arredondando-o.
        return resultado
    }
}

export class Multiplicacao implements IStrategy {
    execute(n1: number, n2: number): number {
        let resultado: number = Math.round(n1 * n2); //math.round para retornar apenas inteiros sem frações, arredondando-o.
        return resultado
    }
}



/*
const teste = new Soma();
console.log(teste.execute(25,1.53))*/