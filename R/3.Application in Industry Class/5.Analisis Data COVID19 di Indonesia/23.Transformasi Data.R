library(dplyr)
library(tidyr)

dim(cov_jabar_akumulasi)

cov_jabar_akumulasi_pivot <- 
  cov_jabar_akumulasi %>% 
  gather(
    key = "kategori",
    value = "jumlah",
    -tanggal
  ) %>% 
  mutate(
    kategori = sub(pattern = "akumulasi_", replacement = "", kategori)
  )

dim(cov_jabar_akumulasi_pivot)

glimpse(cov_jabar_akumulasi_pivot)

# Teori
# Anda akan menggunakan fungsi gather() dari paket tidyr untuk mentransformasi data cov_jabar_akumulasi. Data tersebut akan dirubah dari yang semula berformat wide menjadi format long. AKtifkanlah paket tidyr terlebih dahulu dan lengkapilah baris kode berikut untuk melakukan pivot data. Simpan hasil transformasi data tersebut sebagai cov_jabar_akumulasi_pivot! Perhatikan hasil dari fungsi dim() sebelum dan setelah Anda melakukan transformasi data.