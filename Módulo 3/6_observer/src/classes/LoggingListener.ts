import IEventListeners from "../interfaces/IEventListeners"
import TextEditor from "./TextEditor";

export default class LoggingListener implements IEventListeners {
    public diretorio: string;
    constructor(){
        this.diretorio = __dirname + "logging.txt"
    }
    //notificando se ocorrer alguma criação de arquivo na TextEditor
    update(filename: TextEditor) {
        console.log(`Os seguintes usuários foram criados:\n${filename._arquivo}`);
        console.log(`Verifique a lista em:\n${this.diretorio}`);
    }
}