#Masukkan code di bawah ini sesuai permintaan soal
isi.vector <- c(1,2,NA,4,5,NaN,6)
sum(is.na( isi.vector ) == TRUE)


# Teori
# Setelah mengenal semua representasi missing value – dalam hal ini NA dan NaN – dan fungsi untuk mengidentifikasinya, kita dapat melakukan banyak hal.

# Salah satunya adalah mengetahui jumlah missing value yang terdapat pada data kita. Akan banyak contoh pada bagian-bagian berikutnya, tapi untuk memulai kita gunakan contoh vector.

# Untuk melakukan perhitungan banyaknya nilai missing value di vector, kita gunakan gabungan function sum dan is.na sebagai berikut:

# sum(is.na( variable_vector ) == TRUE)

# Penjelasan konstruksi tersebut adalah sebagai berikut.

# Komponen            Keterangan

# sum(…)              Function untuk menjumlahkan banyaknya elemen

# is.na(…) == TRUE    Konstruksi untuk mengidentifikasi elemen mana yang merupakan missing value

# variable_vector     Adalah variable yang isinya adalah vector dengan deklarasi c(…)

 

# Tugas Praktek

# Pada code editor berikut terdapat satu variable bernama isi.vector. Hitunglah jumlah elemen bernilai missing value dengan perintah yang akan menggantikan bagian […]

# Kesimpulan
# Selamat, dengan telah melewati bab ini maka Anda telah menguasai dasar untuk mengenal dan menangani missing value.

# Ini penting karena tanpa pengetahuan yang cukup mengenai missing value ini, Anda akan mengalami kesulitan ketika berhadapan dengan beragam jenis data dan proses perhitungan yang pada kenyataannya memang tidak rapi.

# Mari kita rangkum apa yang telah Anda tempuh sejauh ini:

# Mengenal representasi missing value di R, yaitu NA (Not Available)
# NA dan variasinya (NA_integer_, NA_real_, NA_complex_, dan NA_character_)
# NULL sebagai representasi missing object
# Perilaku NA dan NULL untuk vector dan list
# NaN sebagai representasi missing value angka (Not a Number)
# Penggunaan function is.na dan is.nan
# Dengan bekal materi tersebut, kita telah siap untuk mengolah data pada saat membaca berbagai variasi data yang memiliki missing value.

# Namun sebelum itu kita perlu menguasai lagi satu struktur data penting di R, yaitu factor.