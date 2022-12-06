//LIBS
    const express = require('express');
    const bodyParser = require('body-parser'); //content body reqs    
    const routes = require('./routes/app.js');

//Configs
    //Express app & porta
        const app = express();
        const porta = 8081;

    //Body parser
        app.use(bodyParser.urlencoded({ extended: false }));
        app.use(bodyParser.json());

    // Template Engine        
        app.set('view engine', 'ejs');
        app.set('views', './views');

    //Error on Server Side
        app.use((err, req, res, next) => {
        console.error(err.stack);
        res.status(500).send('Ocorreu um erro, sorry!');
    });

//Rotas
    routes(app);

//Port connection
    app.listen(porta, () => {console.log("\tServidor Ativo!\n\tCTRL+C para desativar!")});