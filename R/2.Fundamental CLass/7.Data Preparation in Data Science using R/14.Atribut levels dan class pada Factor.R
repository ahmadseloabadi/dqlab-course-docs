#Variable factor bernama faktor.bulan dengan nilai teks "Jan", "Feb", dan "Mar"
faktor.bulan <- factor(c("Jan","Feb","Mar"))
attributes(faktor.bulan)


# Teori
# Perbandingan yang kontras antara factor dengan vector atau data.frame adalah pada factor terdapat atribut tambahan, yaitu levels.

# Atribut sendiri adalah variable yang melekat dan menjadi bagian dari objek atau variable lain.

# Selain atribut levels, pada factor terdapat juga atribut class.

# Untuk melihat seluruh atribut pada kita menggunakan function attributes, berikut adalah contoh penggunaannya.

# attributes(variable)

# Dan nilai atribut tergantung penerapannya oleh R. Dan untuk levels, atributnya selalu bertipe karakter atau teks. Ini merupakan catatan penting yang sangat berguna dalam pemanfaatan factor lebih jauh.

# Mari kita langsung lakukan praktek agar lebih jelas.

# Tugas Praktek

# Pada code editor, terdapat satu variable bernama faktor.bulan yang telah diisi dengan factor. Tampilkan atribut dari variable ini memasukkan perintah pada bagian […].

# penjelasan
# Dimana hasilnya terdapat dua atribut, yaitu levels dan class (ditandai dengan tanda $ pada nama atribut di depannya) dengan nilai-nilai atributnya (perhatikan semua memiliki tanda kutip pada nilainya – yang menandakan nilainya berupa karakter atau teks).

# Dan disini terlihat atribut class berisi "factor" – menandakan objek ini memang adalah sebuah factor.