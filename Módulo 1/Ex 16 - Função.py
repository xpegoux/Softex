'''Faça uma função calculadora de dois números com três parâmetros: os dois primeiros serão os números da operação e o terceiro será a entrada que definirá a operação a ser executada. Considera a seguinte definição:
1. Soma
2. Subtração
3. Multiplicação
4. Divisão

Caso seja inserido um número de operação que não exista, o resultado deverá ser 0.'''

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
    else:
        return(0)

print('Escolha o valor da operação:\n[1] - Soma\n[2] - Subtração\n[3] - Multiplicação\n[4] - Divisão\n')
operador = int(input('Digite: '))

nu1 = float(input('\nDigite o primeiro número: '))
nu2 = float(input('Digite o segundo número: '))

resultado = Calculadora(nu1, nu2, operador)
print('\nResultado da operação escolhida: ',resultado)
if (operador != 1) and (operador != 2) and (operador != 3) and (operador != 4):
    print('Seu resultado foi 0, porque você escolheu uma operação inexistente :(')