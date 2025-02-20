#Membaca dataset csv
penduduk.dki.csv <-read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
#Menggunakan names untuk variable penduduk.dki.csv
names(penduduk.dki.csv)


# Teori
# Pada bab sebelumnya, kita menggunakan function str untuk melihat ringkasan dari struktur nama, tipe data, dan isi dari data.frame hasil pembacaan file.

# Namun jika kita hanya ingin melihat nama-nama kolom saja, bisa menggunakan function bernama names, dengan konstruksi berikut.

# names(variable)

# Tugas Praktek

# Gantilah bagian […1…] dengan function names dengan input variable variable data.frame hasil pembacaan file csv.