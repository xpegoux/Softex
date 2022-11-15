const express = require('express');
const handlebars = require('express-handlebars'); //template engine para renderizar html na rota
const app = express();
const PORTA = 8080;

// Template Engine Config
app.engine('handlebars', handlebars.engine({defaultLayout: 'main'}));
app.set('view engine', 'handlebars');

// Rotas
app.get('/', (req, res) => {
    return res.send('Rota principal')
});
    // fake route login
app.get('/logins', (req, res) => {
    return res.render('formulario');
});
app.post('/logado', (req, res) => {
    return res.render('logado');
});

    //rota calculadora
app.get('/calcular/:operando1/:operador/:operando2',(request,response)=>{
    var operador = request.params.operador;  
    var operando1 = request.params.operando1;
    var operando2 = request.params.operando2;
    var operacao;

    if (operador == "+") {
        operacao = parseInt(operando1)+parseInt(operando2);
        return response.send(`${operando1} ${operador} ${operando2} = ${operacao}`);
    } else if (operador == "-") {
        operacao = parseInt(operando1)-parseInt(operando2);        
        return response.send(`${operando1} ${operador} ${operando2} = ${operacao}`);
    } else if (operador == ":") {
        operacao = parseInt(operando1)/parseInt(operando2);        
        return response.send(`${operando1} ${operador} ${operando2} = ${operacao}`);
    } else if (operador == "*") {
        operacao = parseInt(operando1)*parseInt(operando2);        
        return response.send(`${operando1} ${operador} ${operando2} = ${operacao}`);
    } else {
        console.log("Operador inválido!");
        return response.sendStatus(404);
    }    
});

//Conexão
app.listen(PORTA,() =>{
    console.log(`Servidor Iniciado na porta ${PORTA}`);
});