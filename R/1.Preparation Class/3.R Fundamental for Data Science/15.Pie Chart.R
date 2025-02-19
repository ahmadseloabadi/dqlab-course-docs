library(ggplot2)
library(openxlsx)
#Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/mahasiswa.xlsx",sheet = "Sheet 1")

#Menghitung Jumlah Data by Fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH, by=list(Kategori=mahasiswa$Fakultas), FUN=sum)
summarybyfakultas <- setNames(summarybyfakultas, c("fakultas","jumlah_mahasiswa"))

piechart<- ggplot(summarybyfakultas, aes(x="", y=jumlah_mahasiswa, fill=fakultas))+ geom_bar(width = 1, stat = "identity")
piechart <- piechart + coord_polar("y", start=0)
piechart <- piechart + ggtitle("Disribusi Mahasiswa per Fakultas")
piechart <- piechart + scale_fill_brewer(palette="Blues")+ theme_minimal()
piechart <- piechart + guides(fill=guide_legend(title="Fakultas"))
piechart <- piechart + ylab("Jumlah Mahasiswa") 
piechart


# Teori
# Pie chart merupakan chart favorit bagi banyak analis untuk menunjukkan proporsi data. Berdasarkan data frame mahasiswa, jumlah mahasiswa per fakultas adalah kasus proporsi yang dapat ditampilkan dengan pie chart.


# Code Editor telah diisi dengan kode untuk menghasilkan grafik pie chart. Pie chart dihasilkan dengan menggunakan fungsi ggplot dan coord_polar.

# Penjelasan
# Terlihat bahwa porsi fakultas "Seni dan Desain" dan "Ilmu Komunikasi" menempati porsi terbesar. Angka 0 s/d 5000 yang ditampilkan di luar pie chart menunjukkan rentang jumlah mahasiswa secara akumulatif.

