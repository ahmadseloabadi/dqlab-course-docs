library(openxlsx)
df <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/dqlab_pcadata.xlsx", sheet="3varb")
df <- scale(df, center = TRUE, scale = TRUE)
pr.out <- prcomp(df, scale. = TRUE, center = TRUE)

head(df)
df_new <- df %*% pr.out$rotation
df_new[1:6,1:2]

# Teori

# Kita telah berhasil mereduksi dimensi variabel-variabel prediktor dari 3 variabel menjadi 2 variabel dengan menggunakan Principal Component Analysis. Skor variabel lama akan ditransformasi menjadi skor variabel baru dengan menggunakan rumus

# data_new = data_old * PC

# Bila observasi dengan 3 variabel memiliki nilai

# head(df)
# ##               x1        x2        x3
# ## [1,] -0.906102243 -0.7416508 -0.3747010
# ## [2,] 0.007307276 0.1550555 -0.4843659
# ## [3,] -1.125320527 -1.1526412 0.6893456
# ## [4,] 1.541835268 1.2012128 0.5159564
# ## [5,] 0.153452799 0.2671437 -1.0220701
# ## [6,] -1.125320527 -1.1526412 -1.0450404
# maka nilai observasi ini dalam “sistem koordinat” yang baru dengan 2 PC adalah

# df_new <- df %*% pr.out$rotation
# df_new[1:6,1:2]
# ##             PC1        PC2
# ## [1,] -1.22400335 0.02840327
# ## [2,] -0.05242254 -0.49816513
# ## [3,] -1.29178635 1.18374272
# ## [4,] 2.00215943 -0.14744625
# ## [5,] -0.05794123 -1.06493057
# ## [6,] -1.86572942 -0.45199295
# Fungsi prcomp() secara otomatis menghitung skor .

# ##             PC1        PC2        PC3
# ## [1,] -1.22400335 0.02840327 0.11170080
# ## [2,] -0.05242254 -0.49816513 0.08825722
# ## [3,] -1.29178635 1.18374272 0.01290291
# ## [4,] 2.00215943 -0.14744625 -0.23663535
# ## [5,] -0.05794123 -1.06493057 0.04589582
# ## [6,] -1.86572942 -0.45199295 -0.04235061