library(dplyr)
library(lubridate)
library(ggplot2)

df_lama_order_per_minggu <- df_loan_invest %>% 
  filter(!is.na(order)) %>%
  mutate(tanggal = floor_date(marketplace, "week"),
         lama_order = as.numeric(difftime(order, marketplace, units = "hour"))) %>% 
  group_by(tanggal) %>%
  summarise(lama_order = median(lama_order)) 

ggplot(df_lama_order_per_minggu) +
  geom_line(aes(x = tanggal, y = lama_order)) +
  theme_bw() + 
  labs(title = "Rata-rata lama order pada tahun 2020 lebih lama daripada 2019", x = "Tanggal", y = "waktu di marketplace sampai di-pesan (jam)")

# Tugas
# Pada tahap ini, yang dihitung adalah lama waktu order sejak loan itu pertama di-upload.
# Data ini akan dibuat dalam bentu plot mingguan untuk melihat bagaimana tren nya.

# Pertama buat dulu data.frame baru,

# dengan menggunakan data.frame df_loan_invest, filter hanya yang order (tidak kosong). Buat kolom tanggal yang merupakan pembualatan kebawah dari waktu upload ke marketplace dalam satuan minggu, dengan menggunakan fungsi floor_date terhadap kolom marketplace.

# lalu hitung lama_order sejak di-upload ke marketplace (dalam jam) dengan rumus,

# lama_order = as.numeric(difftime(order, marketplace, units = "hour"))
# lalu kelompokkan berdasarkan kolom tanggal yang baru saja dibuat untuk menghitung median dari kolom lama_order.

# Simpan hasilnya sebagai df_lama_order_per_minggu.

# Langsung dibuat plotnya menggunakan package ggplot2 yang berisi tren line dari lama order per minggu, berikan label,
# title : "Rata-rata lama order pada tahun 2020 lebih lama daripada 2019"
# x : "Tanggal"
# y : "waktu di marketplace sampai di-pesan (jam)"