import { Sanduiche } from "./Sanduiche";

export class FrangoAssado extends Sanduiche {
    constructor(){
        super();
        this.descricao = "Sanduíche de Frango Assado com:";
    }
    public custo(): number {
        let custo: number = 4.50;
        return custo;
    }    
}