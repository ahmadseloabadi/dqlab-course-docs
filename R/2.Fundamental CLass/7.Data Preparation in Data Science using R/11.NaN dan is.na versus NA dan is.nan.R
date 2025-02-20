#Masukkan code di bawah ini sesuai permintaan soal
is.na(NaN)
is.nan(NA)

# Teori
# Seluruh nilai NaN dapat diperiksa dengan fungsi is.na, sehingga hasilnya mengembalikan TRUE. Berikut adalah contohnya.

# > is.na(NaN)
# [1] TRUE
# Dengan demikian, secara umum pada R bisa dikatakan NaN juga adalah missing value.

# Namun tidak sebaliknya, semua nilai NA tidak akan mengembalikan nilai TRUE jika diperiksa dengan fungsi is.nan.

# > is.nan(NA)
# [1] FALSE
# Dengan level yang jelas seperti ini, kita bisa memisahkan mana missing values dan kemudian mana saja bagian yang merupakan perhitungan yang menghasilkan angka yang tidak bisa didefinisikan (not a number).

# Tugas Praktek

# Isi code editor berikut dengan dua contoh persis dari lesson di atas, masing-masing untuk fungsi is.na dan is.nan.