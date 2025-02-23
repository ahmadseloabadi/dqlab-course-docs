library(openxlsx)
df <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/dqlab_pcadata.xlsx", sheet="3varb")

#standarisasi variabel (centering dan scaling)
df <- scale(df, center = TRUE, scale = TRUE)
head(df, 3)

# Teori
# Output statistika deskriptif menunjukkan skala variabel x3 yang berbeda dari kedua variabel lainnya. Agar PCA dapat bekerja optimal, data ini akan distandarisasi dengan menggunakan fungsi scale() pada R.