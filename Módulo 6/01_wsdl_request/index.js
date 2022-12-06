//LIBS
    const express = require('express');
    const cors = require('cors');    
    const bodyParser = require('body-parser');
    require('body-parser-xml')(bodyParser);
    const routes = require("./routes/app.js")

//Configs
    //Express app & porta
        const app = express();
        const porta = 8081;
        
    //Cors & body parser
        app.use(cors());
        app.use(bodyParser.urlencoded({ extended:false }));
        app.use(bodyParser. xml());
    
    //Error on Server Side
        app.use((err, req, res, next) => {
        console.error(err.stack)
        res.status(500).send('Ocorreu um erro, sorry!')
})

//Call Rotas
    routes(app);

//Port connection
    app.listen(porta, () => {console.log("\tServidor Ativo!")});