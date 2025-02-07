#Kode sebelumnya
import pandas as pd
pd.set_option('display.max_column', 10)

dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

dataset_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'],[1, 0], inplace=True)

# Label Encoding rata_rata_overdue, untuk menghilangkan value string, sehingga bisa dibuat dalam bentuk numeric array, dan tidak error saat membuat modelnya
dataset_credit_scoring['rata_rata_overdue'].replace({'0 - 30 days':1, '31 - 45 days':2, '46 - 60 days':3, '61 - 90 days':4, '> 90 days':5}, inplace=True)

print('Dataset credit scoring:')
print(dataset_credit_scoring)