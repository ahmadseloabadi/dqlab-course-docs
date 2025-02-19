library(ggplot2)

#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")

#Menambahkan data dan aesthetic mapping
plot.dki <- ggplot(data=penduduk.dki, aes(x=KEPADATAN..JIWA.KM2.,  fill=NAMA.KABUPATEN.KOTA))

#Menambahkan layer
plot.dki <- plot.dki + geom_histogram(binwidth=10000)
plot.dki <- plot.dki + labs(x="Kepadatan Jiwa (km2)", y="Jumlah Kelurahan", color="Kabupaten/Kota")
plot.dki + facet_wrap( ~ NAMA.KABUPATEN.KOTA, ncol=2)


# Kesimpulan
# Selamat, Anda telah menyelesaikan seluruh teori pengantar dan praktek mengenai visualisasi dengan ggplot2.

# Sepanjang course ini Anda telah mempelajari fundamental data visualisasi ggplot2 dengan pembelajaran kunci sebagai berikut:

# Konsep rancangan ggplot2 sebagai grammar of graphics yang memecah satu grafik menjadi komponen-komponen visual.
# Komponen plot sebagai kanvas dasar sebelum bisa meghasilkan berbagai macam grafik.
# Data dan aesthetic mapping sebagai isi untuk plot dan grafik.
# Layer sebagai komponen grafik itu sendiri, yang terdiri dari geom, stat dan position.
# Pengunaan layer dan transformasi data yang diperlukan untuk menghasilkan scatter plot, histogram, line chart, bar chart, dan pie chart.
# Faceting untuk memecah grafik sehingga lebih mudah dianalisa.