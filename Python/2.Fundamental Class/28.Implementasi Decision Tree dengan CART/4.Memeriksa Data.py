#Kode sebelumnya
import pandas as pd

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

df.drop(['kode_kontrak'], axis=1, inplace=True)
df.drop(['rata_rata_overdue'], axis=1, inplace=True)

#Periksa struktur dataset
df.info()

#Periksa data unique pada kolom kpr_aktif
print('\nData unik pada kpr_aktif:', df['kpr_aktif'].unique())
 
#Periksa tipe data pada kolom kpr_aktif
print('\nTipe Data:', type(df['kpr_aktif'].iloc[1]))

# Tugas
# Aku mendapatkan banyak sekali temuan berdasarkan data tersebut, salah satunya adalah terdapat 5 kolom atau atribut yang terbagi menjadi 4 atribut dengan tipe data integer dan 1 atribut ('kpr_aktif') dengan tipe data object. Oleh karena itu, aku ingin mengetahui lebih lanjut atribut 'kpr_aktif'

