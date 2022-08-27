const Sequelize = require('sequelize');
//instanciando o sequelize passando o banco + credenciais nos parâmetros
const sequelize = new Sequelize("dbsoftex", "root", "root", {
    host: "localhost", //local em que está dbsoftex
    dialect: "mysql" //definindo o tipo de banco de dados -> mysql
});
//a função authenticate verifica se conectou com sucesso ao banco de dados, porém ela sozinha não retorna mensagens.
sequelize.authenticate().then(() => {
    console.log("Conectado com Sucesso!")
}).catch((erro) => {
        console.log("Falha ao Conectar com o Banco!\n" + erro)
})
//a função then funciona como se fosse uma callback, ela é executada quando algum evento acontece, ou seja, quando a sequelize.authenticate tenta se conectar ao banco, e aí caso for conectado ela retornará a função then(); se não a função catch();