library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)

#Menggunakan inspect terhadap transaksi
inspect(transaksi)

# Teori
# Tiap transaksi terdiri atas beberapa item atau itemset. Pada praktek sebelumnya, kita baru melihat visualisasi dan sebaran matrix dari tiap transaksi namun masih sulit dicerna.

# Untuk melihat notasi itemset yang lebih baik dan mudah dimengerti kita bisa menggunakan function inspect.

# Penggunaan function ini juga sederhana. Seperti terlihat pada contoh berikut dimana kita inspect variable transaksi kita.

# inspect(transaksi)
# Tambahkan perintah ini pada code editor - di bawah comment "#Menggunakan inspect terhadap transaksi". Jika berhasil dijalankan, maka akan muncul hasil berikut.

#      items                      transactionID
# [1]  {Pet Food,Sirup,Teh Celup} #01          
# [2]  {Gula,Teh Celup}           #02          
# [3]  {Pet Food,Sirup}           #03          
# [4]  {Sirup,Teh Celup}          #04          
# [5]  {Gula,Sirup,Teh Celup}     #05          
# [6]  {Pet Food,Teh Celup}       #06          
# [7]  {Pet Food,Sirup,Teh Celup} #07          
# [8]  {Teh Celup}                #08          
# [9]  {Gula,Teh Celup}           #09          
# [10] {Gula,Pet Food,Sirup}      #10 
# Ini merupakan daftar itemset dari sepuluh transaksi kita. Kolom items berisi item-item yang terjadi pada transaksi, dan transactionID berisi kode transaksi. Sebagai contoh, pada kode transaksi #01 terdapat itemset yang terdiri dari Pet Food, Sirup dan Teh Celup.

# Format penulisan tiap itemset terdiri dari notasi kurung kurawal pembuka dan penutup, yang di dalamnya terdapat daftar item yang dipisahkan tanda koma untuk tiap itemnya.