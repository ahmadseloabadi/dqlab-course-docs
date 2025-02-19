library("ggplot2")
library("openxlsx")

#Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/mahasiswa.xlsx",sheet = "Sheet 1")

#Menghitung Jumlah Data by Fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH, by=list(Kategori=mahasiswa$Fakultas, Tahun=mahasiswa$ANGKATAN), FUN=sum)
summarybyfakultas <- setNames(summarybyfakultas, c("fakultas","tahun", "jumlah_mahasiswa"))
summarybyfakultas

summarybyfakultas$tahun = as.factor(summarybyfakultas$tahun)
summarybyfakultas[summarybyfakultas$fakultas %in% c("ICT", "Ilmu Komunikasi"),]

ggplot(summarybyfakultas[summarybyfakultas$fakultas %in% c("ICT", "Ilmu Komunikasi"),], aes(x=fakultas, y=jumlah_mahasiswa)) + 
  geom_bar(stat = "identity", aes(fill = tahun), width=0.8, position = position_dodge(width=0.8)) + 
  theme_classic() 


# Teori
# Pengerjaan filtering di data frame dapat dilakukan dengan menambahkan operator %in% dengan input berupa vector.

# Penjelasan
# Grafiknya sama dengan subbab "Tren Jumlah Mahasiswa dari Tahun ke Tahun" tapi sudah dengan filter dua fakultas, yaitu "ICT" dan "Ilmu Komunikasi".

# Hal ini dapat terjadi karena ada filtering yang dinyatakan oleh perintah berikut.

# summarybyfakultas[summarybyfakultas$fakultas %in%c("ICT", "Ilmu Komunikasi"),]
# di sini summarybyfakultas$fakultas %in%c("ICT", "Ilmu Komunikasi") artinya melakukan filter data yang ada di kolom fakultas dari data frame summarybyfakultas.

# Sedangkan perintah lengkap summarybyfakultas[summarybyfakultas$fakultas %in%c("ICT", "Ilmu Komunikasi"),] artinya mengambil data yang sudah terfilter untuk seluruh kolom.

# Dengan demikian, sampai sejauh ini kamu telah diberikan gambaran mengenai kemampuan R untuk menghasilkan grafik dengan pengolahan data dari Excel. Tentunya, pengetahuan dan praktik ini dapat berpotensi tinggi untuk membantu kegiatan kamu sehari-hari.

# Melalui bab pengenalan ini kita belum membahas secara mendalam bagaimana grafik ini dapat dihasilkan dengan variasi yang lebih banyak, begitu juga dengan pengolahan data seperti filter. Akan tetapi, kamu dapat belajar di modul "Data Preparation with R" dan "Data Visualization with R" 