library(openxlsx)

df <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/dqlab_pcadata.xlsx", sheet="3varb")
df <- scale(df, center = TRUE, scale = TRUE)

cormat <- cor(df)

eig <- eigen(cormat)
eig

# Teori
# Setiap nilai eigen memiliki pasangan vektor eigen. Pada output di atas vektor eigen untuk nilai eigen pertama adalah kolom pertama pada vektor eigen dan seterusnya. Pada contoh dataset dengan 3 variabel ini terdapat 3 nilai eigen dan 3 vektor eigen.

# “Variabel baru” principal component PC1, PC2, dan PC3 didapatkan dari vektor eigen dan merupakan kombinasi linier dari variabel lama x1, x2 dan x3. Koefisien-koefisien tersebut menunjukkan kontribusi variabel-variabel lama dalam masing-masing principal komponen.