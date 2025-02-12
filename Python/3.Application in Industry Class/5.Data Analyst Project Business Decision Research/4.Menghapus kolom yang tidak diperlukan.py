import pandas as pd
df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/data_retail.csv', sep=';')
df['First_Transaction'] = pd.to_datetime(df['First_Transaction']/1000, unit='s', origin='1970-01-01')
df['Last_Transaction'] = pd.to_datetime(df['Last_Transaction']/1000, unit='s', origin='1970-01-01')

# Hapus kolom-kolom yang tidak diperlukan
del df['no']
del df['Row_Num']

# Cetak lima data teratas
print(df.head())

# Tugas
# Sesuai dengan pada jawaban pada quiz sebelumnya (quiz_2), hapuslah kolom-kolom yang dimaksud dengan melengkapi code pada live code editor.

# Petunjuk: gunakan fungsi bawaan python (salah satu python keywords) untuk menghapus suatu objek.