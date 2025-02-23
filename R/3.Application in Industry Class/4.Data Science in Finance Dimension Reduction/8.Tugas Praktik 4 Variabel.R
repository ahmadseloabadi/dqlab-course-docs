#Panggil library openxlsx untuk membaca file data Excel
library(openxlsx)


#Baca data pada sheet "csdata" dalam file "https://storage.googleapis.com/dqlab-dataset/dqlab_pcadata.xlsx"
#dan simpan data dengan nama "csdat_raw"
csdat_raw <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/dqlab_pcadata.xlsx", sheet = "csdata")

# Tampilkan struktur data
# [3]
str(csdat_raw)

# Tampilkan beberapa baris observasi dengan fungsi head()
# [4]
head(csdat_raw)

# Tampilkan statistika deskriptif untuk semua variabel dalam data.
# [5]
summary(csdat_raw)

# Gambarkan distribusi Income berdasarkan Dependents
library(ggplot2)
ggplot(csdat_raw, aes(as.factor(dependents), income)) +
  geom_boxplot() + xlab("Dependents") + ggtitle("Boxplot Income Berdasarkan Dependents")

# Pisahkan data untuk traning set dan testing set
# untuk tiap-tiap risk rating

# Catat indeks/ nomor baris untuk tiap-tiap risk rating
index1 <- which(csdat_raw$riskrating == 1)
index2 <- which(csdat_raw$riskrating == 2)

# Lakukan pencatatan indeks untuk risk rating berikutnya
# [6]
index3 <- which(csdat_raw$riskrating == 3)
index4 <- which(csdat_raw$riskrating == 4)
index5 <- which(csdat_raw$riskrating == 5)

# 80% data akan digunakan sebagai traning set.
# [7]
ntrain1 <- round(0.8 * length(index1))
ntrain2 <- round(0.8 * length(index2))
ntrain3 <- round(0.8 * length(index3))
ntrain4 <- round(0.8 * length(index4))
ntrain5 <- round(0.8 * length(index5))

# set seed agar sampling ini bisa direproduksi
set.seed(100)

# sampling data masing-masing rating untuk training set
# [8]
train1_index <- sample(index1, ntrain1)
train2_index <- sample(index2, ntrain2)
train3_index <- sample(index3, ntrain3)
train4_index <- sample(index4, ntrain4)
train5_index <- sample(index5, ntrain5)

# menyimpan data ke dalam testing set
# [9]
test1_index <- setdiff(index1, train1_index)
test2_index <- setdiff(index2, train2_index)
test3_index <- setdiff(index3, train3_index)
test4_index <- setdiff(index4, train4_index)
test5_index <- setdiff(index5, train5_index)

# Menggabungkan hasil sampling masing-masing risk rating ke dalam training set
csdattrain <- do.call("rbind", list(csdat_raw[train1_index,],
                                    csdat_raw[train2_index,], csdat_raw[train3_index,],
                                    csdat_raw[train4_index,], csdat_raw[train5_index,]))
cstrain <- subset(csdattrain, select =
                    -c(contractcode,riskrating))

# Menggabungkan hasil sampling masing-masing risk rating ke dalam testing set
csdattest <- do.call("rbind", list(csdat_raw[test1_index,],
                                   csdat_raw[test2_index,], csdat_raw[test3_index,],
                                   csdat_raw[test4_index,], csdat_raw[test5_index,])) # [10]
cstest <- subset(csdattest,
                 select = -c(contractcode,riskrating)) # [11]

# Menghitung korelasi antar variabel
cor(cstrain)

# Lakukan analisa PCA dengan fungsi prcomp() dan
# simpan output ke dalam obyek dengan nama pr.out
# [12]
pr.out <- prcomp(cstrain, scale = TRUE, center = TRUE)

# Tampilkan output PCA dengan memanggil obyek pr.out
# [13]
pr.out

# Tampilkan summary dari output PCA
# [14]
summary(pr.out)

# Gambarkan scree plot dengan menggunakan fungsi screeplot()
# [15]
screeplot(pr.out, type = "line", ylim = c(0,2))

# Tambahkan garis horizontal sebagai panduan untuk menggunakan kriteria Kaiser
abline(h = 1, lty = 3, col = "red")

# Gambarkan biplot dengan menggunakan fungsi biplot()
# [16]
biplot(pr.out, scale = 0) # draw first 2 principal components

# Teori
# Pada bagian ini kita akan melakukan Principal Component Analysis untuk 4 variabel prediktor numerik dalam data credit rating. Tahap-tahap yang akan dilakukan adalah:

# Membaca data
# Menampilkan statistika deskriptif
# Memisahkan data ke dalam training set dan testing set
# Memanggil fungsi untuk PCA
# Visualisasi output.

