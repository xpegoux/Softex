import {Veiculo} from "./Veiculo"

export class Moto extends Veiculo {
    private _tipoCapacete: string;
    private _corCapacete: string;
    constructor(modelo: string, marca: string, cor: string, numeroRodas: number, tipoCapacete: string, corCapacete: string) {
        super(modelo, marca, cor, numeroRodas);
        this._tipoCapacete = tipoCapacete;
        this._corCapacete = corCapacete;
        if (this._numeroRodas > 2) {
            throw new Error("Número de rodas não pode ser superior a 2");
        } else {
            this._numeroRodas = this._numeroRodas;
        }
    }
    public get tipoCapacete(): string {
        return this._tipoCapacete;
    }
    public get corCapacete(): string {
        return this._corCapacete;
    }
    public clone() : this {
        const clone = Object.assign({}, this);
        return clone;
    }
}