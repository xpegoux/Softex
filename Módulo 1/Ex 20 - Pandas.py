#Aluno: Erivaldo Barros
'''Desenvolva um programa que deve ler um arquivo csv intitulado “notas_alunos.csv”. O arquivo deve ter a seguinte estrutura:
aluno: Nome do aluno;
nota_1: Primeira nota;
nota_2: Segunda nota;
faltas: Número de faltas;
O programa lerá esse arquivo e criará duas colunas. A primeira coluna será “media”, que terá a média das duas notas do aluno. A segunda será “situacao”, com os valores: APROVADO ou REPROVADO.

O aluno que tiver mais de 5 faltas ou possuir média menor que sete, será reprovado. O programa deverá salvar esse novo dataframe com o nome “alunos_situacao.csv”.

Por fim, o programa deverá mostrar na tela:
- o maior número de faltas;
- a média geral das notas dos alunos;
- e a maior média.'''

import pandas as pd
#criando colunas e [linhas]
aluno = ['aluno_1', 'aluno_2', 'aluno_3', 'aluno_4']
nota_1 = [7.0, 3.0, 9.0 , 10.0]
nota_2 = [7.0, 10.0, 4.0, 6.0]
faltas = [1, 7, 2, 9]

dados = {
    'aluno':aluno,
    'nota_1':nota_1,
    'nota_2':nota_2,
    'faltas':faltas
}
#atribuindo os dados ao dataframe e criando em csv, index=False para não criar colunas indesejáveis(unnamed,zerado).
notas_alunos = pd.DataFrame(dados)
notas_alunos.to_csv('notas_alunos.csv', index=False)

df = pd.read_csv('notas_alunos.csv')
media = df['media'] = (df['nota_1'] + df['nota_2']) / 2 #criando coluna média
df['situacao'] = '' #criando coluna situação

#condição para aprovados e reprovados por faltas ou média
df.loc[df['media'] < 7, 'situacao'] = 'REPROVADO'
df.loc[df['media'] >= 7, 'situacao'] = 'APROVADO'
df.loc[df['faltas'] > 5, 'situacao'] = 'REPROVADO'

#salvando as modificações do dataframe em um novo CSV. 
alunos_situacao = pd.DataFrame(df)
alunos_situacao.to_csv('alunos_situacao.csv', index=False)

#apresentando na tela as seguintes condições:
df = pd.read_csv('alunos_situacao.csv')

maior_falta = df['faltas'].max()
media_g = df['media'].median()
maior_media = df['media'].max()

print('Maior número de faltas: '+str(maior_falta))
print('Média Geral: '+str(media_g))
print('Maior Média: '+str(maior_media))
