library(openxlsx)
df <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/dqlab_pcadata.xlsx", sheet="3varb")
df <- scale(df, center = TRUE, scale = TRUE)

pr.out <- prcomp(df, scale. = TRUE, center = TRUE)

pr.out$rotation
biplot(pr.out, scale = 0)

# Teori
# Hasil output rotation menunjukkan bobot kontribusi masing-masing variabel terhadap masing-masing Principal Component.

# pr.out$rotation

# ##          PC1        PC2         PC3
# ## x1 0.6704698 -0.2112281 -0.71123334
# ## x2 0.6640498 -0.2567210  0.70223374
# ## x3 0.3309200  0.9431209  0.03185768
# biplot(pr.out, scale = 0)

# penjelasan
# Pada biplot di atas variabel x1 dan x2 memiliki kontribusi yang besar terhadap PC1 (arah mendatar) dan variabel x3 memiliki kontribusi yang besar terhadap PC2 (arah vertikal).

