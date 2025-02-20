#Buat variable x yang diisi dengan nilai NA
x <- NA

#Pengecekan variable x dengan nilai NA menggunakan operator ==
x == NA

#Pengecekan variable x dengan nilai NA menggunakan function is.na
is.na(x)


# Teori
# Pada saat kita membandingkan nilai atomik biasanya kita menggunakan operator ==, misalkan untuk periksa suatu variabel x yang bernilai 3 – yang sebelumnya kita juga telah memasukkan angka yang sama – kita bisa melakukan hal berikut.

# x <- 3
# x == 3
# Maka hasil eksekusi perintah di atas akan menghasilkan nilai TRUE seperti terlihat dari potongan code lengkap berikut.

# x <- 3
# > x == 3
# [1] TRUE
# Nah, ini tidak berlaku untuk NA. Jadi jika nilai x kita isi dan cek dengan cara yang sama sebagai berikut.

# x <- NA
# x == NA
# Hasil eksekusinya tidak akan menghasilkan TRUE, tapi tetap NA.



 

# Pengecekan seperti ini tentunya tidak mungkin dilakukan jika kita menggunakan konstruksi percabangan keputusan seperti if ataupun konstruksi perulangan seperti while.

# Nah, untuk mengatasi hal ini R menggunakan function bernama is.na dengan input berupa konstanta atau variabel. Mari kita ubah simbol == contoh di atas menggunakan function is.na seperti berikut.

# is.na(NA)
# Kali ini hasil eksekusinya akan bernilai TRUE.



 

# Tugas Praktek

# Cobalah definisikan variable x yang diisi dengan missing value NA pada bagian […1…], dan masukkan konstruksi perbandingan antara variable x dengan nilai NA dengan simbol == pada bagian […2…].

# Dan terakhir, masukkan perbandingan dengan function is.na untuk menggantikan […3…]