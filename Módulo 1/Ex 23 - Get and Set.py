#Aluno: Erivaldo Barros
'''Crie uma classe e insira nela, no mínimo, dois atributos, os quais devem ter um método acessor (get) e um método modificador (set) para cada. Defina um objeto para cada atributo e elabore um construtor para criar alguma regra.'''

class Pix:
    def __init__(self, nome, sobrenome, cpf, valor_em_conta, valor_transf,):
        self.__nome = nome
        self.__sobrenome = sobrenome 
        self.__cpf = cpf
        self.__valor_em_conta = valor_em_conta
        self.__valor_transf = valor_transf 

    def get_nome_completo(self):
        return print('Cliente: {}'.format(self.__nome +' '+ self.__sobrenome))
    
    def get_cpf(self):
        return print('Chave Pix CPF: {}'.format(self.__cpf))
    
    def get_valor_transf(self):
        return print('Valor da transferência: R$ {}'.format(self.__valor_transf))

    def set_valor_transf(self, novo_valor):
        self.__valor_transf = novo_valor
        return self.__valor_transf

    def get_saldo(self):        
        if (self.__valor_em_conta < 0): #construtor
            raise Exception('ERRO: SALDO INSUFICIÊNTE!')       
        else:
            return print('Saldo atual: R$ {}'.format(self.__valor_em_conta))
    
    def set_saldo(self):
        self.__valor_em_conta = self.__valor_em_conta - self.__valor_transf        
        return self.__valor_em_conta    

cliente_1 = Pix('José', 'Silva', '123.456.789.00', 1500.0, 1000.0)
print('\n[*] Mostrando informações com GET e SET \n')
cliente_1.get_nome_completo()
cliente_1.get_saldo()
cliente_1.get_cpf()
cliente_1.get_valor_transf()
cliente_1.set_saldo()
print('')
cliente_1.get_saldo()
print('\nNova tentativa de transferência apresentando o MÉTODO CONSTRUTOR!\n')
cliente_1.get_nome_completo()
cliente_1.get_saldo()
cliente_1.get_cpf()
cliente_1.set_valor_transf(900.00)
cliente_1.get_valor_transf()
cliente_1.set_saldo()
cliente_1.get_saldo()