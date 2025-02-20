typeof(NA_integer_)
typeof(NA_real_)
typeof(NA_complex_)
typeof(NA_character_)
is.na(NA_integer_)
is.na(NA_real_)
is.na(NA_complex_)
is.na(NA_character_)


# Teori
# Seperti disebutkan sebelumnya, NA adalah merupakan nilai atomik dan konstanta, dan awalnya merupakan representasi missing value dari logical.

# Apa artinya?

# Ini jika dihubungkan dengan tipe data lain di R seperti vector – dimana isinya harus seragam tipe datanya – maka vector tersebut hanya boleh berisi nilai TRUE dan FALSE.

# Sebagai perbandingan, mari kita lihat contoh pembuatan satu vector dengan isi campuran dari integer dan logical berikut.

# c(1, 2, FALSE, 3)
# Hasil akan ditampilkan sebagai berikut.

# [1] 1 2 0 3
# Terlihat bahwa FALSE di atas dikonversi (beradaptasi) menjadi 0. Adaptasi ini juga disebut dengan coerce di dokumentasi R.

# Lalu bagaimana dengan missing value NA?  

# NA juga memiliki konstanta yang digunakan untuk beradaptasi, yaitu:

# NA_integer_ untuk representasi tipe data "integer"
# NA_real_ untuk representasi tipe data "double"
# NA_complex_ untuk representasi tipe data "complex"
# NA_character_ untuk representasi tipe data "character"
# Dan semuanya memiliki nilai NA. Jika kita cek tipe data dari salah satu variasi missing value NA sebagai berikut

# typeof(NA_real_)
# Maka kita akan dapatkan hasil "double" seperti berikut.

# > typeof(NA_real_)
# [1] "double"
# Namun jika menggunakan is.na maka seluruhnya akan mengembalikan hasil TRUE.

# Untuk lebih jelasnya mari kita lakukan praktek berikut.

# Tugas Praktek

# Cobalah ketikkan empat function typeof untuk menggantikan bagian […1…] s/d […4…] code editor, dengan masing-masing secara berurut mengecek NA_integer_, NA_real_, NA_complex_ dan NA_character_.

# Kemudian ketikkan lagi function is.na untuk menggantikan bagian […5…] s/d […8…] code editor secara berurut untuk  NA_integer_, NA_real_, NA_complex_ dan NA_character_.