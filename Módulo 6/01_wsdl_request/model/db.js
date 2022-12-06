//criando conexão com a base de dados!
const connect = async () => {
    if (global.connection && global.connection.state != 'disconnected')
        return global.connection

    const mysql = require('mysql2/promise')
    const con = mysql.createConnection({
        host:'localhost',
        user:'root',
        password:'root',
        database:'soap_softex'
    })
    console.log(`\tBanco Conectado!\n`)
    global.connection = con
    return con
}

//mostrar todos os clientes
const allClients = async () => {
    const con = await connect()
    const [rows] = await con.query('SELECT * FROM CLIENTE;')
    return rows
}

module.exports = {
    allClients
}