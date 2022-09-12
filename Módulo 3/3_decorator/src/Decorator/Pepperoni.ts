import { Sanduiche } from "../Components/Sanduiche";
import { IngredienteDecorator } from "./IngredienteDecorator";

export class Pepperoni extends IngredienteDecorator {
    private sanduiche: Sanduiche;
    constructor(sanduiche: Sanduiche){
        super();
        this.sanduiche = sanduiche;
    }
    public get getDescricao(): string {
        let descricaoAtual: string = "\n[+] Pepperoni";
        return this.sanduiche.getDescricao + descricaoAtual;
    }
 
    public custo(): number {
        let custo: number = 0.99;
        return custo + this.sanduiche.custo();
    }
    
}