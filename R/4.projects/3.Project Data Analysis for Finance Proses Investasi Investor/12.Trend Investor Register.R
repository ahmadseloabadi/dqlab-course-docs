library(dplyr)
library(lubridate)
library(ggplot2)

df_investor_register <- df_event %>% 
  filter(nama_event == 'investor_register') %>%
  mutate(tanggal = floor_date(created_at, 'week')) %>% 
  group_by(tanggal) %>%
  summarise(investor = n_distinct(investor_id)) 

ggplot(df_investor_register) +
  geom_line(aes(x = tanggal, y = investor)) +
  theme_bw() + 
  labs(title = "Investor register sempat naik di awal 2020 namun sudah turun lagi",
       x = "Tanggal",
       y = "Investor Register")

# Tugas
# Di data.frame df_event ada 1 event yang belum diolah, yakni ‘investor_register’, disini akan dibuat bagaimana tren jumlah investor yang register.

# dari df_event, filter nama_event investor_register, lalu hitung jumlah investor setiap minggunya. Simpan hasilnya sebagai df_investor_register.

# Langsung dibuat plotnya menggunakan package ggplot2 yang berisi tren line dari persen_bayar berdasarkan tanggal, berikan label,
# title : "Investor register sempat naik di awal 2020 namun sudah turun lagi"
# x : "Tanggal"
# y : "Investor Register"