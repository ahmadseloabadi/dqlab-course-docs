#Membuat vector dengan 7 elemen termasuk NA dan NULL
isi.vector <- c(1, 2, 3, NA, 5, NULL, 7)

#Menghitung jumlah elemen dari isi.vector
length(isi.vector)


# Teori
# Untuk memahami NULL, dan perbedaan dengan NA kita langsung mempraktekkannya dengan mengisi suatu vector dengan NULL.

# Berikut adalah contoh variabel vector yang mengandung 7 elemen termasuk NA dan NULL.

# isi.vector <- c(1, 2, 3, NA, 5, NULL, 7)
# Jika kita menampilkan isinya, maka akan terlihat hasil sebagai berikut.

# > isi.vector
# [1]  1  2  3 NA  5  7
# Terlihat dari tampilan, tidak ada NULL disana. Mari kita pastikan lagi dengan menghitung jumlah isi dari vector dengan function length.

# > length(isi.vector)
# [1]  6
# Hasilnya adalah 6, padahal kita memasukkan 7 elemen. Dengan demikian terlihat bahwa NULL memang mewakili undefined object dan tidak dianggap oleh vector. Dengan demikian tidak menjadi bagian dari vector.

 

# Tugas Praktek

# Buat variable bernama isi.vector dengan isi c(1, 2, 3, NA, 5, NULL, 7) untuk menggantikan bagian […1…] dari code editor.

# Kemudian hitung panjang dari isi.vector dengan function length, untuk menggantikan bagian […2…] dari code editor.

# Ringkasan Perbandingan NA dan NULL
# Kita telah membahas mengenai NA dan NULL pada teks dan praktek sebelumnya. Untuk memudahkan pemahaman, berikut adalah rangkuman perbedaan terhadap keduanya.

#                     NA                                                                          NULL

# Apa itu?            Adalah sebuah konstanta (variable yang tidak bisa diubah lagi nilainya)     Sebuah object untuk merepresentasikan sesuatu yang "tidak terdefinisi"
#                     sebagai indikator dari missing value


# Kata kunci          Indikator                                                                   tidak terdefinisi


# Panjang (length)    1                                                                           0
# dari object

# Tipe                Logical                                                                     object       

# Variasi             NA dapat berubah menjadi representasi variasi                               Tidak ada variasi
#                     missing value dengan daftar berikut:

#                     ·        NA_integer_ untuk tipe data "integer"

#                     ·        NA_real_ untuk tipe data "double"

#                     ·        NA_complex_ untuk tipe data "complex"

#                     ·        NA_character_ untuk tipe data "character"



# Contoh kasus ketika kita akan menemukan object ini?

# Ketika kita membaca data yang tidak memiliki nilai

# Ketika mengakses posisi index yang tidak terdapat pada suatu list

# Keterangan:

# Artinya NA adalah representasi missing value yang "masih" memiliki nilai logika – yang berfungsi sebagai indikator.
# NULL sendiri adalah objek tidak berbentuk, maka itu tidak terdefinisi dan panjangnya 0.
# Salah satu operasi yang akan menghasilkan NULL adalah pada saat kita mengakses nama element yang tidak terdapat di dalam suatu list.