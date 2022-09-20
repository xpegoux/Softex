import { IStrategy } from "./IStrategy";

//Contex
export class Calculadora {
    private calcula: IStrategy;
    constructor(calcula: IStrategy) {
        this.calcula = calcula;        
    }
    
    public calcular(n1: number, n2: number) {
        let resultado = this.calcula.execute(n1, n2);
        return resultado;
    }
}