#Buat variable contoh.nan
contoh.nan <- 0/0

#Periksa dengan function is.nan
is.nan(contoh.nan)


# Teori
# Seperti halnya NA, jika kita membadingkan nilai NaN dengan menggunakan == maka hasilnya bukan TRUE/FALSE tapi menjadi NA, seperti pada contoh berikut.

# > NaN == NaN
# [1] NA
# Untuk membandingkan NaN kita bisa gunakan function is.nan, seperti pada contoh berikut.

# > is.nan(NaN)
# [1] TRUE
# Tugas Praktek

# Buat variable bernama contoh.nan dengan perhitungan 0/0 untuk menggantikan bagian […1…] dari code editor. Kemudian cek variabel dengan fungsi contoh.nan dengan mengganti code bagian […2…].