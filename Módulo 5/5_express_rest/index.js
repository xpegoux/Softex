const express = require('express')
const app = express()
const port = 8081
var cadastro = {
    id: '',
    user: '',
    pass: ''
}

app.get('/', (req, res) => {
    //rota principal
    return res.send("Rota principal")
})

app.get('/cadUser/:user/:pass', (req, res) => {
    //verificação simples de credenciais
    if (req.params.user.length < 3) {
        return res.send("user nao pode ter menos de 3 caracteres")
    } else if (req.params.pass.length < 6) {
        return res.send("senha nao pode ter menos de 6 caracteres")
    } else {
        //passando para variáveis globais para usar em outras rotas
        cadastro = {
            user: req.params.user,
            pass: req.params.pass
        }
        return res.send("Cadastrado com sucesso!")
    }
})

app.post('/add', (req, res) => {
    //supondo que os dados estão sendo "enviados para o DB"
    res.send(cadastro)    
})

app.put('/update/:user/:pass', (req, res) => {
    //comunicar sucesso na atualização
    cadastro = {
        user: req.params.user,
        pass: req.params.pass
    }
	res.send("Dados de usuário atualizado com sucesso!")
})
app.delete('/delete/:user/:pass', (req, res) => {
    //comunicar sucesso na exclusão
    cadastro = {
        user: req.params.user,
        pass: req.params.pass
    }
	res.send("Usuário deletado com sucesso!")
})

app.listen(port, () => console.log("Servidor Ativo: http://localhost:8081/"))