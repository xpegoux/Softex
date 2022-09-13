import { AdaptadorPato } from "./AdaptadorPato";

export class AdaptadorPatoDemo {
    public fazerQuaQua(): string {
        return 'QuaQuá';
    }
    public voar(): string {
        return 'Tentou voar';
    }
}

let pato = new AdaptadorPato(new AdaptadorPatoDemo);
console.log(pato.fazerCocorico())