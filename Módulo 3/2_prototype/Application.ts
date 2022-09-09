import { Carro } from "./Carro";
import { Moto } from "./Moto";
import { Veiculo } from "./Veiculo";
//- desenvolva uma classe Aplicação que deve criar um array com seis veículos com dois tipos de veículos diferentes (subclasses), utilizando o método clone dos objetos para preencher o array;
export class Application {

    public criarVeiculos(): Array<object> {
        let veiculo: Veiculo[];
        veiculo = new Array(5);
        veiculo[0] = new Carro("carro1", "marca1", "cor", 4, 4, true);
        veiculo[1] = veiculo[0].clone();
        veiculo[2] = veiculo[0].clone();
        veiculo[3] = new Moto("moto1", "marca1", "cor", 2, "capaceterobusto", "preto");
        veiculo[4] = veiculo[3].clone();
        veiculo[5] = veiculo[3].clone();        
        return veiculo;
    }
    //- na classe Aplicação, implemente um método que retorne um array com o mesmo tamanho do array de veículos, onde cada elemento deve ser um clone dos elementos do array veículos;
    public novoArray(): Array<object> {
        let novoVeiculo = Object.create(this.criarVeiculos);
        return novoVeiculo;
    }
}

let lista: Application = new Application();
console.log(lista.novoArray());
//manipulando lista
//lista.criarVeiculos()[1];

/*for (const i of lista.criarVeiculos()){
    console.log(i);
}*/
