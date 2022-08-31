export class Produto{
    #ram
    #hdd
    #cpu
    #type
    constructor(ram, hdd, cpu, type = true) {
        this.#ram = ram;
        this.#hdd = hdd;
        this.#cpu = cpu;
        this.#type = type;
    }
    get ram() {return console.log(`${this.#ram}GB`)};
    get hdd() {return console.log(`${this.#hdd}GB`)};
    get cpu() {return console.log(`${this.#cpu}GHz`)};
    get type() {return console.log(`${this.#type ? "Computador" : "Server"}`)}; //true = computador | false = server 


    toString(){
       console.log(`-------------------------
RAM....: ${this.#ram}GB
HDD....: ${this.#hdd}GB
CPU....: ${this.#cpu}GHz
TIPO...: ${this.#type ? "Computador" : "Server"}
-------------------------
        `);

    }
};
