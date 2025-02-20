#Membuat vector bernama isi.vector dengan isi bilangan, dimana salah satunya memiliki missing value
isi.vector <- c(1,2,3,NA,3,1)

#Mengecek keseluruhan tipe data dengan perulangan lapply dan typeof
lapply(isi.vector, typeof)

#Menggunakan is.na untuk mengecek keberadaan missing value dari tiap elemen pada vector 
is.na(isi.vector)

# Teori
# Dengan adanya variasi NA yang dijelaskan pada content sebelumnya, R akan secara otomatis menggantikan NA yang secara default tipe data logical menjadi variasi tersebut.

# Jadi jika kita mengetik hasil berikut.

# c(1, 2, NA, 4, 5)
# maka sebenarnya konstanta NA di atas akan diganti menjadi NA_real_. Namun tentunya ini ga akan terlihat, hanya terjadi sebagai proses di belakang layar oleh R.

# Tugas Praktek

# Isi bagian […1…] pada code editor dengan variable bernama isi.vector yang isinya c(1,2,3,NA,3,1). Kemudian kita akan menggunakan konstruksi lapply untuk mengecek semua tipe, isi […2…] dengan variable yang telah kita buat, dan […3…] dengan function typeof.

# Terakhir isi bagian […4…] dengan function is.na dan isi dengan variable isi.vector.