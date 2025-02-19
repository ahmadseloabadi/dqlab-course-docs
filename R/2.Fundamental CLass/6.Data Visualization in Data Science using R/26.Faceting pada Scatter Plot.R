library(ggplot2)

#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")

#Menambahkan data dan aesthetic mapping
plot.dki <- ggplot(data=penduduk.dki, aes(x = LUAS.WILAYAH..KM2.,  y=KEPADATAN..JIWA.KM2.,  color=NAMA.KABUPATEN.KOTA))

#Menambahkan layer
plot.dki <- plot.dki + layer(geom = "point", stat="identity", position = "identity")
plot.dki <- plot.dki + labs(x="Luas Wilayah (km2)", y="Kepadatan Jiwa (km2)", color="Kabupaten/Kota")
plot.dki + facet_wrap( ~ NAMA.KABUPATEN.KOTA, ncol=2)


# Teori
# Ada dua function untuk facet, yaitu facet_wrap dan facet_grid. Kedua function tersebut fungsinya sama, yaitu membagi subset menjadi layout kotak matrix seperti pada contoh di teks pengenalan.

# Function facet_grid memerlukan dua variabel, misalkan provinsi dan kabupaten untuk membagi dataset. Sedangkan function facet_wrap hanya memerlukan satu variabel, dataset dibagi berdasarkan jumlah kolom yang diinginkan.

# Kita akan ambil scatter plot pada bab awal untuk dataset kependudukan dan kita bagi menjadi berdasarkan variabel NAMA.KABUPATEN.KOTA dan 2 kolom dengan facet_wrap.

# Konstruksi lengkap untuk contoh tersebut adalah sebagai berikut:

# facet_wrap( ~ NAMA.KABUPATEN.KOTA, ncol=2)
# Berikut adalah penjelasan lengkap elemen-elemen perintah di atas.

# Komponen	            Deskripsi
# facet_wrap              Fungsi faceting pada ggplot2

# ~ NAMA.KABUPATEN.KOTA	Facet wrap hanya menggunakan satu variabel saja. Dan variabel yang digunakan diletakkan di sebelah kanan tanda ~.

# ncol=2	                Jumlah kolom pembagian adalah 2

# penjelasan
# Jika berjalan lancar maka grafik yang dihasilkan terlihat sebagai berikut. Terlihat kepadatan untuk Jakarta Pusat sangat tidak berimbang dibandingkan kabupaten lainnya di DKI Jakarta.

