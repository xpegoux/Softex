import EventManager from "./classes/EventManager";
import LoggingListener from "./classes/LoggingListener";
import TextEditor from "./classes/TextEditor";

//Classe observada, realiza criação de arquivo com inserção ou remoção de linhas
//ao salvar o arquivo, uma notificação é disparada e atualizada aos observers/users
const textEditor = new TextEditor();
textEditor.openFile();

//subject class
const notification = new EventManager(textEditor);

//inscritos/subscribers
const inscrito1 = new LoggingListener();
const inscrito2 = new LoggingListener();

//observers
notification.subscribe(inscrito1);
notification.subscribe(inscrito2);

//retirando inscrito
notification.unsubscribe(inscrito2);

//notificação ocorrida em TextEditor
notification.notify(inscrito1);

