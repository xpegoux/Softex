import { ConcrateP1 } from "./ConcrateP1";
import { ConcrateP2 } from "./ConcrateP2";
import { Product } from "./Product";

export class Creator {
    private static error(): Product {
        throw new Error("Opção inválida!");
    }
    //factory method
    public static createProduct(ram: number, hdd: number, cpu: number, type: boolean) : Product {        
        if (type === true) {
            return new ConcrateP1(ram, hdd, cpu);
        } else if (type === false) {
            return new ConcrateP2(ram, hdd, cpu);        
        } else {          
            return this.error();
        }
    }
}