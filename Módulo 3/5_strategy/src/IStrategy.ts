//- implementar uma interface Strategy com o método abstrato execute().

//Strategy
export interface IStrategy {
    execute(n1: number, n2: number): number;
}