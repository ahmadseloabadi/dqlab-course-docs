#Membaca dataset dengan read.csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",", check.names = FALSE)
str(penduduk.dki)


# Teori
# Jika kita perhatikan pada eksekusi read.csv dan hasilnya, terlihat ada kolom dengan prefix X – yaitu X, X.1, X.2, dan seterusnya. Ini terjadi karena read.csv mendeteksi ada nama kolom yang kosong dan lebih dari. Kondisi ini akan secara otomatis "diperbaiki" oleh function read.csv dengan menambahkan prefix X di depan kolom.

# Jika kita tidak menginginkan hal tersebut, kita bisa tambahkan argumen check.names = FALSE pada statement read.csv