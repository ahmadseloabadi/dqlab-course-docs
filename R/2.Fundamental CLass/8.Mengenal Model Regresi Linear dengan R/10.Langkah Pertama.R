# 1. Import data penjualan sereal dan kunjungan dokter gigi
penjualan = read.csv("https://storage.googleapis.com/dqlab-dataset/kunjungan_dokter_gigi_kota_x_dqlab.tsv", header = TRUE, sep = "\t")
kunjungan_dokter= read.csv("https://storage.googleapis.com/dqlab-dataset/tingkat_penjualan_kota_x_dqlab.tsv", header = TRUE, sep = "\t")
print(penjualan)
print(kunjungan_dokter)