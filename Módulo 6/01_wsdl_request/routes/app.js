const db = require('../model/db');
const js2xmlparser = require('js2xmlparser');


let appRouter = async (app) => {

    app.get('/consultaClientes', async (req,res) => {
        res.append('Content-Type', 'application/xml', 'charset=UTF-8');
        const mostraClientes = await db.allClients();
        const resParseXML = (js2xmlparser.parse("clientes", mostraClientes)); //converter saída json em xml        
        const wsdl = req.query;

        if (wsdl == wsdl) res.status(200).send(resParseXML);        
    });

    app.all('*', (req, res) => {
        res.sendStatus(404);
    })
}

module.exports = appRouter;