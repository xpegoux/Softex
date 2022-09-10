import { Carro } from "./Carro";
import { Moto } from "./Moto";
export class Application {

    public criarVeiculos(): Array<object> {
        let veiculo = [];
        veiculo = new Array(5);
        veiculo[0] = new Carro("COUPE", "BMW", "AZUL", 4, 4, true);
        veiculo[1] = new Carro("COUPE", "BMW", "BRANCO", 4, 4, false);
        veiculo[2] = new Carro("COUPE", "BMW", "PRETO", 4, 4, true)
        veiculo[3] = new Moto("S1000RR", "BMW", "PRETO", 2, "ROBUSTO", "BRANCO")
        veiculo[4] = new Moto("S1000RR", "BMW", "BRANCO", 2, "ROBUSTO", "PRETO")
        veiculo[5] = new Moto("S1000RR", "BMW", "VERMELHO", 2, "ROBUSTO", "PRETO")      
        return veiculo;
    }
    public represent(): void {
        for (const i of lista.criarVeiculos()){
            console.log(i);
        }
    }
}

let lista: Application = new Application();
lista.represent();

