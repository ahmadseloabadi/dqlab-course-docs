library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)

#Tampilan item frequency plot
itemFrequencyPlot(transaksi)


# Teori
# Selain tampilan transaksi dalam bentuk matrix, kita bisa juga melihat distribusi transaksi dari tiap item dalam bentuk grafik dengan menggunakan fungsi itemFrequencyPlot.

# Perintahnya sederhana, seperti terlihat pada contoh berikut dimana kita plot distribusi dari dataset kita.

# itemFrequencyPlot(transaksi)
# Tambahkan perintah tersebut pada code editor pada bagian di bawah comment "#Tampilan item frequency plot". 

# penjelasan
# Dari distribusi ini, terlihat item Teh Celup paling laku dan Gula paling sedikit transaksinya.

# Kesimpulan
# Pada bab praktek awal ini, kita telah mengolah data transaksi berupa file teks dengan beberapa langkah penting berikut:

# Membaca file dataset dengan read.csv dan menganalisa statistik sebaran item dan transaksi secara manual.
# Membaca kembali file tersebut dengan read.transactions yang menghasilkan objek yang lebih mudah dianalisa di R.
# Dengan objek yang dihasilkan oleh read.transactions kita dapat menganalisa jumlah item dan transaksi, daftar detil item, daftar detil transaksi, dan juga distribusinya.