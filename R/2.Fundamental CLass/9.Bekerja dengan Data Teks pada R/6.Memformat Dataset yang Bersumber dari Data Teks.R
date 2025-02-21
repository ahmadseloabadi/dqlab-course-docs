#Melakukan import file
data <- read.table(
  file = "https://storage.googleapis.com/dqlab-dataset/datalahir_teks_dqlab.txt",
  header = FALSE, 
  sep = "\n", 
  na.strings=c("NA", "N/A", ""), 
  col.names = 'data_list',
  skip = 1)

#Menampilkan 5 data teratas
head(data,5)

#Memisahkan data menggunakan strsplit
data <- strsplit(data$data_list,split = "|||", fixed = TRUE)

#Merubah data menjadid dataframe
df <- data.frame(matrix(unlist(data), nrow=length(data), byrow=TRUE))

#Memberikan nama pada setiap kolom
colnames(df) <- c('Nama','Tempat_Lahir', 'Tanggal_Lahir', 'Provinsi')

#Tampilkan 5 baris pertama dari df
head(df,5)

#Tambahkan kolom baru yang berisi tempat lahir dan provinsi
df$kota_provinsi <- paste(df$Tempat_Lahir,",",df$Provinsi)

#Tampilkan 5 data teratas dari df
head(df,5)

#Menghapus karakter yang bukan termasuk alphabet pada kolom Nama
df$Nama <- gsub("[^A-Za-z ]","", df$Nama)

#Tampilkan isi dari df
df

# Teori
# “Sunyi, kira-kira begitulah beberapa function dasar yang banyak digunakan untuk pengolahan data teks. Bagaimana kalau kamu coba melakukan pengolahan data ini dari awal berdasarkan dengan apa yang sudah diajarkan sebelumnya? Sekalian untuk kamu berlatih dan supaya kamu cepat familiar dengan function-function dan langkah-langkahnya”, ujar Andra.

# "Siap banget dong, Ndra!" aku sangat bersemangat karena ini mungkin menjadi project pertama yang aku kerjakan sendiri semenjak bergabung di DQ Corp.

 

# "Perhatikan beberapa instruksi berikut ini ya, Nyi, dalam mengerjakan project-nya," kata Andra menunjukkan 3 poin catatan penting instruksinya. 

# Lakukan import data dan pemisahan setiap data sesuai dengan separatornya.
# Tambahkan kolom baru yang berisi gabungan dari Tempat Lahir dan Provinsi.
# Carilah data yang mengandung angka pada kolom Nama dan hapuslah angka yang terdapat pada data tersebut.

# Hasil Belajarku
# Wah senangnya! Aku telah berhasil menyelesaikan rangkaian pelajaran Bekerja dengan Data Teks pada R. Dari materi yang telah aku pelajari dan praktekkan, aku telah:

# Mengenal tipe data Character / String pada R
# Mampu mengenal karakteristik dataset datalahir_teks_dqlab.txt dan rencana pengolahannya
# Mampu menggunakan fungsi dasar pengolahan data character sebagai berikut:
# strsplit untuk memisahkan data awal yang semuanya ada dalam satu kolom dan dipisahkan dengan |||
# paste untuk menggabungkan data dati 2 (kota/kabupaten) dan propinsi sebagai satu kesatuan lokasi (Sebagai contoh: Malang dan Jawa Timur menjadi Malang, Jawa Timur)
# len, substr, dan sub untuk melakukan konversi format yang masih dalam bentuk format nama bulan menjadi format tanggal dengan angka semua  (Sebagai contoh: 1 Januari 2001 diubah menjadi 01-01-2001)
