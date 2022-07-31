#Aluno: Erivaldo Barros
'''Crie uma classe de sua preferência com, no mínimo, uma variável, um método e um incremento. Depois, desenvolva três ou mais objetos para testar o código.'''
import os, time
class Pesca:

    def __init__(self, pescador, vara, isca, qt_peixe, limite):
        self.__pescador = pescador #privado
        self.vara = vara #publico
        self.isca = isca #publico
        self.__qt_peixe = qt_peixe #privado
        self.__limite = limite #privado
        
    ##MÉTODOS##
    def status(self):
        print('\n[*] Estado atual de pesca do {}\n-> Total de peixes = {}\n'.format(self.__pescador, self.__qt_peixe))
        
    def pescar(self, peixe):
        print('\n[*] {} pescou {} peixes!'.format(self.__pescador, peixe))
        self.__qt_peixe += peixe
        if self.__qt_peixe > self.__limite:
            print('\nLimite máximo de peixes atingido!')

    def assar(self, peixe):
        if peixe == 0:
            print('\n{} não assou os peixes!'.format(self.__pescador))
        else:
            print('\n[*] {} assou {} peixes!'.format(self.__pescador, peixe))
            self.__qt_peixe -= peixe
        

    #getters/setters
    def get_pescador(self):
        return self.__pescador
   
    def get_peixe(self):
        return self.__qt_peixe
    
    def get_limite(self):
        return print('Limite atual = {}'.format(self.__limite))
    
    def set_limite(self, limite):
        self.__limite = limite
        print('***Novo limite ajustado para: {}***'.format(self.__limite))

#PRIMEIRO OBJETO   
'''Neste primeiro objeto, o método de pescar é incrementado junto com os 8 peixes já pescados e decrementado 10 peixes após assar e apresenta o status atual da quantidade de peixes.'''     
pescador_1 = Pesca('João', 'UL', 'sardinha', 8, 50)
print('Vara: {}'.format (pescador_1.vara))
print('Isca: {}'.format (pescador_1.isca))

pescador_1.pescar(25)
pescador_1.assar(10)
pescador_1.status()

print('Próximo pescador em 8 segundos...')
time.sleep(8)
os.system('cls')

#SEGUNDO OBJETO
'''Neste segundo objeto, o limite máximo de pesca é atingido e logo após o método setter é acionado para reajustar o limite'''
pescador_2 = Pesca('José', 'L', 'lambari', 5, 60)
print('Vara: {}'.format (pescador_2.vara))
print('Isca: {}'.format (pescador_2.isca))

pescador_2.pescar(99)
pescador_2.set_limite(300)
pescador_2.assar(25)
pescador_2.status()

print('Próximo pescador em 8 segundos...')
time.sleep(8)
os.system('cls')

#TERCEIRO OBJETO
'''Neste objeto, o método get do limte está disponível para visualização e a condição de não assar peixe é exposta.'''
pescador_3 = Pesca('Jacó', 'M', 'camarão', 30, 90)
print('Vara: {}'.format (pescador_3.vara))
print('Isca: {}'.format (pescador_3.isca))

pescador_3.get_limite()
pescador_3.pescar(40)
pescador_3.assar(0)
pescador_3.status()