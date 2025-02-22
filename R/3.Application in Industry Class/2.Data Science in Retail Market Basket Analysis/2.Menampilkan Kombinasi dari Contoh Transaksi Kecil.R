#Menggunakan library arules
library(arules)

#Membaca transaksi dari file data_transaksi.txt
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)

#Menampilkan jumlah kombinasi dari produk yang terdapat pada daftar transaksi yang ada
inspect(apriori(transaksi, parameter = list(support=.1, minlen=2, target='frequent itemsets')))

# Kesimpulan
# Market Basket Analysis (MBA) adalah teknik analisa yang digunakan oleh bisnis di bidang ritel untuk mencari asosiasi produk yang kuat, atau dengan kata lain menemukan paket produk yang bisa berdampak besar pada penjualan.

# Algoritma yang bisa digunakan di R untuk melakukan MBA ini adalah apriori dari package arules. Data yang diperlukan hanya dua, yaitu data transaksi dan data produk.

# Dengan paket produk yang ditemukan, bisnis dapat melakukan beberapa hal berikut:

# Membuat paket produk dengan penawaran menarik.
# Menyusun produk dengan asosiasi kuat secara berdampingan pada rak toko.
# Menyusun tampilan katalog website e-commerce.
# Memberikan rekomendasi produk.

# Teori
# Dari subbab "Contoh Code Market Basket Analysis di R" pada bab satu kita telah melihat isi file dengan 10 transaksi yang terdapat pada file kita. Disini, DQLab akan mencantumkan hasilnya seperti terlihat di bawah ini.

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
# Nah, untuk mendapatkan gambaran berapa kombinasi produk yang mungkin terjadi cobalah jalankan code berikut sehingga Anda akan melihat hasil sebagai berikut.

#     items                      support
# [1] {Gula,Pet Food}            0.1    
# [2] {Gula,Sirup}               0.2    
# [3] {Gula,Teh Celup}           0.3    
# [4] {Pet Food,Sirup}           0.4    
# [5] {Pet Food,Teh Celup}       0.3    
# [6] {Sirup,Teh Celup}          0.4    
# [7] {Gula,Pet Food,Sirup}      0.1    
# [8] {Gula,Sirup,Teh Celup}     0.1    
# [9] {Pet Food,Sirup,Teh Celup} 0.2 
# Terlihat ada sembilan kombinasi produk dengan nilai support adalah rasio dari kombinasi tersebut terhadap keseluruhan transaksi.

# Sebagai contoh, kombinasi {Pet Food, Sirup} memiliki support 0.4 yang artinya kombinasi ini terdapat di 4 dari 10 transaksi yang tercatat.