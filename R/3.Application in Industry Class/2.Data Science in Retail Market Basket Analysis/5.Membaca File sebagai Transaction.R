library(arules)
read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)


# Teori
# Dari latihan sebelumnya, membaca file transaksi ini dengan data.frame cukup menyulitkan karena kita perlu menghitung manual atau menggunakan fungsi-fungsi lain untuk data frame.

# Untuk ini, ada tipe data lain yang lebih tepat untuk itu bernama transactions dan berasal dari package R bernama arules. Function yang digunakan untuk menghasilkan tipe data ini adalah read.transactions.

# Berikut adalah contoh penggunaan untuk membaca dataset kita.

# read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
# Keterangan code:

# File : Parameter lokasi file yang bisa berasal dari url di web satau lokal. Pada contoh ini dibaca file data_transaksi.txt yang berlokasi di website academy.dqlab.id.
# https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt: lokasi dataset yang terdapat di web DQLab. Jika lokasi file dan aplikasi R terdapat di komputer lokal Anda, maka gantilah dengan lokasi file di lokal. Misalkan c:\data\data_transaksi.txt
# format: Format bisa "single" atau "basket".
# "single" artinya tiap item transaksi dituliskan terpisah baris demi baris, dan ini cocok dengan format dari file kita.
# "basket" artinya seluruh item per transaksi ditulis per baris.
# sep: separator character atau karakter pemisah antar kolom, untuk file ini karakter pemisahnya adalah tab atau dalam notasi di R ditulis dengan "\t".
# cols: indeks dari kolom-kolom yang digunakan. Untuk format single maka kolom harus dua saja, kolom pertama adalah kode transaksi sedangkan kolom kedua menunjukkan item transaksi. Penulisan c(1,2) pada contoh kita artinya kolom pertama dan kedua yang kita gunakan.
# skip: jumlah baris yang dilewati sebelum mulai membaca data. Untuk dataset kita, baris pertama adalah header dan tidak diperlukan, jadi kita masukkan 1 sebagai input.
# Gantilah potongan […] pada code editor dengan detil perintah read.transactions persis seperti contoh di atas. Jika semuanya berjalan lancar, Anda akan mendapatkan hasil berikut.

# transactions in sparse format with
#  10 transactions (rows) and
#  4 items (columns)
# Keterangan hasil:

# transactions in sparse format: Ini artinya transaksi dalam bentuk sparse (tersebar). Ini mungkin akan lebih jelas ketika divisualiasikan dalam bentuk matrix, ini akan kita praktekkan pada beberapa subbab di depan.
# 10 transactions (rows): dataset kita secara total memiliki 10 transaksi. Ada informasi rows atau baris disini, ini bukan berarti data kita ada 10 baris di file kita. Karena pada kenyataannya, file memiliki 23 baris data. 
# 4 items (kolom): dataset kita secara total memiliki 4 item unik.