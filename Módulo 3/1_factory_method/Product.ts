//Corpo do produto
export abstract class Product {
    protected _ram: number;
    protected _hdd: number;
    protected _cpu: number;
    protected _type: boolean;
    constructor(ram: number, hdd: number, cpu: number){
        this._ram = ram;
        this._hdd = hdd;
        this._cpu = cpu;
        this._type = true;        
    }
    public abstract get ram() : void;
    public abstract get hdd() : void;
    public abstract get cpu() : void;
    public abstract get type() : void;
    public abstract toString(): void;
}