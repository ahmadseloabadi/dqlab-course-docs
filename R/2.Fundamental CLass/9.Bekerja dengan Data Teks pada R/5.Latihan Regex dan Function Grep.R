#Mencari Nama yang mengandung angka
name_with_num <- grep('\\d+',df$Nama)
name_with_num

#Menampilkan data Nama yang mengandung angka
df[name_with_num,]

#Menghapus karakter yang bukan termasuk alphabet
df$Nama <- gsub("[^A-Za-z ]", "", df$Nama)


# Teori
# Sekarang kembali ke data yang kita gunakan, coba kita cari apakah ada data nama yang mengandung angka di dalamnya. Untuk melakukan hal tersebut, kita dapat menggunakan function grep() yang berfungsi untuk mencari substring yang sesuai dengan pattern yang kita masukkan. Kamu dapat menggunakan potongan codes berikut”, Andra menjelaskan sambil terus mengetik.

# “Kujelaskan lagi ya, function grep() tersebut akan mengembalikan index dimana terdapat data yang sesuai dengan pattern yang sudah kita masukkan sebelumnya. Berdasarkan hasil dari potongan codes yang sudah dijalankan ini, kita memperoleh keluaran berupa angka 22 dan 39 yang berarti data pada nama index ke-22 dan ke-39 mengandung angka di dalamnya”, jelas Andra sambil menunjukkan keluaran dari codes sebelumnya.

# Selama Andra menjelaskan, aku memperhatikan dengan teliti dan kemudian meminta untuk mencoba mempraktekkan penggunaan function grep() tersebut.

# “Nah, Nyi, sekarang kamu sekalian coba untuk menghapus karakter selain huruf yang ada pada data Nama juga ya dengan menggunakan function gsub(), sekalian untuk melatih pemahamanmu akan function itu juga”, pinta Andra.

# Instruksi:

# Carilah data pada kolom Nama yang mengandung angka
# Hapus semua karakter selain alphabet yang terdapat pada kolom Nama dengan menggunakan function gsub()