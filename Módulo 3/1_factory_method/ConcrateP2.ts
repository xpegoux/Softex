import { Product } from "./Product";

export class ConcrateP2 extends Product {
    constructor(ram: number, hdd: number, cpu: number) {
        super(ram, hdd, cpu);
        this._type = false;       
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
        if (this._type === false) {
            return console.log("TIPO: Server");
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

/*let pc : Product = new ConcrateP2(4,250,2.30);
pc.toString();*/