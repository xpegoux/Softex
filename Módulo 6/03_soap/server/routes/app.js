//protocolo soap para integração de APIs externas.
const soap = require('soap');
const path = require('path');


//entry-point dos correios para uso de consulta de CEP!
const url = "https://apps.correios.com.br/SigepMasterJPA/AtendeClienteService/AtendeCliente?wsdl";


let appRouter = (app) => {

    app.get('/consulta-cep', (req, res) => {
        const ceP = req.body

        //Acessando serviço consultaCEP 
        soap.createClient(url, (err, client) => {            
            if (err) console.log(err);

            //WebMethod recebe apenas um parâmetro que é o numero do CEP!
            client.consultaCEP({
                cep: ceP.cep //'52130999'
            }, (err, result) => {
                if (err) res.status(500);
                res.send(result);
            });
        });
    });

    app.get('*', (req, res) => {
        res.sendStatus(404);
    });
}

module.exports = appRouter;