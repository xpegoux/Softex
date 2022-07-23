#Aluno: Erivaldo Barros
'''Desenvolva um código que simule uma eleição com três candidatos.
- candidato_X => 889
- candidato_Y => 847
- candidato_Z => 515
- branco => 0

O código deve perguntar se deseja finalizar a votação depois do voto. Caso o número do voto não corresponda a nenhum candidato ou seja branco, ele deve ser tratado como nulo. Se for inserido um texto ao invés de número, o código deve retornar uma mensagem para votar novamente.

Quando a votação for finalizada, o código deverá mostrar o vencedor, aquele com o maior número de votos e, também, a quantidade de votos de cada candidato, os brancos e nulos '''

import enum

class Candidatos(enum.Enum):
    candidato_X = 889
    candidato_Y = 847
    candidato_Z = 515
    branco = 0
    
def Eleicao():
    l1 = True
    candidato_X = 0
    candidato_Y = 0
    candidato_Z = 0
    nulo = 0
    branco = 0
    
    print('*------Sistema de voto eleitoral------*\n')
    while l1 == True:
        try:           
            print('Escolha o candidato digitando o seu número de votação!\n[889] - Capitão Pátria\n[847] - Soldier Boy\n[515] - Billy Butcher\n[0] - Branco')       
           
            voto = int(input('    [*] Digite o número do seu voto: '))
            if (voto != Candidatos.candidato_X.value) and (voto != Candidatos.candidato_Y.value) and (voto != Candidatos.candidato_Z.value) and (voto != Candidatos.branco.value):
                nulo = nulo +1                
            elif (voto == Candidatos.candidato_X.value):
                candidato_X = candidato_X +1               
            elif (voto == Candidatos.candidato_Y.value):
                candidato_Y = candidato_Y +1                
            elif (voto == Candidatos.candidato_Z.value):
                candidato_Z = candidato_Z +1
            elif (voto == Candidatos.branco.value):
                branco = branco +1               
                    
            sair = int(input('\nDeseja finalizar a votação?\nEscolha a opção:\n[1] - Sim\n[2] - Não\n-> '))
            if (sair == 1):
                break
            elif (sair == 2):
                continue
            else:
                print('\n****Opção inválida****')
                break
        except Exception as err:
            print('\nAlgo deu errado!')
            print(err)

    if (candidato_X > candidato_Y) and (candidato_X > candidato_Z):
        print('Capitão Pátria [889] é o vencedor! Votos ->',candidato_X,'\nSoldier Boy [847] ->',candidato_Y,'\nBilly Butcher [515] ->',candidato_Z,'\nBranco [0] ->',branco,'\nNulos ->',nulo)        
    elif (candidato_Y > candidato_X) and (candidato_Y > candidato_Z):
        print('Soldier Boy [847] é o vencedor! Votos ->',candidato_Y,'\nCapitão Pátria [889] ->',candidato_X,'\nBilly Butcher [515] ->',candidato_Z,'\nBranco [0] ->',branco,'\nNulos ->',nulo)
    elif (candidato_Z > candidato_X) and (candidato_Z > candidato_Y):
        print('Billy Butcher [515] é o vencedor! Votos ->',candidato_Z,'\nCapitão Pátria [889] ->',candidato_X,'\nSoldier Boy [847] ->',candidato_Y,'\nBranco [0] ->',branco,'\nNulos ->',nulo)
    else:
        print('*---Houve um empate!---*\n''Capitão Pátria [889] ->',candidato_X,'\nSoldier Boy [847] ->',candidato_Y,'\nBilly Butcher [515]',candidato_Z,'\nBranco [0] ->',branco,'\nNulos ->',nulo)                    

Eleicao()                        
