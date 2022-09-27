import IEventListeners from "../interfaces/IEventListeners";
import IEventManager from "../interfaces/IEventManager";
import TextEditor from "./TextEditor";


export default class EventManager implements IEventManager {
    private listeners: IEventListeners[] = [];

    constructor(public readonly textEditor: TextEditor){}

    subscribe(eventType: IEventListeners): void {
        this.listeners.push(eventType);
    }
    
    unsubscribe(eventType: IEventListeners): void {
        this.listeners = this.listeners.filter(ett => ett ! == eventType);
    }
    
    notify(eventType: IEventListeners): void {
        eventType.update(this.textEditor);
    }
}