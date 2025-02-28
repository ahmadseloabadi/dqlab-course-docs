library(corrplot)
library(ggcorrplot)

M = data_reduce[,8:11]

# Library corrplot
# -- Pearson correlation
par(mfrow=c(2,2))
corrplot(cor(M), type="upper", order="hclust")
corrplot(cor(M), method="square", type="upper")
corrplot(cor(M), method="number", type="lower")
corrplot(cor(M), method="ellipse")

# -- Kendall correlation
par(mfrow=c(2,2))
corrplot(cor(M, method="kendall"), type="upper", order="hclust")
corrplot(cor(M, method="kendall"), method="square", type="upper")
corrplot(cor(M, method="kendall"), method="number", type="lower")
corrplot(cor(M, method="kendall"), method="ellipse")

# Library ggcorrplot
corr = round(cor(M), 1) # Pearson correlation
ggcorrplot(round(cor(M), 1),
           hc.order = TRUE,
           type = "lower",
           lab = TRUE,
           lab_size = 3,
           method="circle",
           colors = c("tomato2", "white", "springgreen3"),
           title="Correlogram of Data Nasabah",
           ggtheme=theme_bw)


# Teori
# Selain melihat hubungan pada data yang bersifat kategorikal, kita juga bisa melihat hubungan antar variabel numerikal. Ya. Kita akan menggunakan korelasi.

# Pada masing-masing sintak di atas tervisualisasikan beberapa variabel dalam kaitan hubungan antar satu variabel dengan variabel lainnya.

# Apa yang dapat kamu simpulkan? Dapatkah kamu menyebutkan metode apa yang digunakan untuk melihat korelasi antar variabel pada sintak di atas?

# Graphic 1 & 2
# Plot di atas merupakan visualisasi berdasarkan hasil uji korelasi pearson menggunakan package corrplot. Pada keempat plot tersebut, warna biru melambangkan hubungan positif antara kedua variabel, sedangkan warna mereha melambangkan hubungan negatif. Semakin gelap warna dan semakin besarnya ukuran bidang, menggambarkan semakin kuatnya hubungan antar variabel. Namun, berbeda dengan metode visualisasi menggunakan ellipse, semakin tipis ellipse menggambarkan semakin kuatnya hubungan antar variabel.

# Dari keempat visualisasi matriks korelasi tersebut, tampak bahwa terdapat hubungan positif yang kuat antara variabel “PYD” dan “OSL”. Hal ini berarti semakin besar pinjaman yang diterima, maka outstanding pinjaman juga semakin besar. Kuatnya hubungan antara kedua variabel tersebut juga ditunjukkan oleh angka koefisien korelasi kedua variabel tersebut pada gambar 3, yaitu sebesar 0.95.

# Graphic 3
# Pada plot tersebut, warna hijau melambangkan korelasi positif antar variabel, sedangkan warna merah untuk sebaliknya. Sama seperti interpretasi sebelumnya, tampak bahwa variabel “PYD” dan “OSL” memiliki korelasi positif yang kuat, dilihat dari nilai koefisien korelasi sebesar 0.9.

