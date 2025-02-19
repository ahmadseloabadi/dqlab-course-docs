library(ggplot2)
plot.jakarta <- ggplot()
plot.jakarta <- plot.jakarta + labs(title="Luas Wilayah vs Kepadatan Penduduk DKI Jakarta")
plot.jakarta <- plot.jakarta + labs(x = "Luas Wilayah (km2)", y="Kepadatan Jiwa per km2")
summary(plot.jakarta)


# Teori
# Tidak setiap saat kita harus menganalisa plot dan komponennya dengan cara ditampilkan. Ketika sudah disimpan di variabel, kita bisa melihat detilnya dalam bentuk tekstual dengan menggunakan fungsi summary.

# Mari kita langsung praktekkan saja melalui tugas berikut.

 

# Tugas Praktek

# Perhatikan seluruh perintah yang ada pada code editor, ini merupakan kumpulan code yang telah kita pelajari pada bab ini.

# Pada baris terakhir terdapat penggunaan fungsi summary dengan input variable plot.jakarta. Ini untuk menampilkan detail apa saja yang terdapat di dalam sebuah plot.

# Jika berhasil dijalankan, maka hasilnya akan terlihat sebagai berikut. Untuk saat ini, tidak ada yang perlu dijelaskan kecuali mengenal fungsi ini sebagai alat untuk menganalisa objek-objek plot kita. Kita akan menggunakan function ini lebih detail di bab berikutnya.

# data: [x]
# faceting: facet_null()


# Kesimpulan
# Plot adalah komponen paling dasar di ggplot2, tanpa plot seluruh grafik tidak akan bisa ditampilkan. Dengan demikian, plot adalah "kanvas" grafik. Untuk membuat plot kita gunakan fungsi bernama ggplot()

# Kita dapat tambahkan komponen grafik lain di atas plot. Dan pada bab ini kita telah menambahkan:

# Teks judul dengan fungsi labs(title="...").
# Teks pada sumbu x dan y dengan fungsi labs(x="...", y="...").
# Selain itu juga ditunjukkan bagaimana sebaiknya objek plot disimpan ke variable. Dengan cara ini, kita bisa mengolahnya dengan lebih rapi. Terakhir, kita menampilkan informasi plot ini dengan menggunakan fungsi summary.