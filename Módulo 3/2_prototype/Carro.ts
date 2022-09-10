import {Veiculo} from "./Veiculo"

export class Carro extends Veiculo {
    private _numeroPortas: number;
    private _plugIn: boolean;
    constructor(modelo: string, marca: string, cor: string, numeroRodas: number, numeroPortas: number, plugIn: boolean) {
        super(modelo, marca, cor, numeroRodas);
        this._numeroPortas = numeroPortas;
        this._plugIn = plugIn;
        if (this._numeroRodas > 4 || this._numeroRodas < 2) {
            throw new Error("Número de rodas não pode ser superior a 4");
        } else {
            this._numeroRodas = this._numeroRodas;
        }
    }
    
    public get plugIn(): string {
        return this._plugIn ? "Gasolina" : "Elétrico"
    }
    public get numeroPortas(): number {
        return this._numeroPortas;
    }
    public clone() : this {
        const clone = Object.assign({}, this);
        return clone;
    }
}