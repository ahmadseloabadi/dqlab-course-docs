library(ggplot2)
#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv", sep=",")
#Melakukan agregasi
p <- aggregate(x=list(JUMLAH=penduduk.dki$JUMLAH), FUN=sum, by = list(NAMA.KABUPATEN.KOTA=penduduk.dki$NAMA.KABUPATEN.KOTA, JENIS.KELAMIN=penduduk.dki$JENIS.KELAMIN))

#Plot grafik
plot.dki <- ggplot(data=p, aes(x = NAMA.KABUPATEN.KOTA, y=JUMLAH, fill=JENIS.KELAMIN, label = JUMLAH))
plot.dki <- plot.dki + geom_bar(stat="identity", position="dodge")  
plot.dki <- plot.dki + labs(title="Jumlah Penduduk DKI Jakarta Umur > 35 - Tahun 2013", x="Kabupaten / Kota", y="Jumlah Penduduk")
plot.dki <- plot.dki + theme(axis.text.x = element_text(angle=45,vjust = 0.5), plot.title = element_text(hjust=0.5))
plot.dki <- plot.dki + geom_text(position = position_dodge(1.2))
plot.dki


# Teori
# Kalau kita perhatikan grafik bar chart yang telah kita hasilkan. Masih ada beberap hal yang perlu dirapikan. Selain penamaan label, contoh perapian yang perlu kita lakukan adalah memperbaiki posisi isi data pada sumbu x sehingga tidak menumpuk, sehingga tampilannya sebagai berikut.



# Ini dapat menggunakan tambahan komponen tema berikut yang belum dibahas di bab-bab sebelumnya untuk menghasilkan grafik tersebut:

# Komponen	                                        Keterangan
# aggregate(…)	                                    Menggunakan fungsi aggregate yang dibahas pada praktek sebelumnya
# theme(…)	                                        Function untuk mengatur teks pada grafik
# axis.text.x = element_text(angle=45,vjust = 0.5))	Melakukan rotasi text data (axis.text.x) sebesar 45 derajat ke kiri (angle=45), dan penempatan teks secara vertical di tengah-tengah (vjust=0.5).
# plot.title = element_text(hjust=0.5)	            Mengatur posisi teks pada title ke tengah
# geom_bar(stat="identity", position="dodge")	        Grafik bar chart dimana posisi data yang dispesifikasikan di fill, ditempatkan bersisian (position="dodge")
# label =                                             JUMLAH	Penempatan kolom JUMLAH sebagai label untuk marking data pada aestethic mapping
# geom_text(position = position_dodge(1.2))	        Mengatur posisi text untuk nilai data saat ini di atas bar plot