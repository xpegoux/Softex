/*
Aluno: Erivaldo Barros

Crie um código com um objeto chamado “Banco”. Ele deverá ter propriedades que incluem conta, saldo, tipo de conta e agência e os seus métodos devem ser: buscar saldo, depósito, saque e número da conta.

Observações:
- buscar saldo deve retornar o valor atual do saldo;
- para o depósito, você deverá passar um valor como parâmetro e adicioná-lo no saldo final do objeto;
- para o saque, você deverá passar um valor como parâmetro e subtraí-lo no saldo final do objeto;
- o número da conta deve retornar o número da conta.
*/

//Método Construtor
class Banco{    
    #conta;
    #saldo;
    #tipo_conta;
    #agencia;
    constructor(conta, saldo, tipo_conta, agencia) {
        this.#conta = conta;
        this.#saldo = saldo;
        this.#tipo_conta = tipo_conta;
        this.#agencia = agencia;
    }
    get buscarSaldo(){
        return `Saldo atual: R$ ${this.#saldo}`;
    }
    set deposito(depositou){
        this.#saldo += depositou;
    }
    set saque(sacou){
        this.#saldo -= sacou;
    }
    get numeroConta(){
        return `Número da conta: ${this.#conta}`;
    }
}
var conta1 = new Banco(15329, 500, "poupança", 19);
console.log(conta1.numeroConta);
console.log(conta1.buscarSaldo);
console.log(`Depositando  R$ ${conta1.deposito=100}`);
console.log(`Sacando R$ ${conta1.saque=300}`);
console.log(conta1.buscarSaldo);

console.log('______________________________________________________')

//Método Inicializador
let Banco2 = {
    //Propriedades
    conta: 15397,
    saldo: 500,
    tipo_de_conta: "poupança",
    agencia: 19,
    //Métodos
    buscar_saldo() { return console.log(`Valor atual: R$ ${Banco2.saldo}`); },
    deposito(depositou) { Banco2.saldo += depositou;},
    saque(sacou) { Banco2.saldo -= sacou},
    numero_da_conta() { return console.log(`Conta: ${Banco2.conta}`)}
};
Banco2.numero_da_conta();
Banco2.buscar_saldo();
Banco2.deposito(50);
console.log("Depositou R$ 50 e Sacou R$ 100");
Banco2.saque(100);
Banco2.buscar_saldo();