# Input Data
# Data akan dibaca dengan menggunakan package openxlsx.

# library(openxlsx)
# Untuk membaca data dan menyimpannya ke dalam obyek dataframe, gunakan fungsi R read.xlsx(). Data dari file dqlab_pcadata.xlsx, sheet cs4varb akan disimpan ke dalam data frame bernama dat_raw.

# #nama_dataframe <- read.xlsx("nama_Excelfile.xlsx", sheet = "nama_sheet")
# dat_raw <- read.xlsx(xlsxFile = "dqlab_pcadata.xlsx", sheet = "cs4varb")
# Untuk melihat struktur data frame dan tipe variabel, gunakan fungsi str(). Untuk menampilkan beberapa baris pertama dari data frame, gunakan fungsi head().

# str(dat_raw)
# ## 'data.frame':   900 obs. of 6 variables:
# ## $ contractcode: chr "AGR-000001" "AGR-000011" "AGR-000030" "AGR-000043" ...
# ## $ income     : num 295 271 159 210 165 220 70 88 163 100 ...
# ## $ dependents : num 5 5 0 3 0 5 3 3 5 6 ...
# ## $ asset      : num 893 906 552 791 593 ...
# ## $ debt       : num 4.6984 4.0639 0.05 0.7214 0.0667 ...
# ## $ riskrating : num 4 4 1 3 2 1 2 2 2 2 ...
# head(dat_raw)
# ##  contractcode income dependents   asset      debt riskrating
# ## 1  AGR-000001   295         5 892.9266 4.69837074         4
# ## 2  AGR-000011   271         5 905.8225 4.06385168         4
# ## 3  AGR-000030   159         0 551.7261 0.05000000         1
# ## 4  AGR-000043   210         3 791.1124 0.72138396         3
# ## 5  AGR-000049   165         0 592.6501 0.06666667         2
# ## 6  AGR-000063   220         5 778.0493 2.59791099         1

# Statistika Deskriptif
# Menampilkan statistika deskriptif 5 number summary dapat dilakukan dengan fungsi summary() dan fungsi apply().

# dat_raw <- subset(dat_raw, select = -contractcode)
# summary(dat_raw)
# ##     income       dependents       asset            debt       
# ## Min.  : 70.0  Min.  :0.000  Min.  : 232.2  Min.  : 0.0500 
# ## 1st Qu.:121.0  1st Qu.:1.000  1st Qu.: 440.0  1st Qu.: 0.6469 
# ## Median :162.0  Median :3.000  Median : 555.0  Median : 2.0253 
# ## Mean  :163.3  Mean  :2.932  Mean  : 571.0  Mean  : 3.8091 
# ## 3rd Qu.:199.0  3rd Qu.:5.000  3rd Qu.: 687.8  3rd Qu.: 5.1902 
# ## Max.  :300.0  Max.  :6.000  Max.  :1192.3  Max.  :23.5382 
# ##   riskrating  
# ## Min.  :1.000 
# ## 1st Qu.:1.000 
# ## Median :3.000 
# ## Mean  :2.681 
# ## 3rd Qu.:3.000 
# ## Max.  :5.000
# apply(dat_raw,2,FUN=sd)
# ##    income dependents     asset      debt riskrating 
# ## 51.863210  2.007457 174.247686  4.565370  1.294928
# Boxplot debt vs dependents bisa digambarkan dengan geom_boxplot dari package ggplot2. Grafik ini digunakan untuk membandingkan rata-rata hutang untuk

# library(ggplot2)
# ggplot(dat_raw, aes(as.factor(dependents), debt)) + geom_boxplot() + xlab("Dependents") + ggtitle("Boxplot Debt Berdasarkan Dependents")

# Split Data: Training Set dan Testing Set
# Data akan dipisahkan menjadi 2 bagian: training dan testing set. Agar training dan testing set mendapatkan data dengan semua risk rating, sampling akan dilakukan dengan metode stratified sampling. Sebesar 80% data dari tiap-tiap risk rating akan dialokasikan untuk training set, sisanya dialokasikan untuk testing set.
# Untuk mencari index baris yang memiliki risk rating 1, 2 dan seterusnya, gunakan fungsi which().

# index1 <- which(dat_raw$riskrating == 1)
# index2 <- which(dat_raw$riskrating == 2)
# index3 <- which(dat_raw$riskrating == 3)
# index4 <- which(dat_raw$riskrating == 4)
# index5 <- which(dat_raw$riskrating == 5)
# Banyaknya data untuk tiap-tiap risk rating yang dialokasikan untuk training set dihitung dengan perintah berikut ini.

