const http = require('http');
const port = process.env.port || 8080;
const servidor = http;

servidor.createServer((req, res) => {
    res.write('Servidor Criado!'); //resposta do servidor para o cliente
    res.end(); //fim do response
}).listen(port, () => console.log('Servidor ativo: http://localhost:8080'));