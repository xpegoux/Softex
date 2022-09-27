import IEventListeners from "./IEventListeners";

export default interface IEventManager {
    subscribe(eventType: IEventListeners): void;
    unsubscribe(eventType: IEventListeners): void;
    notify(eventType: IEventListeners, data: Date): void;
}