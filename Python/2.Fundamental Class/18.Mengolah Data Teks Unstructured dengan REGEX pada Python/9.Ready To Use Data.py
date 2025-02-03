#Import library yang dibutuhkan
import pandas as pd

#Baca file dqlabregex.tsv
dqlabregex = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dqlabregex.tsv", sep = '\t')
print("Tabel A:")
print(dqlabregex)

#Ubah karakter pada kolom jumlah_member sesuai ketentuan
mapchange = {'([0-9]{2})-([0-9]{2})-([0-9]{4})': '\\3-\\2-\\1', '([0-9]{2})/([0-9]{2})/([0-9]{4})' : '\\3-\\1-\\2'}
for ubah, pengubah in mapchange.items():
   dqlabregex['tanggal_catat'] = dqlabregex['tanggal_catat'].str.replace(ubah, pengubah)
 
#Ubah menjadi tipedata datetime pada kolom tanggal_catat
dqlabregex['tanggal_catat'] = pd.to_datetime(dqlabregex['tanggal_catat'])
 
#Hapus karakter non numerik pada kolom jumlah_member dan ubah tipedatanya menjadi integer
dqlabregex['jumlah_member'] = dqlabregex['jumlah_member'].str.replace('[^0-9]','')
dqlabregex['jumlah_member'] = dqlabregex['jumlah_member'].astype('int')
 
#Ubah kata Sendja ataupun padanannya menjadi satu kata 'Senja' pada kolom staf_pencatat
dqlabregex['staf_pencatat'] = dqlabregex['staf_pencatat'].str.replace('Sen.?ja', 'Senja')
 
#Tampilkan hasilnya
print("\nTabel B:")
print(dqlabregex) 

# Tugas
# Wah Sunyi sudah belajar dan menyelesaikan tugas-tugasnya dengan baik! Sudah saatnya aku memberikannya pekerjaan yang lebih menantang.

# Aku memberikan Sunyi data file https://storage.googleapis.com/dqlab-dataset/dqlabregex.tsv, dan tak lupa memberikan instruksi untuk membaca data dan mengganti record pada masing-masing kolom:

# Pada kolom tanggal_catat ubah semua format tanggalnya menjadi format tanggal menjadi format YYYY-MM-DD. Lalu ubah tipe datanya menjadi datetime dengan bantuan sintaks (pd.datetime(Series))
# Hapus setiap karakter non-numerik pada kolom jumlah_member lalu ubah tipedatanya menjadi integer dengan bantuan sintaks (Series.astype('int'))
# Ubah record yang memuat Sendja maupun padanannya menjadi Senja
# Penamaan kolom dan urutannya tidak ada yang diubah