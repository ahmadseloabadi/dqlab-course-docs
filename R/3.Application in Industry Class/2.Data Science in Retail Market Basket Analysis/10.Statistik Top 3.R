library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)

data_item <- itemFrequency(transaksi, type="absolute")

#Melakukan sorting pada data_item
data_item <- sort(data_item, decreasing = TRUE)

#Mengambil 3 item pertama
data_item <- data_item[1:3]

#Konversi data_item menjadi data frame dengan kolom Nama_Produk dan Jumlah
data_item <- data.frame("Nama Produk"=names(data_item), "Jumlah"=data_item, row.names=NULL)

print(data_item)

# Teori
# Statistik sederhana untuk menjawab pertanyaaan seperti "Mana 3 item yang memiliki jumlah terbanyak di seluruh transaksi?" tidak bisa langsung dilakukan dengan satu fungsi di R, tapi perlu penggabungan beberapa perintah dimana salah satunya adalah fungsi sort.

# Kita akan bahas ini sambil melakukan praktek sampai bisa menampilkan statistik top 3 item yang memiliki jumlah terbanyak seperti berikut.

#   Nama.Produk Jumlah
# 1   Teh Celup      8
# 2       Sirup      6
# 3    Pet Food      5 
# Mari kita mulai praktekkan, dimulai dari menjalankan code yang telah ada pada code editor. Code ini berfungsi untuk menampilkan data_item yang merupakan variable yang nilainya merupakan hasil pemanggilan fungsi itemFrequency.

# Cobalah jalankan code tersebut, dan jika berhasil maka akan muncul tampilan berikut.

# > print(data_item)
#      Gula  Pet Food     Sirup Teh Celup 
#         4         5         6         8 
# Terlihat empat item yang masih berupa vector dan belum terurut dari jumlah terbanyak. Sekarang, gantilah bagian #[...1...] dengan fungsi sort untuk nengurutkan item dari jumlah terbesar ke terkecil, dan disimpan kembali ke variable data_item.

# data_item <- sort(data_item, decreasing = TRUE)
# Fungsi sort di atas menerima input variable data_item, dan karena permintaan untuk mengurutkan dari jumlah terbesar ke terkecil maka kita perlu menambahkan parameter decreasing = TRUE. 

# Catatan: jika kita ingin tetap mengurutkan item dari jumlah terkecil ke terbesar maka parameter ini tidak perlu kita gunakan, atau kalau tetap mau digunakan maka diisi dengan nilai FALSE.

# Jalankan code Anda, dan jika berhasil maka muncul tampilan berikut.

# > print(data_item)
# Teh Celup     Sirup  Pet Food      Gula 
#         8         6         5         4 
# Terlihat item sudah terurut, tapi masih ada empat item ketimbang tiga item yang kita inginkan. Untuk mengambil tiga item saja bisa menggunakan konstruksi index [1:3] dari variable data_item yang artinya mengambil index pertama sampai dengan ketiga.

# Berikut adalah perintah lengkapnya, perhatikan hasil pengambilan disimpan kembali ke data_item.

# data_item <- data_item[1:3]
# Gantilah bagian #[...2...] pada code editor dengan perintah ini dan jalankan, jika berhasil maka akan muncul tampilan sebagai berikut.

# > print(data_item)
# Teh Celup     Sirup  Pet Food 
#         8         6         5 
# Dari tampilan ini terlihat kita sudah berhasil mengambil tiga item dengan jumlah terbanyak. Tahap terakhir adalah merubah hasil yang berupa vector ini ke dalam data frame. 

# Kalau dilihat kembali permintaan di atas, maka dua kolom dari data frame yang akan kita buat dinamakan "Nama Produk" dan "Jumlah". Berikut adalah perintah untuk memenuhi permintaan ini.

# data_item <- data.frame("Nama Produk"=names(data_item), "Jumlah"=data_item, row.names=NULL)
# Berikut adalah penjelasan detil dari perintah tersebut:

# data.frame: fungsi untuk membuat suatu data frame.
# "Nama Produk" <- names(data_item): adalah nama kolom pertama ("Nama Produk") yang diisi dengan nama atau label dari vector data_item (Teh Celup, Sirup, Pet Food)
# "Jumlah" <- data_item: adalah nama kolom kedua ("Jumlah") yang diisi dengan nilai-nilai vector data_item (8, 6, 5)
# row.names = NULL: artinya tidak memerlukan label pada tiap baris data frame, kalau parameter ini tidak ada maka output yang akan kita dapatkan jadi seperti berikut.
#           Nama.Produk Jumlah
# Teh Celup   Teh Celup      8
# Sirup           Sirup      6
# Pet Food     Pet Food      5
# Gantilah bagian #[...3...] pada code editor dengan perintah terakhir tersebut, dan jalankan. Jika berhasil, maka akan muncul tampilan output berikut.

#   Nama.Produk Jumlah
# 1   Teh Celup      8
# 2       Sirup      6
# 3    Pet Food      5 
# Dengan demikian, kita telah berhasil menghasilkan tampilan statistik ini dengan tambahan tiga perintah.