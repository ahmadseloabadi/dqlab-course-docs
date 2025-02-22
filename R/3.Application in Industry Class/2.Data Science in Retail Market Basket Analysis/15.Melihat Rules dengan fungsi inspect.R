library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)

#Menghasilkan association rules dan disimpan sebagai variable mba
mba <- apriori(transaksi)

#Melihat isi dari rules dengan menggunakan fungsi inspect
inspect(mba)

# Teori
# Di awal bab, kita bisa melihat daftar transaksi dengan menggunakan fungsi inspect. Selain transaksi, fungsi ini bisa digunakan juga untuk melihat isi dari association rules yang dihasilkan oleh fungsi apriori.

# Perhatikan pada code editor, hasil eksekusi apriori berupa rules sudah disimpan dalam variable bernama mba. Jadi untuk menampilkan isi rules pada variable ini kita gunakan perintah berikut.

# inspect(mba)
# Tambahkan perintah tersebut pada code editor - di bagian bawah comment "#Melihat isi dari rules dengan menggunakan fungsi inspect" dan jalankan. Jika berhasil, maka akan muncul hasil sebagai berikut.

#     lhs                rhs         support confidence lift
# [1] {}              => {Teh Celup} 0.8     0.8        1.000000
# [2] {Pet Food}      => {Sirup}     0.4     0.8        1.333333
# [3] {Gula,Pet Food} => {Sirup}     0.1     1.0        1.666667
# Terlihat kalau variable mba menyimpan tiga rules dengan kolom-kolom berikut:

# lhs: itemset di bagian kiri (left hand side)
# rhs: itemset di bagian kanan (right hand side)
# support, confidence dan lift: metrik-metrik yang digunakan untuk menilai kualitas dari rule. Umumnya semakin besar semakin baik. Detil dari metrik-metrik ini akan dibahas pada bab berikutnya.
# Kalau fokus kita kembali ke itemset lhs dan rhs untuk product packaging, terlihat rule kedua yaitu {Pet Food} => {Sirup} cukup menarik.

# Kenapa bisa dikatakan menarik?

# Karena support 0.4 menunjukkan bahwa kombinasi ini terdapat di 40 persen poulasi - berarti 4 dari 10 transaksi untuk dataset kita. Nilai lift juga di atas 1, yang artinya rule ini memiliki asosiasi tinggi antar itemset yang terdapat di rule ini.

# Sedangkan {} => {Teh Celup} tidak menarik karena hanya berisi satu item. Rule sisanya, {Gula, Peta Food} = > {Sirup} terlalu unik - ini ditunjukkan dengan support 0.1 (10%) yang artinya hanya terdapat di 1 dari 10 transaksi.

# Apa makna dari rule jika ingin kita aplikasikan?

# Artinya ada beberapa opsi action item yang bisa kita lakukan:

# rekomendasikan kepada setiap pelanggan yang membeli Pet Food untuk membeli Sirup.
# rak display Pet Food dan Sirup bisa didekatkan.
# Pet Food dan Sirup dipaketkan bersama dan dijual dengan harga khusus.