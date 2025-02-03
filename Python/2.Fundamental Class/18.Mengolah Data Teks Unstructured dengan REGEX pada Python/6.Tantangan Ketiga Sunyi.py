#Import library yang dibutuhkan
import pandas as pd

#Baca file dqlabregex.tsv
dqlabregex = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dqlabregex.tsv", sep = '\t')

#Ubah karakter pada kolom jumlah_member sesuai ketentuan
mapchange = {'O':'0','I':'1','S':'5'}
dqlabregex['jumlah_member_clean'] = dqlabregex['jumlah_member']

for ubah, pengubah in mapchange.items():
    dqlabregex['jumlah_member_clean'] = dqlabregex['jumlah_member_clean'].str.replace(ubah, pengubah, case=False)

#Tampilkan hasilnya
print(dqlabregex[['jumlah_member', 'jumlah_member_clean']])

# # Tugas
# Karena tadi kamu sudah berhasil, kali ini aku ingin kamu mencoba untuk membuat kolom baru bernama jumlah_member_clean yang berisi hasil pengubahan karakter non-numerik pada kolom jumlah_member yang terdapat pada dataframe dqlabregex dengan ketentuan sebagai berikut :

# Ubah karakter O atau o menjadi 0 (nol)
# Ubah karakter I atau i menjadi 1 (satu)
# Ubah karakter S atau s menjadi 5 (lima)

# # Penjelasan
# Dengan menggunakan dictionary yang berisi pemetaan antara karakter yang ingin diubah dengan karakter pengubah {'O' : '0', 'I' : '1', 'S':'5'} lalu lakukan looping dengan mengambil tiap elemennya maka karakter huruf akan diganti dengan angka sesuai pemetaannya. Inisialisasi parameter case pada sintaks replace menjadi False agar sintaks mengabaikan besar - kecilnya huruf. Ketika sintaks dijalankan akan diperoleh jumlah_member_clean yang berisi numerik saja. Dengan menampilkan kedua kolom, terlihat perbandingan sebelum dan sesudah penggantian.

