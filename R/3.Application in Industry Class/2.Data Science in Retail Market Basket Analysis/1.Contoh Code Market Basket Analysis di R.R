#Menggunakan library arules
library(arules)

#Membaca transaksi dari file data_transaksi.txt
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)

#Menampilkan data transaksi dengan print dan inspect 
inspect(transaksi)

#Menghasilkan model Market Basket Analysis
mba <- apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))

#Menampilkan paket produk
inspect(subset(mba, lift>1))


# Teori
# Penerapan Market Basket Analysis (MBA) di R dapat menggunakan algoritma apriori – yang merupakan salah satu algoritma terpopuler di area machine learning - pada package arules. Arules sendiri adalah singkatan dari association rules - kategori machine learning. Untuk menjalankan algoritma ini diperlukan dibutukan dua data, yaitu data produk dan data transaksi.

# Berikut adalah contoh code di R yang jika dijalankan akan memunculkan contoh data transaksinya seperti berikut.

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
# Dan hasil pemaketan produk yang disarankan terlihat seperti berikut .
#     lhs                     rhs        support confidence lift    
# [1] {Pet Food}           => {Sirup}    0.4     0.8000000  1.333333
# [2] {Sirup}              => {Pet Food} 0.4     0.6666667  1.333333
# [3] {Gula,Pet Food}      => {Sirup}    0.1     1.0000000  1.666667
# [4] {Pet Food,Teh Celup} => {Sirup}    0.2     0.6666667  1.111111 
# Hasil pada baris pertama dan kedua menunjukkan produk "Pet Food" cocok dipasangkan dengan "Sirup". Lebih detilnya mengenai hasil ini akan dijelaskan pada