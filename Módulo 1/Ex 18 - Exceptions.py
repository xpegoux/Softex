#Aluno: Erivaldo Barros
'''Desenvolva um programa que recebe do usuário nome completo e ano de nascimento que seja entre 1922 e 2021. A partir dessas informações, o sistema mostrará o nome do usuário e a idade que completou, ou completará, no ano atual (2022).
Caso o usuário não digite um número ou apareça um inválido no campo do ano, o sistema informará o erro e continuará perguntando até que um valor correto seja preenchido.'''

from asyncio.windows_events import NULL


x = True
ano = NULL
idade = 2022
nome = input('Digite seu nome completo:\n')
while x == True:
    try:
        ano = int(input('\nDigite seu ano de nascimento:\n'))
        if (ano > 2021) or (ano < 1922): #Se o usuário digitar algum ano fora do padrão solicitado, dará o raise, se for letras, dará o try e a pergunta se repetirá para que seja digitado a data de nascimento.
            raise Exception('Data de nascimento inválida!')
        else:
            x = False 
    except Exception as err:
            print('[*]Ocorreu um erro!\n')
            print(err)
idade = idade - ano
print(nome,'sua idade é de',idade,'anos')