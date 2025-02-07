#Kode sebelumnya
import pandas as pd
pd.set_option('display.max_column', 10)

dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

#mengubah data kpr_aktif menjadi tipe integer
dataset_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'],[1, 0], inplace=True)

print('Dataset credit scoring:')
print(dataset_credit_scoring)