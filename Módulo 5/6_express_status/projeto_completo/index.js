const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')

const app = express()
const PORTA = 8081

	//Config "database"
let livros = [	
	//"id":0,
	//"titulo":"default",
	//"editora":"default",
	//"ano":0000	
]

	//Config Cors
app.use(cors())

	//Config Body Parser
app.use(bodyParser.urlencoded({ extended:false }))
app.use(bodyParser.json())

	//Rotas
	//Ver livros cadastrados
app.get('/book', function (req, res) {
	if (livros.length === 0) {
		res.sendStatus(204)
	} else {
		res.status(200).send(livros)
	}
  })
  	//Criar livros
app.post('/book/add', function (req, res) {
    const livro = req.body

    livros.push(livro)
    res.status(201).send(livro) //status code created 
})
	//Ver livros por id
app.get('/book/ver/:id', (req, res)=>{
    let id = req.params.id

    if (id > 0 && id <= livros.length){
        res.status(200).send(livros[id-1])
    } 
    else {
        res.status(404).send("Livro não encontrado")
    }
})
	//Editar livros
app.put('/book/editar/:id', (req, res)=>{
    let id = req.params.id

    if (id > 0 && id <= livros.length){
        let livro = req.body
        livros[id-1] = livro
        res.status(200).send(livro)
    } 
    else {
        res.status(404).send("Livro não encontrado")
    }
})
	//Deletar livros
app.delete('/book/remover/:id', (req, res)=>{
    let id = req.params.id

    if (id > 0 && id <= livros.length){
        livros.splice(id-1,1)
        res.status(200).send('Livro Removido')
    } 
    else {
        res.status(404).send("Livro não encontrado")
    }
})

	//Verificação not found
app.all('*', (req, res)=>{
    res.status(404).send("Página não encontrada")
  })
  
  //Port connection
app.listen(PORTA,() =>{
	console.log(`Servidor Ativo: http://localhost:${PORTA}`)
})