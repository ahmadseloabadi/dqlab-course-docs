library(openxlsx)
df <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/dqlab_pcadata.xlsx", sheet="3varb")
df <- scale(df, center = TRUE, scale = TRUE)
cormat <- cor(df)
eig <- eigen(cormat)

round(eig$values/ncol(df),3)
round(cumsum(eig$values/ncol(df)),3)

pr.out <- prcomp(df, scale. = TRUE, center = TRUE)
pr.out
summary(pr.out)

library(factoextra)

fviz_eig(pr.out, addlabels = TRUE)

screeplot(pr.out, type = "line")
abline(h = 1, lty = 3, col = "red")

# Teori
# Untuk contoh soal ini, kontribusi PC1, PC2 dan PC3 terhadap variabilitas data adalah

# round(eig$values/ncol(df),3)
# Kontribusi kumulatif PC1, PC2 dan PC3 adalah

# round(cumsum(eig$values/ncol(df)),3)
# Dengan menggunakan batasan 80%, maka hanya 2 principal component yang diperlukan untuk menjelaskan 99% variabilitas data, yaitu PC1 dan PC2.

# pr.out <- prcomp(df, scale. = TRUE, center = TRUE)
# summary(pr.out)
# Screeplot dapat digunakan sebagai alat bantu untuk memilih banyaknya PC. Banyaknya principal component yang akan dipilih adalah angka pada elbow Screeplot. Banyaknya PC(p) yang dipilih adalah pada saat terjadi penurunan varians yang tajam sebelum penurunan varians melandai. Pada contoh ini banyaknya PC yang dipilih adalah 2. Bila kita menggunakan kriterion Kaiser pada scree plot, maka banyaknya PC yang dipilih adalah 1.

# library(factoextra)
# fviz_eig(pr.out, addlabels = TRUE)


# screeplot(pr.out, type = "line")
# abline(h = 1, lty = 3, col = "red")