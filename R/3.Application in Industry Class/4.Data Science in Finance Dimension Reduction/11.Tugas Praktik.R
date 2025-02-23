# Ketik perintah berikut ini untuk membaca help tentang matriks
?matrix

# Buatlah matriks 3 x 3 dan simpan dengan nama matriks A.
A <- matrix(c(1, 1, 0, 0, -2, 1, 0, 0, 3), nrow = 3, ncol = 3, byrow = TRUE)

# Tuliskan perintah untuk menampilkan matriks A
#[2]
A

# Tuliskan perintah R untuk menghitung nilai eigen dan vektor eigen
# dan simpanlah hasilnya dalam variable ev
#[3]
ev <- eigen(A)
# Tuliskan perintah untuk melihat struktur obyek eigen
#[4]
str(ev)
# Tuliskan perintah untuk melihat hasil output
#[5]
ev
# Tuliskan perintah untuk mengakses nilai eigen
#[6]
ev$values
# Tuliskan perintah untuk mengakses vektor eigen
#[7]
ev$vectors

# Tugas
# Ikuti langkah-langkah berikut dan diindikasikan dengan comment pada code editor.

# Ketik perintah ?matrix ini untuk membaca help tentang matriks 
# Buatlah matriks 3 x 3 dan simpan dengan nama matriks A.
# Tuliskan perintah untuk menampilkan matriks A
# Tuliskan perintah untuk menghitung nilai eigen dan vektor eigen dan simpanlah hasilnya dalam variable ev
# Tuliskan perintah untuk melihat struktur obyek eigen
# Tuliskan perintah untuk melihat hasil output
# Tuliskan perintah untuk mengakses nilai eigen
# Tuliskan perintah untuk mengakses vektor eigen