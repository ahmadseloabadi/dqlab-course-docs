#Membaca file yang berlokasi di https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt dengan fungsi read.csv, dan kemudian disimpan pada variable transaksi_tabular
transaksi_tabular <- read.csv("https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", sep="\t")

#Menampilkan variable transaksi_tabular dengan fungsi print
print(transaksi_tabular)

# Teori
# Data frame adalah tipe data yang banyak digunakan oleh berbagai algoritma di R. Walaupun nanti akan kita olah dengan tipe data lain yang bernama transaction.

# Nah, sebelum kesana ada baiknya kita coba membaca dataset kita apa adanya dengan tipe data frame. Ini bisa kita lakukan di R dengan menggunakan perintah read.csv. 

# Mari kita praktekkan penggunaan read.csv ini dengan mengetikkan perintah berikut pada code editor untuk menggantikan bagian #[...1...].

# transaksi_tabular <- read.csv("https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", sep="\t")
# Berikut adalah keterangan per bagian dari perintah tersebut:

# transaksi_tabular: nama variable yang digunakan untuk menampung data dari contoh dataset
# csv: function yang digunakan untuk membaca contoh dataset yang berupa file
# https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt: lokasi dataset yang terdapat di web DQLab. Jika lokasi file dan aplikasi R terdapat di komputer lokal Anda, maka gantilah dengan lokasi file di lokal. Misalkan c:\data\data_transaksi.txt
# sep: separator character atau karakter pemisah antar kolom, untuk file ini karakter pemisahnya adalah tab atau dalam notasi di R ditulis dengan "\t".
# Jika dijalankan, perintah di atas belum menghasilkan output apapun. Untuk menampilkan isinya, kita gunakan fungsi print diikuti variable yang kita gunakan.

# print(transaksi_tabular)
# Ketikkan perintah tersebut untuk menggantikan bagian #[...2...] pada code editor dan jalankan. Jika semua berjalan dengan lancar, maka akan muncul hasil seperti berikut.

#    Kode.Transaksi      Item
# 1             #01 Teh Celup
# 2             #01     Sirup
# 3             #01  Pet Food
# 4             #02 Teh Celup
# 5             #02      Gula
# 6             #03     Sirup
# 7             #03  Pet Food
# 8             #04 Teh Celup
# 9             #04     Sirup
# 10            #05 Teh Celup
# 11            #05     Sirup
# 12            #05      Gula
# 13            #06 Teh Celup
# 14            #06  Pet Food
# 15            #07 Teh Celup
# 16            #07     Sirup
# 17            #07  Pet Food
# 18            #08 Teh Celup
# 19            #09 Teh Celup
# 20            #09      Gula
# 21            #10     Sirup
# 22            #10  Pet Food
# 23            #10      Gula
# Terlihat output dengan dua kolom yaitu "Kode.Transaksi" dan "Item". Terdapat juga nomor baris untuk tiap data yang ditampilkan. Perhatikan ada beberapa kode yang sama pada beberapa baris, ini menunjukkan satu transaksi yang sama.

 

# Sebagai contoh, untuk kode transaksi #01 terdapat tiga baris data. Tiap baris data mewakili satu item, jadi pada transaksi tersebut ada tiga item, yaitu "Teh Celup", "Sirup" dan "Pet Food".