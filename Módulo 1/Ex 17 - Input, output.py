'''Faça uma função calculadora que os números e as operações serão feitas pelo usuário. O código deve ficar rodando infinitamente até que o usuário escolha a opção de sair. No início, o programa mostrará a seguinte lista de operações:
1: Soma
2: Subtração
3: Multiplicação
4: Divisão
0: Sair

Digite o número para a operação correspondente e caso o usuário introduza qualquer outro, o sistema deve mostrar a mensagem “Essa opção não existe” e voltar ao menu de opções.

Após a seleção, o sistema deve pedir para o usuário inserir o primeiro e segundo valor, um de cada. Depois precisa executar a operação e mostrar o resultado na tela. Quando o usuário escolher a opção “Sair”, o sistema irá parar. 

É necessário que o sistema mostre as opções sempre que finalizar uma operação e mostrar o resultado.'''
import os

def Calculadora(n1, n2, op):
    soma = n1+n2 
    sub = n1-n2
    mult = n1*n2
    div = n1/n2    
    if op == 1: 
        return (soma)
    elif op == 2:
        return (sub)
    elif op == 3:
        return (mult)
    elif op == 4:
        return (div)    

sair = True
while sair == True:
    print('\nEscolha o tipo da operação:\n[1] - Soma\n[2] - Subtração\n[3] - Multiplicação\n[4] - Divisão\n[0] - Sair')
    operador = int(input('\nDigite -> '))
      
    while (operador != 0) and (operador != 1) and (operador != 2) and (operador != 3) and (operador != 4):
        print('\n\nEssa opção [',operador,'] não existe')
        print('\nEscolha o tipo da operação:\n[1] - Soma\n[2] - Subtração\n[3] - Multiplicação\n[4] - Divisão\n[0] - Sair')
        operador = int(input('\nDigite -> '))

    if (operador == 0):
        break        

    nu1 = float(input('\nDigite o primeiro número: ')) 
    nu2 = float(input('Digite o segundo número: '))
    os.system('cls')

    resultado = Calculadora(nu1, nu2, operador)
    print('\nResultado da operação escolhida: ',resultado)
    