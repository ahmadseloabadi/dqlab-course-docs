library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
transaksi@itemInfo


Teori
Item-item yang terdapat pada objek transactions dapat dilihat pada komponen itemInfo dengan didahului aksesor @, jadi ditulis @iteminfo. Ini bermanfaat untuk melihat daftar unik item yang terdapat pada data transaksi yang sedang kita analisa. 

Mari kita praktekkan untuk lebih jelasnya, pada code editor kita terlihat potongan code dimana hasil read.transactions disimpan dalam sebuah variable bernama transaksi. 

transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
Dengan disimpannya objek transaction ke dalam variable transaksi, maka bisa kita analisa lebih lanjut. Nah daftar item dari objek transaksi ini bisa kita lihat dengan penulisan berikut.

# transaksi@itemInfo
# Sekarang, tambahkan perintah tersebut pada code editor dan jalankan. Jika berjalan dengan lancar, maka akan muncul hasil seperti gambar berikut.

#         labels
# 1         Gula
# 2     Pet Food
# 3        Sirup
# 4    Teh Celup
# Terlihat ada empat item yang terdapat di seluruh data transaksi kita, yaitu Gula, Pet Food, Sirup dan Teh Celup.