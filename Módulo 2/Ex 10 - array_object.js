/*Aluno: Erivaldo Barros
- um objeto com, no mínimo, três propriedades;
- um array de tamanho três no mínimo;
- duas funções, a primeira lista as propriedades do objeto e a segunda, os elementos do array.
*/

let carro = {
    marca:"BMW",
    modelo:"Série 3 Sedã",
    preco:298950,
    cor:"Azul",
};
let combustivel = ["Gasolina", "Diesel", "Etanol"];

const carroInfo = () => {
    for(let infos in carro) {
        console.log(`${infos}: ${carro[infos]}`)
    }
 }
 const combInfo = () => {
    for(let infos of combustivel) {
        console.log(`Tipo: ${infos}`)
    }
 }
 carroInfo();
 combInfo();