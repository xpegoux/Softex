#Aluno: Erivaldo Barros
'''Faça uma função calculadora de dois números com três parâmetros: os dois primeiros serão os números da operação e o terceiro será a entrada que definirá a operação a ser executada. Considera a seguinte definição:
1. Soma
2. Subtração
3. Multiplicação
4. Divisão

Caso seja inserido um número de operação que não exista, o resultado deverá ser 0.'''
#Criando função com os três parâmetros solicitados
def Calculadora(n1, n2, op):
    soma = n1+n2 #atribuindo operações aos parâmetros 1 e 2 e assim sucessivamente abaixo
    sub = n1-n2
    mult = n1*n2
    div = n1/n2
    if op == 1: #criando condição para retornar o valor
        return (soma)
    elif op == 2:
        return (sub)
    elif op == 3:
        return (mult)
    elif op == 4:
        return (div)
    else:
        return(0)

#Interatividade para a escolha da operação
print('Escolha o tipo da operação:\n[1] - Soma\n[2] - Subtração\n[3] - Multiplicação\n[4] - Divisão\n')
operador = int(input('Digite: ')) #armazenando entrada do operador
#armazenando entrada dos numeros abaixo
nu1 = float(input('\nDigite o primeiro número: ')) 
nu2 = float(input('Digite o segundo número: '))

resultado = Calculadora(nu1, nu2, operador) #chamando a função para resultado e declarando as variáveis no parâmetro.
print('\nResultado da operação escolhida: ',resultado) #chamando o resultado
if (operador != 1) and (operador != 2) and (operador != 3) and (operador != 4): #condição para dar uma breve mensagem referente ao retorno 0.
    print('Seu resultado foi 0, porque você escolheu uma operação inexistente :(')