const express = require('express');

const app = express();

app.get("/", (req,res) => {
    res.send("Teste de rota GET!");
});

app.listen(3333, () => console.log('Servidor Ativo!'));