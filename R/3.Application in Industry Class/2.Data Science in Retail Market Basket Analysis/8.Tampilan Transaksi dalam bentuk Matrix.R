library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
transaksi@data

# Teori
# Ada kalanya kita ingin melihat sebaran item pada keseluruhan transaksi kita. Dengan menggunakan daftar output berupa teks akan terasa sangat panjang. Sebagai salah satu solusinya, kita bisa menampilkan sebaran ini dalam bentuk matrix dua dimensi, dimana baris matrix urutan item dan pada kolom adalah item transaksi. Untuk lebih jelasnya, mari kita langsung praktekkan saja.

# Matrix dari objek transaction dapat dilihat dari komponen data menggunakan aksesor @, ditulis lengkap sebagai @data. Menyambung praktek sebelumnya, maka objek matrix pada variable transaksi kita ditulis sebagai berikut.

# transaksi@data
# Tambahkan perintah di atas pada code editor dan jalankan. Jika berhasil dijalankan, harusnya muncul tampilan matrix sebagai berikut.

# 4 x 10 sparse Matrix of class "ngCMatrix"
# [1,] . | . . | . . . | |
# [2,] | . | . . | | . . |
# [3,] | . | | | . | . . |
# [4,] | | . | | | | | | . 
# Berikut adalah penjelasan hasilnya:

# 4 x 10 :  artinya terdapat 4 item dan 10 transaksi.
# [1,] s/d [4,] : artinya index yang mewakili tiap item dalam transaksi. Index ini sebenarnya mencerminkan urutan dari hasil dari subbab "Menampilkan Daftar Item Transaksi" sebagai berikut:
#         labels
# 1         Gula
# 2     Pet Food
# 3        Sirup
# 4    Teh Celup
# dengan demikian, item Gula diwakili [1,], Pet Food diwakili [2,], dan seterusnya.
# Simbol tanda titik .  menunjukkan item tidak ada di transaksi.
# Simbol garis lurus |  menunjukkan bahwa item ada di transaksi.
# Untuk lebih jelasnya mari kita lihat penulisan ulang dari output di atas sebagai berikut. Kali ini garis-garis pada transaksi item ke-1 (Gula) ditandai warna biru.

# 4 x 10 sparse Matrix of class "ngCMatrix"
# [1,] . | . . | . . . | |
# [2,] | . | . . | | . . |
# [3,] | . | | | . | . . |
# [4,] | | . | | | | | | .
# Tanda garis ini terdapat pada transaksi ke 2, 5, 9, dan 10. Apakah benar? Mari kita buktikan dengan melihat kembali output dari file data frame berikut - dimana item Gula diberi penanda warna biru. Sama bukan?

 

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
# Dengan penjelasn ini, kita semakin paham apa arti dari matrix ini yang dapat membantu kita menganalisa distribusi item-item pada seluruh transaksi yang ada dengan lebih ringkas.