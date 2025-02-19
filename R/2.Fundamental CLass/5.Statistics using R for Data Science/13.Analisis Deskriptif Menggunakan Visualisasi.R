## Carilah sebaran data kolom Jenis.Kelamin dari variable data_intro
plot(data_intro$Jenis.Kelamin)

## Carilah sebaran data dari Pendapatan dari variable data_intro
hist(data_intro$Pendapatan)

## Carilah sebaran data dari Produk dari variable data_intro
plot(data_intro$Produk)

## Carilah sebaran data dari Harga dari variable data_intro
hist(data_intro$Harga)

## Carilah sebaran data dari Jumlah dari variable data_intro
hist(data_intro$Jumlah)

## Carilah sebaran data dari Total dari variable data_intro
hist(data_intro$Total)

## Carilah sebaran data dari Tingkat.Kepuasan dari variable data_intro
plot(data_intro$Tingkat.Kepuasan)


# Teori
# Setelah melakukan analisis deskriptif sebelumnya, agar lebih jelas bagaimana gambaran/sebaran dari data maka kita perlu membuat grafik dari masing-masing variabel. Grafik disini juga dapat sebagai analisis eskplorasi yang akan membantu dalam membangun hipotesis.

# Berikut penjelasan function diatas :

# plot digunakan untuk variabel bertipe Factor - function ini menghasilkan grafik Bar Plot.
# hist untuk variabel bertipe numerik seperti int - function ini menghasilkan grafik Histogram.

# Tugas Praktek

# Lengkapi bagian […1…], […2…], […3…], […4...], […5...], […6...], dan […7...] pada code editor untuk  untuk melakukan visualisasi data. Petunjuknya ada pada tiap comment dari code editor.

# Untuk membantu berikut adalah hasil dari perintah str dari variable data_intro sehingga Anda bisa memutuskan untuk menggunakan plot atau hist dari kolom terkait.

# 'data.frame':	20 obs. of  9 variables:
#  $ ID.Pelanggan    : int  1 2 3 4 5 6 7 8 9 10 ...
#  $ Nama            : Factor w/ 20 levels "Arif","Dian",..: 1 2 3 4 5 6 7 8 9 10 ...
#  $ Jenis.Kelamin   : Factor w/ 2 levels "1","2": 1 2 2 1 2 1 1 2 2 2 ...
#  $ Pendapatan      : int  600000 1200000 950000 400000 1200000 800000 950000 1100000 800000 1700000 ...
#  $ Produk          : Factor w/ 5 levels "A","B","C","D",..: 1 4 4 1 4 2 2 5 5 5 ...
#  $ Harga           : int  100000 250000 250000 100000 250000 150000 150000 300000 300000 300000 ...
#  $ Jumlah          : int  4 4 3 2 4 4 5 3 2 5 ...
#  $ Total           : int  400000 1000000 750000 200000 1000000 600000 750000 900000 600000 1500000 ...
#  $ Tingkat.Kepuasan: Factor w/ 3 levels "1","2","3": 2 2 3 3 2 3 1 3 1 1 ... 

# Kesimpulan Analisis Deskriptif Menggunakan Visualisasi
# Dari hasil analisis deskriptif pada praktek sebelumnya kita mendapatkan:

# Profil Pelanggan sebagai berikut:
# Sebagian besar pelanggan adalah berjenis kelamin perempuan.
# Rata-rata pendapatan pelanggan dalam sebulan adalah 875000 (tidak menggunakan ukuran pemusatan mean, karena pada grafik terdapat outlier. Sehinggan ukuran pemusatan yang dipakai adalah median).
# Pelanggan sering membeli produk dalam jumlah 3-4 buah.
# Rata-rata total belanja yang sering dihabiskan adalah 710000.
# Kebanyakan pelanggan sangat puas kepada produk yang dijual.
# Gambaran produk yang dijual sebagai berikut:
# Produk yang sering dibeli adalah produk D.
# Rata-rata harga produk yang terjual sebesar 197500.
# Dari hasil statistik deskriptif diatas kita dapat membangun hipotesis, agar analisis data yang kita lakukan kaya informasi yang didapatkan. Pembangunan hipotesis berdasarkan intuisi kita terhadap data yang sudah kita lakukan eksplorasi.

# Contoh hipotesis yang dapat kita bangun berdasarkan data diatas adalah sebagai berikut:

# Apakah ada hubungan pendapatan dengan total belanja?
# Apakah ada pengaruh suatu produk dengan kepuasan pelanggan?
# Apakah ada hubungan jenis kelamain dengan total belanja?
