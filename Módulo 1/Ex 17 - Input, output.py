#Aluno: Erivaldo Barros
'''Faça uma função calculadora que os números e as operações serão feitas pelo usuário. O código deve ficar rodando infinitamente até que o usuário escolha a opção de sair. No início, o programa mostrará a seguinte lista de operações:
1: Soma
2: Subtração
3: Multiplicação
4: Divisão
0: Sair
Digite o número para a operação correspondente e caso o usuário introduza qualquer outro, o sistema deve mostrar a mensagem “Essa opção não existe” e voltar ao menu de opções.
Após a seleção, o sistema deve pedir para o usuário inserir o primeiro e segundo valor, um de cada. Depois precisa executar a operação e mostrar o resultado na tela. Quando o usuário escolher a opção “Sair”, o sistema irá parar. 
É necessário que o sistema mostre as opções sempre que finalizar uma operação e mostrar o resultado.'''
#Criando função sem parâmetros
def Calculadora():
    sair = True 
    while sair == True: #iniciando loop
        print('\nEscolha o tipo da operação:\n[1] - Soma\n[2] - Subtração\n[3] - Multiplicação\n[4] - Divisão\n[0] - Sair')
        op = int(input('\nDigite -> '))
        
        while (op != 0) and (op != 1) and (op != 2) and (op != 3) and (op != 4): #se qualquer opção diferente das existentes, fará esse segundo loop repetiro menu
            print('\n\nEssa opção [',op,'] não existe')
            print('\nEscolha o tipo da operação:\n[1] - Soma\n[2] - Subtração\n[3] - Multiplicação\n[4] - Divisão\n[0] - Sair')
            op = int(input('\nDigite -> '))

        if (op == 0): #condição para interromper o programa todo (alocado dentro do primeiro while), caso a opção for 0.
            break        
        
        #definindo as entradas dos números pelo usuário.
        n1 = float(input('\nDigite o primeiro número: '))
        n2 = float(input('Digite o segundo número: '))
        #atribuindo operações aritméticas    
        soma = n1+n2 
        sub = n1-n2
        mult = n1*n2
        div = n1/n2
        #condição final para apresentar o valor da operação escolhida inicialmente.
        if op == 1: 
            print('\nResultado da operação escolhida: ',soma)
        elif op == 2:
            print('\nResultado da operação escolhida: ',sub)
        elif op == 3:
            print('\nResultado da operação escolhida: ',mult)
        elif op == 4:
            print('\nResultado da operação escolhida: ',div)

#chamando a função sem passar parâmetros, tendo em vista que, toda a operação está sendo feita dentro da função, incluindo os prints.            
Calculadora()        