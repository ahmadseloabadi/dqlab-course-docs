library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
itemFrequency(transaksi, type="absolute")


# Teori
# Setelah mengetahui bagaimana caranya menampilkan informasi daftar transaksi, kode transaksi, item dan distribusi item pada transaksi, kita harusnya ingin juga mengetahui item dengan jumlah kemunculannnya pada keseluruhan transaksi. Informasi ini disebut sebagai item frequency.

# Untuk menghasilkan informasi ini kita gunakan fungsi itemFrequency dengan input objek transaction, dan hasilnya berupa named vector atau vector yang bisa diakses dengan nama.

# Berikut adalah contoh penggunaan fungsi itemFrequency untuk kasus kita.

# itemFrequency(transaksi)
# Cobalah tambahkan perintah tersebut pada code editor kita dan jalankan. Jika berhasil, maka akan muncul tampilan berikut.

 

# > itemFrequency(transaksi)
#      Gula  Pet Food     Sirup Teh Celup 
#       0.4       0.5       0.6       0.8 
# Hasil ini menunjukkan bahwa frekuensi kemunculan Gula adalah 0.4 atau 40 persen dari porsi seluruh transaksi yang ada, Pet Food menempati 50 persen, dan seterusnya.

# Lalu bagaimana jika bukan persentase yang ingin kita tampilkan, tapi jumlah item dalam angka sebenarnya?

# Tentunya bisa dilakukan. Caranya adalah menambahkan parameter type="absolute" ke dalam fungsi itemFrequency sebagai berikut.

# itemFrequency(transaksi, type="absolute")
# Ubahlah fungsi itemFrequency pada code editor sesuai dengan tambahan parameter ini dan jalankan. Jika berhasil, maka akan muncul tampilan berikut.

# > itemFrequency(transaksi, type="absolute")
#      Gula  Pet Food     Sirup Teh Celup 
#         4         5         6         8 
# Ini artinya Gula memiliki kemunculan 4 kali dari seluruh transaksi yang ada, Pet Food muncul sebanyak 5 kali, Sirup sebanyak 6 kali, dan Teh Celup sebanyak 8 kali.

# Fungsi itemFrequency ini sangat penting untuk membantu kita menganalisa transaksi yang lebih kompleks dimana item yang terlibat lebih banyak dan transaksi yang terjadi lebih besar