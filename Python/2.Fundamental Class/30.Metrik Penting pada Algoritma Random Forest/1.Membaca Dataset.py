#mengimport library Pandas
import pandas as pd
pd.set_option('display.max_column', 10)

#membaca dataset credit_scoring_dqlab dari file excel
dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

print('Dataset credit scoring:')
print(dataset_credit_scoring)

print('\nInformasi dataset:')
dataset_credit_scoring.info()