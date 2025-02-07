#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')
#mengubah data kpr_aktif menjadi tipe integer: 'YA' = 1 dan 'TIDAK' = 0
df_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0], inplace=True)

print(df_credit_scoring.head())

# Tugas
# Menurut Sunyi, atribut atau variabel yang isi datanya bukan numerik, perlu diubah menjadi format numerik agar tidak error saat melakukan modeling nantinya. Maka, data ‘kpr_aktif’ dan ‘rata_rata_overdue’ perlu aku konversi terlebih dahulu.
# Aku akan menkonversi kolom kpr_aktif terlebih dahulu
