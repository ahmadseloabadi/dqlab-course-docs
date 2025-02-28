library(dplyr)
library(lubridate)
library(ggplot2)

df_bayar_per_minggu <- df_loan_invest %>% 
  filter(!is.na(order)) %>%
  mutate(tanggal = floor_date(marketplace, 'week')) %>% 
  group_by(tanggal) %>%
  summarise(persen_bayar = mean(!is.na(pay))) 

ggplot(df_bayar_per_minggu) +
  geom_line(aes(x = tanggal, y = persen_bayar)) +
  scale_y_continuous(labels = scales::percent) +
  theme_bw() + 
  labs(title = "Sekitar 95% membayar pesanannya. Di akhir mei ada outlier karena lebaran",
       x = "Tanggal",
       y = "Pesanan yang dibayar")

# Tugas
# Pada tahap ini, yang ingin dilihat adalah berapa persen pesanan yang dibayar oleh investor.
# Data ini akan dibuat dalam bentuk plot mingguan untuk melihat bagaimana tren nya.

# Pertama buat dulu data.frame baru,
# dengan menggunakan data.frame df_loan_invest, filter hanya yang order (tidak kosong) Buat kolom tanggal yang merupakan pembualatan kebawah dari waktu upload ke marketplace dalam satuan minggu, dengan menggunakan fungsi floor_date terhadap kolom marketplace.
# Lalu kelompokkan berdasarkan kolom tanggal yang baru saja dibuat, hitung persen_bayar dengan cara menghitung berapa pesanan yang dibayar dari total yang dibayar. di R, karena FALSE berlnilai 0 dan TRUE itu satu, maka persentase tersebut bisa dihitung dengan cara menghitung rata-rata kondisi benar

# persen_bayar = mean(!is.na(pay))
# Jika pay ada isinya (dibayar) maka nilainya 1, kalau kosong nilainya 0. Rata-rata dari nilai ini sama dengan jumlah kondisi benar dibagi total kejadian.

# Simpan hasilnya sebagai df_bayar_per_minggu.

# Langsung dibuat plotnya menggunakan package ggplot2 yang berisi tren line dari persen_bayar berdasarkan tanggal, berikan label,
# title : "Sekitar 95% membayar pesanannya. Di akhir mei ada outlier karena lebaran"
# x : "Tanggal"
# y : "Pesanan yang dibayar"