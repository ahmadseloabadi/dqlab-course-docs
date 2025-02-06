#Impor library pandas yang akan digunakan untuk mengolah data menggunakan struktur dataframe
import pandas as pd
pd.set_option('display.max_column', 20)

#Unggah dataset yang disimpan dalam sebuah file Excel
df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

#Periksa sampel dari dataset dengan menjalankan perintah df.head()
print(df.head())