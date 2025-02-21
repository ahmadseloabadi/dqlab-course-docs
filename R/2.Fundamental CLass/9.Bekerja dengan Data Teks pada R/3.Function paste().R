#Tambahkan kolom baru yang berisi tempat lahir dan provinsi
df$kota_provinsi <- paste(df$Tempat_Lahir,",",df$Provinsi)

#Tampilkan 5 data teratas dari df
head(df,5)

# Teori
# “Tidak sulit sama sekali kan untuk memisahkan data-data tersebut ke kolomnya masing-masing," kata Andra setelah melihatku mampu menyelesaikan perintahnya dalam waktu singkat. 

# "Sekarang, aku ingin menunjukkan function lain yang mungkin berguna dalam pengolahan data teks. Function yang ingin aku kenalkan adalah function paste(). Function tersebut digunakan untuk menggabungkan beberapa data teks menjadi satu. Seperti contohnya pada data yang kita miliki, kita dapat menggabungkan data pada kolom tempat_lahir dan provinsi menjadi satu (Malang dan Jawa Timur menjadi Malang, Jawa Timur). Penggunaan function paste() ini sangat mudah, lho! Syntaxnya juga sangat sederhana”, Andra memberikan penjelasan dengan antusias.

# paste(data_1, pemisah, data_2, pemisah, data_3, ..., data_n)