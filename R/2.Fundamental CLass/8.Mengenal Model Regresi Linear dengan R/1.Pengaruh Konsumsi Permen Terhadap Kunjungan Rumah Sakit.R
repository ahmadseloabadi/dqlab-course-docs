penjualan_permen = read.csv("https://storage.googleapis.com/dqlab-dataset/tingkat_penjualan_kota_x_dqlab.tsv", header = TRUE, sep = "\t")
kunjungan_dokter = read.csv("https://storage.googleapis.com/dqlab-dataset/kunjungan_dokter_gigi_kota_x_dqlab.tsv", header = TRUE, sep = "\t")

print(penjualan_permen)
print(kunjungan_dokter)


# Teori
# Aku kembali mengecek email dari Kroma, untuk melihat ada 2 dataset yang bisa kugunakan untuk mendapatkan hasil analisa. 

# Dataset pertama yaitu kunjungan_dokter_gigi_kota_x_dqlab.tsv yang berisi data tingkat kunjungan masyarakat ke dokter gigi perbulan. Dan dataset kedua yaitu tingkat_penjualan_kota_x_dqlab.tsv yang berisikan data penjualan makanan per bulan.


# Sebagai langkah awal, aku melakukan import data tsv menggunakan R. Aku membuka aplikasi R untuk melihat data yang diberikan Kroma, dan menggunakan perintah read.csv() dengan separator sep = "\t" karena data yang diberikan Kroma memiliki format tsv atau tab separated value.

