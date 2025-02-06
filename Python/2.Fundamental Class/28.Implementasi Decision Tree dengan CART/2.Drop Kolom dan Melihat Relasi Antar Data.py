#Kode sebelumnya
import pandas as pd

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

#Hapus kolom kode_kontrak dari dataframe
df.drop(['kode_kontrak'], axis=1, inplace=True)

#Periksa relasi antara kolom 'rata_rata_overdue' dan 'risk_rating'
print('melihat data unique pada kolom rata_rata_overdue:')
print(df['rata_rata_overdue'].unique())
print()
print('melihat data unique pada kolom risk_rating:')
print(df['risk_rating'].unique())
print()
print('membandingkan data pada kolom rata_rata_overdue dan risk_rating:')
print(df[['rata_rata_overdue','risk_rating']])

# TUgas
# Setelah memeriksa sampel data dari tiap kolom, aku memutuskan untuk menghapus kolom 'kode_kontrak', karena aku merasa kolom ini tidak relevan untuk dijadikan input dalam tugas klasifikasi. Selanjutnya aku menghapus kolom 'kode_kontrak' 
# ku juga ingin mengetahui hubungan antara kolom 'rata_rata_overdue' dan 'risk_rating', 

# Penjelasan
# Ternyata ada sedikit ketidakseimbangan jumlah data pada tiap kelas dimana jumlah dataset pada kelas ‘3’ hampir 3 kali dari jumlah dataset pada kelas ‘5’. Ini merupakan catatan yang berguna bagiku untuk melakukan evaluasi kinerja model yang akan aku buat nanti.

