#Mengimport library Pandas
import pandas as pd
pd.set_option("display.max_column", 10)

#Membaca dataset
dataset_credit_scoring= pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')
print(dataset_credit_scoring)