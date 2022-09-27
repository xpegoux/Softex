import TextEditor from "../classes/TextEditor";

export default interface IEventListeners {
    update(filename: TextEditor): void;
}