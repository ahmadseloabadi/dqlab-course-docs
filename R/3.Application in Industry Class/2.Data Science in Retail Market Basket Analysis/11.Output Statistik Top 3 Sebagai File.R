library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)

data_item <- itemFrequency(transaksi, type="absolute")

#Melakukan sorting pada data_item
data_item <- sort(data_item, decreasing = TRUE)

#Mengambil 3 item pertama
data_item <- data_item[1:3]

#Konversi data_item menjadi data frame dengan kolom Nama_Produk dan Jumlah
data_item <- data.frame("Nama Produk"=names(data_item), "Jumlah"=data_item, row.names=NULL)

#Menulis File Statistik Top 3
write.csv(data_item, file="top3_item_retail.txt", eol = "\r\n")

# Teori
# Selain sebagai tampilan pada console, output dari sistem DQLab dapat berupa file. Dalam kesempatan kali ini, kita akan praktekkan bagaimana membuat file output untuk statistik top 3.

# Dari hasil sebelumnya, kita sudah mendapatkan statistik top 3 dari jumlah item terbanyak dalam bentuk data frame. Ini bisa kita tuliskan langsung menggunakan fungsi write.csv, selengkapnya adalah sebagai berikut.

# write.csv(data_item, file="top3_item_retail.txt", eol = "\r\n")
# Disini kita menulis variable data_item ke dalam file bernama "top_3_item.retail.txt" yang diisikan ke dalam parameter file. Terdapat tambahan parameter eol = "\r\n", yang berguna untuk menghasilkan file yang bisa ditampilkan di Windows dengan baik.

# Catatan: parameter terakhir ini bisa Anda abaikan pada saat mengerjakan proyek yang ada di DQLab.

# Masukkan perintah tersebut ke dalam code editor untuk menggantikan bagian #[...1...] kemudian jalankan. Jika berhasil maka output console akan kosong, hanya menampilkan eksekusi perintah tersebut.