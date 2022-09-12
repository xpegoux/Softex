import { Sanduiche } from "../Components/Sanduiche";
import { IngredienteDecorator } from "./IngredienteDecorator";

export class QueijoMuçarelaRalado extends IngredienteDecorator {
    private sanduiche: Sanduiche;
    constructor(sanduiche: Sanduiche){
        super();
        this.sanduiche = sanduiche;
    }
    public get getDescricao(): string {
        let descricaoAtual: string = "\n[+] Queijo Muçarela Ralado";
        return this.sanduiche.getDescricao + descricaoAtual;
    }
 
    public custo(): number {
        let custo: number = 2.00;
        return custo + this.sanduiche.custo();
    }
    
}