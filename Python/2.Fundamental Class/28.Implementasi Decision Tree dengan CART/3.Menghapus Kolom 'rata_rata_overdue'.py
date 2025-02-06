#Kode sebelumnya
import pandas as pd

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

df.drop(['kode_kontrak'], axis=1, inplace=True)

#Hapus kolom rata_rata_overdue dari dataframe
df.drop(['rata_rata_overdue'], axis=1, inplace=True)

#Memeriksa jumlah data pada setiap kelas
print(df['risk_rating'].value_counts())

# TUgas
# Setelah melihat data tersebut, aku menyadari ada hubungan yang erat antara kolom 'rata_rata_overdue' dan 'risk_rating' yaitu keterlambatan pengembalian cicilan berbanding lurus dengan tingkat risiko. Ini menunjukkan bahwa ada duplikasi informasi dari kedua fitur tersebut sehingga salah satu bisa diabaikan. Oleh karena itu, aku memilih kolom 'risk_rating' karena tipe data lebih sederhana.

# Berdasarkan hasil analisis tersebut, aku memutuskan untuk menghapus kolom  'rata_rata_overdue'

# Aku melanjutkan pekerjaanku dan menemukan bahwa terdapat 5 kelas pada label 'risk_rating', lalu aku melakukan pengecekan jumlah dataset pada tiap kelas