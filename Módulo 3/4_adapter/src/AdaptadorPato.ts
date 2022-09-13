
import { IGalinha } from "./IGalinha";
import { AdaptadorPatoDemo } from "./AdaptadorPatoDemo";

export class AdaptadorPato implements IGalinha {
    private pato: AdaptadorPatoDemo;
    constructor(pato: AdaptadorPatoDemo){
        this.pato = pato;
    }
    fazerCocorico(): string {
        let fazerCocorico: string = `Cocoricó`;
        return `O pato faz: ${this.pato.fazerQuaQua()} e também: ${fazerCocorico}`;
    }
    voar(): string {
        return 'Tentou voar';
    }    
}