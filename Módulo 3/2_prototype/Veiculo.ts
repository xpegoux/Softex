export abstract class Veiculo {
    protected _modelo: string;
    protected _marca: string;
    protected _cor: string;
    protected _numeroRodas: number;
    constructor(modelo: string, marca: string, cor: string, numeroRodas: number){
        this._modelo = modelo;
        this._marca = marca;
        this._cor = cor;
        this._numeroRodas = numeroRodas;
    }
    public get modelo(): string {return this._modelo};
    public get marca(): string {return this._marca};
    public get cor(): string {return this._cor};
    public get numeroRodas(): number {return this._numeroRodas};

    public clone() : this {
        const clone = Object.assign({}, this);
        return clone;
    }
    public abstract represent() : void;
}