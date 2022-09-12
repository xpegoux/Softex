import { FrangoAssado } from "./Components/FrangoAssado";
import { Pepperoni } from "./Decorator/Pepperoni";
import { QueijoMuçarelaRalado } from "./Decorator/QueijoMuçarelaRalado";


let frango = new FrangoAssado();
frango = new Pepperoni(frango);
frango = new QueijoMuçarelaRalado(frango);

console.log(`${frango.getDescricao} \nCusta: R$ ${frango.custo()}`);