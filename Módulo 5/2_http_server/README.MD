## Breve Resumo do Mini-Projeto 2

Neste pequeno projeto possui dois diretórios o **\routes** e **\node_modules**, onde respectivamente um é para a criação das rotas com a *lib http* e a outra é o pacote da *lib http*.

No **package.json** está as devidas configurações deste pequeno projeto e logo abaixo tem o código que está contido na no diretório **./routes/route.js**.

```js
const http = require('http');
const port = process.env.port || 8080;
const servidor = http;

servidor.createServer((req, res) => {
    res.write('Servidor Criado!'); //resposta do servidor para o cliente
    res.end(); //fim do response
}).listen(port, () => console.log('Servidor ativo: http://localhost:8080'));
```

No código acima, primeiramente importamos com o *require* a biblioteca interna *'http'*, depois, criamos uma constante *port* para utilizar uma porta para a conexão e outra para utilizar as funções da *lib http* chamada de **servidor**.

Após isso, fizemos um *listener* para que, qualquer requisição feita ao nosso servidor ser respondida com um **‘Servidor Criado!’**, e por último o **(.listen)** indicando a porta no qual o servidor ficará "escutando" as requisições do cliente, com uma breve mensagem de servidor ativo que será retornada no terminal.
