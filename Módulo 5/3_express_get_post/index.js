const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send("Página inicial!");
});

app.post('/', (req, res) => {
    res.send("Post criado na raiz com suncesso!");
});

app.get('/usuarios:id', (req, res) => {
    const id = req.params.id;
    res.send(`id recebido ${id}`); //localhost:8080/usuarios1
});

app.listen(8080, () => console.log("Servidor Ativo: http://localhost:8080/"));