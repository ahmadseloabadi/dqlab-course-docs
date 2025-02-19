## mengubah data menjadi karakter karena tidak dilakukan analisis statistik pada variabel ID Pelanggan dan nama
data_intro$ID.Pelanggan<-as.character(data_intro$ID.Pelanggan)
data_intro$Nama<-as.character(data_intro$Nama)
## melihat apakah sudah berhasil dalam mengubah variabel tersebut
str(data_intro$ID.Pelanggan)
str(data_intro$Nama)


# Teori
# Variabel ID.Pelanggan merupakan kode unik dari setiap variabel dan tidak bisa dicari nilai statistiknya. Sehingga tipe data ID.Pelanggan perlu diubah menjadi character agar tidak ikut di analisis.
# Function as.character mengubah id tiap pelanggan menjadi string/character - ditandai dengan tanda petik diantara kode unik tersebut.

# Tugas Praktek

# Gantilah bagian [...1...] pada code editor dengan perintah as.character yang menggunakan input variable data_intro dengan kolom ID.Pelanggan dan Nama. Kemudian pada bagian [...2...] keluarkan output untuk memastikan bahwa output tersebut berupa String.