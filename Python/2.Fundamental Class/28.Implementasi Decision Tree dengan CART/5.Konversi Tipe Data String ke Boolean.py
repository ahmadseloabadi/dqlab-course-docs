#Kode sebelumnya
import pandas as pd

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

df.drop(['kode_kontrak'], axis=1, inplace=True)
df.drop(['rata_rata_overdue'], axis=1, inplace=True)

#Konversi tipe data 'kpr_aktif' dari tipe string menjadi boolean
df.loc[(df['kpr_aktif']=='Ya'), 'kpr_aktif'] = True
df.loc[(df['kpr_aktif']=='TIDAK'), 'kpr_aktif'] = False
df['kpr_aktif'] = df['kpr_aktif'].astype('bool')
df.info()

# TUgas
# Atribut 'kpr_aktif' ternyata mempunyai tipe data string dan terdapat dua nilai unik yaitu 'Ya' dan 'Tidak'. Jika atribut ini akan digunakan pada model Decision Tree scikit-learn, maka harus diubah menjadi numerik karena implementasi scikit-learn belum mendukung tipe data kategori. Aku melakukan transformasi tipe data pada kolom ‘kpr_aktif’ 