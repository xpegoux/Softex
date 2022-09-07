import { Product } from "./Product";

//Classe Concreta referente a criação de COMPUTADORES comuns
export class ConcrateP1 extends Product {
    constructor(ram: number, hdd: number, cpu: number) {
        super(ram, hdd, cpu);
        this._type = true;       
    }
    get ram(): void {
        return console.log(`RAM.: ${this._ram}GB`);
    }
    get hdd() : void {
        return console.log(`HDD.: ${this._hdd}GB`);
    }
    get cpu() : void {
        return console.log(`CPU.: ${this._cpu}GHz`);
    }
    get type() : void {
        if (this._type === true) {
            return console.log("TIPO: Personal Computer");
        }
    }
    public toString(): void {
        this.type;
        this.ram;
        this.hdd;
        this.cpu;
        console.log("========================================")
    }
}

/*let pc : Product = new ConcrateP1(4,250,2.30);

pc.ram;
pc.toString();*/