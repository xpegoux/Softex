const express = require('express');
const app = express();

//rota para a pagina principal, com o metodo sendFile para envio de pagina HTML.
app.get("/", (req, res) => {
    res.sendFile(__dirname + "/html/index.html");
});

app.listen('8081', () => console.log("Servidor Ativo: http://localhost:8081/"));