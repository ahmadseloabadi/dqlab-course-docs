library(ggplot2)

#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")

#Menambahkan data dan aesthetic mapping
plot.dki <- ggplot(data=penduduk.dki, aes(x = LUAS.WILAYAH..KM2.,  y=KEPADATAN..JIWA.KM2.,  color=NAMA.KABUPATEN.KOTA))

#Menambahkan Layer dan labels
plot.dki + geom_point() + 
  theme(plot.title = element_text(hjust=0.5)) +
  labs(title = "Luas Wilayah vs Kepadatan Penduduk DKI Jakarta",
       x = "Luas wilayah (km2)",
       y = "Kepadatan Jiwa per km2",
       color = "Nama Kabupaten/Kota")


# Teori
# Scatter plot yang dihasilkan sudah menarik untuk kita, namun label teks pada x, y dan color masih terasa kurang bagus. Bukankah begitu? Mari kita perhatikan.

# Kita bisa merubah label ini sesuai dengan keinginan kita menggunakan function labs yang sudah kita pelajari sebelumnya.

# Tugas
# Gantilah bagian […] pada code editor dengan function labs dengan parameter-parameter berikut.

# title = "Luas Wilayah vs Kepadatan Penduduk DKI Jakarta".
# x = "Luas wilayah (km2)"
# y = "Kepadatan Jiwa per km2"
# color = "Nama Kabupaten/Kota"
# Jika berjalan lancar harusnya didapatkan hasil sebagai berikut.

# Catatan: Pada code terdapat perintah baru, yaitu theme(plot.title = element_text(hjust=0.5)). Ini adalah code untuk menempatkan judul di tengah plot.

# Kesimpulan
# Layer diperlukan agar grafik sebenarnya dapat digambar di atas objek plot. Layer dibuat dengan function layer. Parameter function layer yang harus diisi terdiri dari geom, stat dan position.

# Dengan pengisian nilai yang berbeda-beda terhadap tiga parameter ini, kita bisa menghasilkan berbagai macam grafik. Pada bab ini, grafik yang kita hasilkan adalah "scatter plot" dimana parameter geom bernilai "point", stat dan position bernilai "identity".

# Selain menggunakan function layer, tiap objek juga memiliki function yang memiliki prefix geom_, stat_, dan position_. Misalkan, untuk geom bertipe point memiliki function geom_point. Ini dibuat dengan tujuan agar beberapa nilai default untuk tiap-tiap objek sudah dispesifikasikan di function-function ber-prefix.

# Dan bab ditutup dengan praktek dimana kita bisa menyelesaikan satu grafik lengkap dengan judul, dan label-label yang lebih mudah dibaca.