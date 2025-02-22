library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
transaksi@itemsetInfo

# Teori
# Sepuluh transaksi yang telah dibaca oleh read.transactions dapat dilihat detil kode-kodenya dengan menggunakan komponen itemsetInfo dengan aksesor @, atau lengkapnya ditulis dengan @itemsetInfo. Daftar ini bisa bermanfaat sebagai basis untuk menganalisa atau melakukan validasi dengan data yang ada pada sistem ritel.

# Menyambung praktek sebelumnya, berikut adalah contoh penulisan untuk mengakses daftar kode transaksi dari variable transaksi.

# transaksi@itemsetInfo
# Tambahkan perintah tersebut di dalam code editor kita. Jika berhasil dijalankan, maka akan muncul tampilan berikut.

#    transactionID
# 1            #01
# 2            #02
# 3            #03
# 4            #04
# 5            #05
# 6            #06
# 7            #07
# 8            #08
# 9            #09
# 10           #10 
# Terlihat ada sepuluh kode transaksi di seluruh transaksi kita yaitu kode #01 sampai dengan #10.

# Catatan: #01, #02 dan seterusnya bukan format tampilan dari R, tapi hasil dari pembacaan file transaksi kita.