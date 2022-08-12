/*
Aluno: Erivaldo Barros
Crie um programa que contenha os seguintes tipos de funções:

1. uma função tradicional com a palavra reservada “Function” e sem nenhum parâmetro;
2. uma função tradicional com parâmetros e um retorno de valor;
3. uma arrow function com parâmetros e que retorne um valor.

*/
//void function
function Function(){
    return console.log("Função vazia!")    
}
//function com parâmetros e retorno.
function newFunction(nome, sobrenome){
    return console.log(nome + " " + sobrenome)
}
//arrow function
const arrowFunction = (nome, sobrenome) =>  console.log(`${nome} ${sobrenome}`)

Function()
newFunction("José", "Cabral")
arrowFunction("Carlos", "Eduardo")