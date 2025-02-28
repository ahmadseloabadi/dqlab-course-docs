library(dplyr)
library(lubridate)
library(ggplot2)

df_lama_bayar_per_minggu <- df_loan_invest %>% 
  filter(!is.na(pay)) %>%
  mutate(tanggal = floor_date(order, "week"),
         lama_bayar = as.numeric(difftime(pay, order, units = "hour"))) %>% 
  group_by(tanggal) %>%
  summarise(lama_bayar = median(lama_bayar)) 

ggplot(df_lama_bayar_per_minggu) +
  geom_line(aes(x = tanggal, y = lama_bayar)) +
  theme_bw() + 
  labs(title= "Waktu pembayaran trennya cenderung memburuk, 2x lebih lama dari sebelumnya", x = "Tanggal", y = "waktu di pesanan dibayar (jam)")

# Tugas
# Pada tahap ini, yang dihitung adalah lama waktu pembayaran sejak pesanan dibuat.
# Data ini akan dibuat dalam bentuk plot mingguan untuk melihat bagaimana tren nya.

# Pertama buat dulu data.frame baru,

# dengan menggunakan data.frame df_loan_invest, filter hanya yang pay (tidak kosong). Buat kolom tanggal yang merupakan pembualatan kebawah dari waktu upload ke order dalam satuan minggu, dengan menggunakan fungsi floor_date terhadap kolom order.

# lalu hitung lama_bayar sejak di-upload ke order dengan rumus,

# lama_bayar = as.numeric(difftime(pay, order, units = "hour"))
# lalu kelompokkan berdasarkan kolom tanggal yang baru saja dibuat untuk menghitung median dari kolom lama_bayar.

# Simpan hasilnya sebagai df_lama_bayar_per_minggu.

# Langsung dibuat plotnya menggunakan package ggplot2 yang berisi tren line dari lama pay per minggu, berikan label,
# title: "Waktu pembayaran trennya cenderung memburuk, 2x lebih lama dari sebelumnya"
# x : "Tanggal"
# y : "waktu di pesanan dibayar (jam)"

# Kesimpulan
# Trend pada tahun 2020 cenderung lebih jelek daripada tahun 2019, hal ini mungkin karena adanya pandemi investor menjadi lebih lama untuk memprtimbangkan invest dimana, dan apakah pesanan yang sudah dibuat mau dibayar atau tidak