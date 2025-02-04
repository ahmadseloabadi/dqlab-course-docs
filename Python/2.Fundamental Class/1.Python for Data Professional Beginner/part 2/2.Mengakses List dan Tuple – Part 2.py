bulan_pembelian = ('januari','februari','maret','april','mei','juni','juli','agustus','september','oktober','november','desember')
pertengahan_tahun = bulan_pembelian[4:8]
print(pertengahan_tahun)
awal_tahun = bulan_pembelian[:5]
print(awal_tahun)
akhir_tahun = bulan_pembelian[8:]
print(akhir_tahun)
print(bulan_pembelian[-4:-1])

# Cara collections manipulation pertama yang akan aku pelajari adalah memotong (slicing) list/tuple dengan menggunakan rentangan nilai indeks (range of index).

# Tugas 1:
# Aku mencoba mempraktekkan potongan kode di bawah dengan live code editor:



# Untuk menampilkan output bulan_pembelian Mei, Juni, Juli, Agustus, aku dapat menggunakan syntax di bawah untuk mengambil index 4 - 7.



# Tugas 2:
# Untuk menampilkan output bulan_pembelian Januari, Februari, Maret, April, Mei aku dapat menggunakan syntax di bawah untuk mengambil index 0 - 4.



# Tugas 3:
# Untuk menampilkan output September, Oktober, November, Desember. Aku dapat menggunakan syntax di bawah untuk mengambil index 8 - elemen terakhir.



# Tugas 4:
# Aku juga dapat memotong suatu list/tuple dengan menggunakan indeks negatif. Sebagai contoh untuk mendapatkan output September, Oktober, November 