# train_pct <- 0.8
# ntrain1 <- round(train_pct * length(index1))
# ntrain2 <- round(train_pct * length(index2))
# ntrain3 <- round(train_pct * length(index3))
# ntrain4 <- round(train_pct * length(index4))
# ntrain5 <- round(train_pct * length(index5))
# Tentukan seed agar sampling bisa direplikasi dengan set.seed(). Ambillah sampel data tiap-tiap risk rating untuk dialokasikan ke dalam training set.

# set.seed(200)
# train1_index <- sample(index1, ntrain1)
# train2_index <- sample(index2, ntrain2)
# train3_index <- sample(index3, ntrain3)
# train4_index <- sample(index4, ntrain4)
# train5_index <- sample(index5, ntrain5)
# Gunakan fungsi setdiff() untuk mengalokasikan data untuk testing set. Indeks baris yang dipilih adalah indeks baris yang tidak diambil dalam proses sampling untuk training set.

# test1_index <- setdiff(index1, train1_index)
# test2_index <- setdiff(index2, train2_index)
# test3_index <- setdiff(index1, train3_index)
# test4_index <- setdiff(index1, train4_index)
# test5_index <- setdiff(index1, train5_index)
# Menggabungkan hasil sampling masing-masing rating ke dalam training set.

# csdat_train <- do.call("rbind", list(dat_raw[train1_index,],
# dat_raw[train2_index,], dat_raw[train3_index,],
# dat_raw[train4_index,], dat_raw[train5_index,]))
# cs_train <- subset(csdat_train, select = -riskrating)
# Hal yang sama perlu dilakukan untuk testing set.

# csdat_test <- do.call("rbind", list(dat_raw[test1_index,],
# dat_raw[test2_index,], dat_raw[test3_index,],
# dat_raw[test4_index,], dat_raw[test5_index,]))
# cs_test <- subset(csdat_test, select = -riskrating)

# PCA
# Sebelum melakukan PCA, terlebih dahulu kita meneliti korelasi antar variabel dalam data.

# cor(cstrain)
# ##                income      tenor dependents midoverdue
# ## income     1.00000000 -0.04649806 0.25180228 0.1599918
# ## tenor     -0.04649806 1.00000000 0.00526126 0.2100942
# ## dependents 0.25180228 0.00526126 1.00000000 0.7615983
# ## midoverdue 0.15999175 0.21009415 0.76159830 1.0000000
# Melakukan analisa PCA dengan fungsi prcomp() dan menampilkan output PCA dengan memanggil obyek pr.out.

# pr.out <- prcomp(cs_train, scale = TRUE, center = TRUE)
# pr.out
# ## Standard deviations (1, .., p=4):
# ## [1] 1.4793018 1.1807344 0.5432055 0.3499434
# ## 
# ## Rotation (n x k) = (4 x 4):
# ##                  PC1       PC2        PC3        PC4
# ## income    -0.5629416 0.4185777 -0.01723657 -0.71245519
# ## dependents -0.4691085 -0.5133011 -0.71344421 0.08635160
# ## asset     -0.5430234 0.4575271 0.11201423 0.69515997
# ## debt      -0.4100727 -0.5932822 0.69148613 -0.04127494
# summary(pr.out)
# ## Importance of components:
# ##                          PC1   PC2    PC3    PC4
# ## Standard deviation    1.4793 1.1807 0.54321 0.34994
# ## Proportion of Variance 0.5471 0.3485 0.07377 0.03062
# ## Cumulative Proportion 0.5471 0.8956 0.96938 1.00000

# Visualisasi Ouput
# Screeplot digambarkan dengan fungsi screeplot(). Garis horizontal untuk panduan penerapan kriterion Kaiser digambarkan dengan abline.

# screeplot(pr.out, type = "line", ylim = c(0,2))
# abline(h = 1, lty = 3, col = "red")

# Fungsi biplot() digunakan untuk membuat biplot. Biplot menggambarkan variabel, data dalam sistem koordinat dengan sumbu yang dibentuk oleh 2 Principal Component yang pertama. Opsi scale = 0 membuat panjang vektor menunjukkan besarnya kontribusi variabel dalam Principal Component.

# biplot(pr.out, scale = 0)

# Grafik biplot dari default package stat seringkali sulit dibaca bila data berukuran besar. Fungsi lain yang dapat digunakan adalah autoplot dari ggfortify atau fviz_pca_biplot dari factoextra.

# library(ggfortify)
# autoplot(pr.out, data = csdat_train, loadings = TRUE, loadings.label = TRUE, scale = 0)

# library(factoextra)
# fviz_pca_biplot(pr.out, label = "var", habillage=csdat_train$riskrating)




# Soal
# Ikuti 16 langkah di bawah ini untuk melakukan Principal Component Analysis untuk 4 variabel prediktor numerik dalam data credit rating. Gantilah baris yang diawali dengan tanda #[1] dan seterusnya