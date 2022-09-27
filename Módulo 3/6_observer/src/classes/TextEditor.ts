import Editor from "./Editor";
import EventManager from "./EventManager";
const readline = require('readline-sync');

const fs = require('fs'); //lib para manipulação de arquivos
const filePath = './logging.txt'; //diretorio do arquivo

export default class TextEditor extends Editor {
    
    public _arquivo: string = ''

    //metodo complementar de abrir arquivo (array) para ler
    openFile(): void {
        console.log("   ##################");
        console.log("   # Arquivo Aberto #");
        this.operation();
    }

    private insertLine(lineNumber: number, text: string): string {
        var data = this._arquivo.split(/\r?\n/); //converter string em arraystring
        data.splice(lineNumber, 0, text); //(linhaDoArray, 0=naoSobrescrever, textoDoArray)       
        this._arquivo = data.join("\r\n"); //retornar array em formato de string com quebradelinha
        return this._arquivo;
    }

    private removeLine(lineNumber: number): string {
        var data = this._arquivo.split(/\r?\n/); //converter string em arraystring
        data.splice(lineNumber, 1); //(linhaDoArray, removerApenasUmIndice)       
        this._arquivo = data.join("\r\n"); //retornar array em formato de string com quebradelinha
        return this._arquivo;
    }

    saveFile(): void {
        let salvar = this._arquivo //receber dados 

        console.log("##############################");            
        console.log(salvar);                      
        console.log("##############################");
        console.log("[*] Arquivo salvo!");

        //passando os dados manipulados para um arquivo txt, será criado automaticamente!
        fs.writeFile(filePath, salvar, (err: { message: string; }) => {
            if (err) {
                console.error(err.message); //caso der erro...
            }
        });
    }

    //menu simples
    private menuLines(){
        console.log("#######################");
        console.log("# [1] Inserir Linhas  #");
        console.log("# [2] Remover Linhas  #");
        console.log("# [3] Salvar Arquivo  #");
        console.log("# [0] Cancelar        #");
        console.log("#######################");
    }

    //operacao do menu
    private operation() {
        do {
            this.menuLines(); //call menu
            var escolha = readline.questionInt("==> ");
            console.clear();//limpar terminal

            switch(escolha) {
                case 0: //cancelar programa
                    break;

                case 1: //inserir linhas
                    do { 
                        var lineNumber = readline.questionInt("[*] Inserir a partir de qual linha?\n==> "); console.clear();

                        do {               
                            var texto = readline.question("==> ");
                            var sair = readline.question("[*] Digite 'EOF' para sair:\n==> "); console.clear();
                        } while (sair !== "EOF");

                        //inserindo parametros com variaveis acima:
                        this.insertLine(lineNumber, texto);
                        
                        //confirmar saida da inserção de linhas
                        var sairLine = readline.questionInt("[*] Deseja inserir outra linha?\n[1] - SIM\n[2] - NAO\n==> "); console.clear();

                    } while (sairLine != 2);
                    break;

                case 2: //deletar linhas
                    do {
                        //conteudo do arquivo
                        console.log(this._arquivo)
                        var lineNumber = readline.questionInt("[*] Remover qual linha?\n==> "); console.clear();

                        //removendo linhas:
                        this.removeLine(lineNumber);
                        
                        //confirmar a saída da remoção de linhas
                        var sair = readline.questionInt("[*] Deseja remover outra linha?\n[1] - SIM\n[2] - NAO\n==> "); console.clear();

                    } while (sair != 2);                    
                    break;

                case 3: //salvar e mostrar conteudo do arquivo
                    this.saveFile();
                    readline.question("\n[*] Pressione Enter para retornar ao menu!");
                    console.clear();
                    break;
            }                
        } while (escolha != 0);
    }
}