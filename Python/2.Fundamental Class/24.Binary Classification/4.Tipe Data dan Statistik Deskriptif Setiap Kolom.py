#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/cth_churn_analysis_train.xlsx')
df.drop('ID_Customer', axis=1, inplace=True)

y = df.pop('churn').to_list()
y = [1 if label == 'Yes' else 0 for label in y]

#memeriksa tipe data dari setiap kolom
print('Tipe data setiap kolom:')
print('-----------------------')
df.info()

#lakukan pengecekan untuk kolom dengan tipe data 'object' (kategorikal)
print('\nKolom dengan tipe data object (kategorikal):')
print('--------------------------------------------')
for col in df.select_dtypes(include=['object']):
	print(df[col].value_counts())
	print("===============================")

#statistik deskriptif dari setiap kolom
print('\nStatistik deskriptif dari setiap kolom:')
print('---------------------------------------')
print(df.describe())

# Tugas
# Wah hasil output kodenya sudah tersusun sesuai kolom. Selanjutnya apa?” tanyaku.

# “Selanjutnya lakukan proses analisis terhadap kolom yang tersisa dan menjadikan beberapa atribut tersebut sebagai data masukan (X) untuk model klasifikasi”

# Berdasarkan kolom lain yang tersisa, Senja akan melakukan proses analisis terhadap kolom yang tersisa dan menjadikan beberapa atribut tersebut sebagai data masukan (X) untuk model klasifikasi. Untuk melakukan proses analisis ini, 
