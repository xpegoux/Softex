export abstract class Sanduiche {
    protected descricao: string;

    public get getDescricao(): string { return this.descricao }

    public abstract custo(): number;
}
