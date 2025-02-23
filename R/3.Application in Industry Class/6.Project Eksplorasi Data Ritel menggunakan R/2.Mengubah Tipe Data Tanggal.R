#Ubah tipe data variabel Tanggal menjadi date
data$Tanggal <- as.Date(data$Tanggal, "%d-%m-%Y")

#Cek apakah tipe data dari variabel Tanggal sudah menjadi date
str(data$Tanggal)

#Tambahkan kolom baru untuk menyimpan data bulan dan tahun
data$Bulan_Tahun <- format(data$Tanggal, "%m-%Y")

#Tampilkan 5 data teratas
head(data, 5)

# Teori
# Aku melihat bahwa tipe data dari variabel Tanggal adalah character dan langsung menyadari bahwa untuk keperluan analisis selanjutnya akan lebih mudah apabila variable Tanggal tersebut memiliki tipe data date. Oleh karena itu, tugas selanjutnya yang akan Aksara lakukan adalah mengubah tipe data dari variabel Tanggal menjadi date dan menambahkan satu variabel bernama Bulan_Tahun untuk menyimpan data bulan dan tahun.

