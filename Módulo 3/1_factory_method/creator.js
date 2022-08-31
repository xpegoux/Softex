import {Produto} from "./interface.js"

//a funcao recebe os parametros e retorna um novo objeto, e é exportado para o index.
    
export function Creator(ram, hdd, cpu, type) {
    return new Produto(ram, hdd, cpu, type);
}