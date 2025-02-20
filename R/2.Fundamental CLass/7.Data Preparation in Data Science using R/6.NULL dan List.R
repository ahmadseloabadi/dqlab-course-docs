#Membuat list dengan 3 elemen termasuk NA dan NULL 
isi.list <- list(1, NULL, 3, NA, 5)

#Menghitung jumlah elemen dari isi.list
length(isi.list)

# Teori
# Berbeda dengan vector, list akan menyimpan NULL apa adanya. Sebagai contoh, perintah berikut membuat list dengan 5 elemen dimana terdapat NULL dan NA di dalam list ini.

# isi.list <- list(1, NULL, 3, NA, 5)
# Jika kita tampilkan isinya, maka akan terlihat sebagai berikut.

# > isi.list
# [[1]]
# [1] 1

# [[2]]
# NULL

# [[3]]
# [1] 3

# [[4]]
# [1] NA

# [[5]]
# [1] 5
# Terlihat dari tampilan, NULL diisi pada list di indeks kedua. Dan dengan demikian, jika dihitung jumlah elemennya akan mendapatkan hasil 5.

# > length(isi.list)
# [1] 5
# Kita akan coba ini pada tugas praktek berikut.

# Tugas Praktek

# Buat variable bernama isi.list dengan isi list(1, NULL, 3, NA, 5) untuk menggantikan bagian […1…] dari code editor.

# Gantikan bagian […2...] pada code editor dengan perintah menghitung jumlah elemen dengan function length dari isi.list.

